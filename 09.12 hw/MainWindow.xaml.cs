using System;
using System.Windows;
using System.Windows.Controls;

namespace _09._12_hw
{
    public partial class main_window : Window
    {
        private double? previous_value = null;
        private string current_operator = "";
        private bool new_entry = true;

        public main_window()
        {
            InitializeComponent();
        }

        private void button_number_click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                string number = button.Content.ToString();
                if (new_entry)
                {
                    current_number_textbox.Text = number == "0" ? "0" : number;
                    new_entry = false;
                }
                else
                {
                    if (current_number_textbox.Text == "0" && number == "0")
                        return;
                    if (current_number_textbox.Text == "0" && number != ".")
                        current_number_textbox.Text = number;
                    else
                        current_number_textbox.Text += number;
                }
            }
        }

        private void button_dot_click(object sender, RoutedEventArgs e)
        {
            if (new_entry)
            {
                current_number_textbox.Text = "0.";
                new_entry = false;
            }
            else if (!current_number_textbox.Text.Contains("."))
            {
                current_number_textbox.Text += ".";
            }
        }

        private void button_operator_click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button)
            {
                string op = button.Content.ToString();
                double current_number;

                if (double.TryParse(current_number_textbox.Text, out current_number))
                {
                    try
                    {
                        if (previous_value.HasValue && !string.IsNullOrEmpty(current_operator))
                        {
                            previous_value = calculate(previous_value.Value, current_number, current_operator);
                            previous_operations_textbox.Text = $"{previous_value} {op}";
                        }
                        else
                        {
                            previous_value = current_number;
                            previous_operations_textbox.Text = $"{previous_value} {op}";
                        }
                        current_operator = op;
                        new_entry = true;
                    }
                    catch (DivideByZeroException ex)
                    {
                        MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        reset_calculator();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        reset_calculator();
                    }
                }
            }
        }

        private void button_equals_click(object sender, RoutedEventArgs e)
        {
            double current_number;

            if (double.TryParse(current_number_textbox.Text, out current_number) && previous_value.HasValue && !string.IsNullOrEmpty(current_operator))
            {
                try
                {
                    double result = calculate(previous_value.Value, current_number, current_operator);
                    current_number_textbox.Text = result.ToString();
                    previous_operations_textbox.Text = "";
                    previous_value = null;
                    current_operator = "";
                    new_entry = true;
                }
                catch (DivideByZeroException ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    reset_calculator();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    reset_calculator();
                }
            }
        }

        private double calculate(double a, double b, string op)
        {
            switch (op)
            {
                case "/":
                    if (b == 0)
                        throw new DivideByZeroException("You cannot divide by 0");
                    return a / b;
                case "*":
                    return a * b;
                case "+":
                    return a + b;
                case "-":
                    return a - b;
                default:
                    return b;
            }
        }

        private void button_ce_click(object sender, RoutedEventArgs e)
        {
            current_number_textbox.Text = "0";
            new_entry = true;
        }

        private void button_c_click(object sender, RoutedEventArgs e)
        {
            reset_calculator();
        }

        private void button_backspace_click(object sender, RoutedEventArgs e)
        {
            if (!new_entry && current_number_textbox.Text.Length > 0)
            {
                current_number_textbox.Text = current_number_textbox.Text.Substring(0, current_number_textbox.Text.Length - 1);
                if (current_number_textbox.Text.Length == 0)
                {
                    current_number_textbox.Text = "0";
                    new_entry = true;
                }
            }
        }

        private void reset_calculator()
        {
            current_number_textbox.Text = "0";
            previous_operations_textbox.Text = "";
            previous_value = null;
            current_operator = "";
            new_entry = true;
        }
    }
}

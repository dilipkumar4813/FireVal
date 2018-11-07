# FireVal
Validations Framework for iOS apps, just include the framework in your application and avoid writing validations for your projects to fasten your development speed.

___

You want to add pod `'FireVal', '~> 1.0'` similar to the following to your Podfile:

```
target 'MyApp' do
  pod 'FireVal', '~> 1.0'
end
```

Then run a pod install inside your terminal, or from CocoaPods.app.

___

Alternatively to give it a test run, run the command:

`pod try FireVal`

Validation Functions Available
<ol>
<li>isValidUsername</li>
<li>isValidPassword</li>
<li>isValidEmail</li>
<li>isValidPhone</li>
<li>isValidPincode</li>
<li>isPasswordSame</li>
</ol>
#!/bin/bash
set -ex

# echo "This is the value specified for the input 'example_step_input': ${example_step_input}"
echo "build path "${build_path}""
echo "token ${upload_token}"
#status=$(curl --location --request POST 'https://api-sofy-test.azurewebsites.net/api/AppTests/buildUpload' --header 'SubscriptionKey: $upload_token' --form 'applicationFile="${build_path}"')
#echo $status

#
# --- Export Environment Variables for other Steps:
# You can export Environment Variables for other Steps with
#  envman, which is automatically installed by `bitrise setup`.
# A very simple example:
# envman add --key EXAMPLE_STEP_OUTPUT --value 'the value you want to share'
# Envman can handle piped inputs, which is useful if the text you want to
# share is complex and you don't want to deal with proper bash escaping:
#  cat file_with_complex_input | envman add --KEY EXAMPLE_STEP_OUTPUT
# You can find more usage examples on envman's GitHub page
#  at: https://github.com/bitrise-io/envman
#
# --- Exit codes:
# The exit code of your Step is very important. If you return
#  with a 0 exit code `bitrise` will register your Step as "successful".
# Any non zero exit code will be registered as "failed" by `bitrise`.
#curl --location --request POST 'https://api-sofy-test.azurewebsites.net/api/AppTests/buildUpload' \
#--header 'SubscriptionKey: acc80bd1-5cb7-4c89-a01e-2e7169009e52' \
#--form 'applicationFile=@"/Users/sofy/Downloads/final/bitrise-step-testing-uploading/_tmp/fb.apk"'

curl --location --request POST 'https://api-sofy-test.azurewebsites.net/api/AppTests/buildUpload' \
--header "SubscriptionKey: ${upload_token}" \
--form "applicationFile=@"${build_path}""

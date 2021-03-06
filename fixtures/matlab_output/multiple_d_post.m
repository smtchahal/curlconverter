%% Web Access using Data Import and Export API
uri = 'https://cmdb.litop.local/webservices/rest.php';
body = 'version=1.2&auth_user=fdgxf&auth_pwd=oxfdscds&json_data={ "operation": "core/get", "class": "Software", "key": "key" }';
response = webwrite(uri, body);

%% HTTP Interface
import matlab.net.*
import matlab.net.http.*
import matlab.net.http.io.*

uri = URI('https://cmdb.litop.local/webservices/rest.php');
body = FormProvider(...
    'version', '1.2',...
    'auth_user', 'fdgxf',...
    'auth_pwd', 'oxfdscds',...
    'json_data', JSONProvider(struct(...
        'operation', 'core/get',...
        'class', 'Software',...
        'key', 'key'...
    ))...
);
response = RequestMessage('post', [], body).send(uri.EncodedURI);

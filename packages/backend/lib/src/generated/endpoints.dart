/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../auth/email_idp_endpoint.dart' as _i2;
import '../auth/jwt_refresh_endpoint.dart' as _i3;
import '../endpoints/admin_login_endpoint.dart' as _i4;
import '../endpoints/contact_endpoint.dart' as _i5;
import '../endpoints/content_endpoint.dart' as _i6;
import '../endpoints/setup_endpoint.dart' as _i7;
import '../greetings/greeting_endpoint.dart' as _i8;
import 'package:backend_server/src/generated/contact_message.dart' as _i9;
import 'package:backend_server/src/generated/about.dart' as _i10;
import 'package:backend_server/src/generated/work_experience.dart' as _i11;
import 'package:backend_server/src/generated/tech_stack.dart' as _i12;
import 'package:backend_server/src/generated/social_link.dart' as _i13;
import 'package:backend_server/src/generated/project.dart' as _i14;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i15;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i16;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i17;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'emailIdp': _i2.EmailIdpEndpoint()
        ..initialize(
          server,
          'emailIdp',
          null,
        ),
      'jwtRefresh': _i3.JwtRefreshEndpoint()
        ..initialize(
          server,
          'jwtRefresh',
          null,
        ),
      'adminLogin': _i4.AdminLoginEndpoint()
        ..initialize(
          server,
          'adminLogin',
          null,
        ),
      'contact': _i5.ContactEndpoint()
        ..initialize(
          server,
          'contact',
          null,
        ),
      'content': _i6.ContentEndpoint()
        ..initialize(
          server,
          'content',
          null,
        ),
      'setup': _i7.SetupEndpoint()
        ..initialize(
          server,
          'setup',
          null,
        ),
      'greeting': _i8.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['emailIdp'] = _i1.EndpointConnector(
      name: 'emailIdp',
      endpoint: endpoints['emailIdp']!,
      methodConnectors: {
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint).login(
                session,
                email: params['email'],
                password: params['password'],
              ),
        ),
        'startRegistration': _i1.MethodConnector(
          name: 'startRegistration',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startRegistration(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyRegistrationCode': _i1.MethodConnector(
          name: 'verifyRegistrationCode',
          params: {
            'accountRequestId': _i1.ParameterDescription(
              name: 'accountRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyRegistrationCode(
                    session,
                    accountRequestId: params['accountRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishRegistration': _i1.MethodConnector(
          name: 'finishRegistration',
          params: {
            'registrationToken': _i1.ParameterDescription(
              name: 'registrationToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishRegistration(
                    session,
                    registrationToken: params['registrationToken'],
                    password: params['password'],
                  ),
        ),
        'startPasswordReset': _i1.MethodConnector(
          name: 'startPasswordReset',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startPasswordReset(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyPasswordResetCode': _i1.MethodConnector(
          name: 'verifyPasswordResetCode',
          params: {
            'passwordResetRequestId': _i1.ParameterDescription(
              name: 'passwordResetRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyPasswordResetCode(
                    session,
                    passwordResetRequestId: params['passwordResetRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishPasswordReset': _i1.MethodConnector(
          name: 'finishPasswordReset',
          params: {
            'finishPasswordResetToken': _i1.ParameterDescription(
              name: 'finishPasswordResetToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishPasswordReset(
                    session,
                    finishPasswordResetToken:
                        params['finishPasswordResetToken'],
                    newPassword: params['newPassword'],
                  ),
        ),
      },
    );
    connectors['jwtRefresh'] = _i1.EndpointConnector(
      name: 'jwtRefresh',
      endpoint: endpoints['jwtRefresh']!,
      methodConnectors: {
        'refreshAccessToken': _i1.MethodConnector(
          name: 'refreshAccessToken',
          params: {
            'refreshToken': _i1.ParameterDescription(
              name: 'refreshToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['jwtRefresh'] as _i3.JwtRefreshEndpoint)
                  .refreshAccessToken(
                    session,
                    refreshToken: params['refreshToken'],
                  ),
        ),
      },
    );
    connectors['adminLogin'] = _i1.EndpointConnector(
      name: 'adminLogin',
      endpoint: endpoints['adminLogin']!,
      methodConnectors: {
        'authenticate': _i1.MethodConnector(
          name: 'authenticate',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['adminLogin'] as _i4.AdminLoginEndpoint)
                  .authenticate(
                    session,
                    params['email'],
                    params['password'],
                  ),
        ),
      },
    );
    connectors['contact'] = _i1.EndpointConnector(
      name: 'contact',
      endpoint: endpoints['contact']!,
      methodConnectors: {
        'sendMessage': _i1.MethodConnector(
          name: 'sendMessage',
          params: {
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<_i9.ContactMessage>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['contact'] as _i5.ContactEndpoint).sendMessage(
                    session,
                    params['message'],
                  ),
        ),
        'getMessages': _i1.MethodConnector(
          name: 'getMessages',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['contact'] as _i5.ContactEndpoint)
                  .getMessages(session),
        ),
      },
    );
    connectors['content'] = _i1.EndpointConnector(
      name: 'content',
      endpoint: endpoints['content']!,
      methodConnectors: {
        'getAbout': _i1.MethodConnector(
          name: 'getAbout',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint).getAbout(
                session,
              ),
        ),
        'updateAbout': _i1.MethodConnector(
          name: 'updateAbout',
          params: {
            'about': _i1.ParameterDescription(
              name: 'about',
              type: _i1.getType<_i10.About>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).updateAbout(
                    session,
                    params['about'],
                  ),
        ),
        'getWorkExperience': _i1.MethodConnector(
          name: 'getWorkExperience',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .getWorkExperience(session),
        ),
        'addWorkExperience': _i1.MethodConnector(
          name: 'addWorkExperience',
          params: {
            'work': _i1.ParameterDescription(
              name: 'work',
              type: _i1.getType<_i11.WorkExperience>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .addWorkExperience(
                    session,
                    params['work'],
                  ),
        ),
        'updateWorkExperience': _i1.MethodConnector(
          name: 'updateWorkExperience',
          params: {
            'work': _i1.ParameterDescription(
              name: 'work',
              type: _i1.getType<_i11.WorkExperience>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .updateWorkExperience(
                    session,
                    params['work'],
                  ),
        ),
        'deleteWorkExperience': _i1.MethodConnector(
          name: 'deleteWorkExperience',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .deleteWorkExperience(
                    session,
                    params['id'],
                  ),
        ),
        'getTechStack': _i1.MethodConnector(
          name: 'getTechStack',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .getTechStack(session),
        ),
        'addTechStack': _i1.MethodConnector(
          name: 'addTechStack',
          params: {
            'tech': _i1.ParameterDescription(
              name: 'tech',
              type: _i1.getType<_i12.TechStack>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).addTechStack(
                    session,
                    params['tech'],
                  ),
        ),
        'updateTechStack': _i1.MethodConnector(
          name: 'updateTechStack',
          params: {
            'tech': _i1.ParameterDescription(
              name: 'tech',
              type: _i1.getType<_i12.TechStack>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).updateTechStack(
                    session,
                    params['tech'],
                  ),
        ),
        'deleteTechStack': _i1.MethodConnector(
          name: 'deleteTechStack',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).deleteTechStack(
                    session,
                    params['id'],
                  ),
        ),
        'getSocialLinks': _i1.MethodConnector(
          name: 'getSocialLinks',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .getSocialLinks(session),
        ),
        'addSocialLink': _i1.MethodConnector(
          name: 'addSocialLink',
          params: {
            'link': _i1.ParameterDescription(
              name: 'link',
              type: _i1.getType<_i13.SocialLink>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).addSocialLink(
                    session,
                    params['link'],
                  ),
        ),
        'updateSocialLink': _i1.MethodConnector(
          name: 'updateSocialLink',
          params: {
            'link': _i1.ParameterDescription(
              name: 'link',
              type: _i1.getType<_i13.SocialLink>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .updateSocialLink(
                    session,
                    params['link'],
                  ),
        ),
        'deleteSocialLink': _i1.MethodConnector(
          name: 'deleteSocialLink',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['content'] as _i6.ContentEndpoint)
                  .deleteSocialLink(
                    session,
                    params['id'],
                  ),
        ),
        'getProjects': _i1.MethodConnector(
          name: 'getProjects',
          params: {
            'filter': _i1.ParameterDescription(
              name: 'filter',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).getProjects(
                    session,
                    filter: params['filter'],
                  ),
        ),
        'addProject': _i1.MethodConnector(
          name: 'addProject',
          params: {
            'project': _i1.ParameterDescription(
              name: 'project',
              type: _i1.getType<_i14.Project>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).addProject(
                    session,
                    params['project'],
                  ),
        ),
        'updateProject': _i1.MethodConnector(
          name: 'updateProject',
          params: {
            'project': _i1.ParameterDescription(
              name: 'project',
              type: _i1.getType<_i14.Project>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).updateProject(
                    session,
                    params['project'],
                  ),
        ),
        'deleteProject': _i1.MethodConnector(
          name: 'deleteProject',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['content'] as _i6.ContentEndpoint).deleteProject(
                    session,
                    params['id'],
                  ),
        ),
      },
    );
    connectors['setup'] = _i1.EndpointConnector(
      name: 'setup',
      endpoint: endpoints['setup']!,
      methodConnectors: {
        'createAdminUser': _i1.MethodConnector(
          name: 'createAdminUser',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['setup'] as _i7.SetupEndpoint)
                  .createAdminUser(session),
        ),
        'resetAdminUser': _i1.MethodConnector(
          name: 'resetAdminUser',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['setup'] as _i7.SetupEndpoint)
                  .resetAdminUser(session),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['greeting'] as _i8.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth'] = _i15.Endpoints()..initializeEndpoints(server);
    modules['serverpod_auth_idp'] = _i16.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i17.Endpoints()
      ..initializeEndpoints(server);
  }
}

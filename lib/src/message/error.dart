import 'abstract_message_with_payload.dart';
import 'message_types.dart';

/// The WAMP Error massage
class Error extends AbstractMessageWithPayload {
  static final String errorInvocationCanceled =
      'wamp.error.invocation_canceled';

  // INTERACTION ERRORS
  static final String errorInvalidUri = 'wamp.error.invalid_uri';
  static final String invalidMessageId = 'wamp.error.invalid_message_id';
  static final String wrongMessageStructure =
      'wamp.error.wrong_message_structure';
  static final String noSuchProcedure = 'wamp.error.no_such_procedure';
  static final String procedureAlreadyExists =
      'wamp.error.procedure_already_exists';
  static final String noSuchRegistration = 'wamp.error.no_such_registration';
  static final String noSuchSubscription = 'wamp.error.no_such_subscription';
  static final String invalidArgument = 'wamp.error.invalid_argument';
  static final String notConnected = 'wamp.error.not_connected';
  static final String unknown = 'wamp.error.unknown';

  // AUTHORIZATION ERRORS
  static const String notAuthorized = 'wamp.error.not_authorized';
  static const String noPrincipal = 'wamp.error.no_such_principal';
  static const String authorizationFailed = 'wamp.error.authorization_failed';
  static const String noSuchRealm = 'wamp.error.no_such_realm';
  static const String noSuchRole = 'wamp.error.no_such_role';
  static const String noSuchTopic = 'wamp.error.no_such_topic';
  static const String noSuchSession = 'wamp.error.no_such_session';
  static const String protocolViolation = 'wamp.error.protocol_violation';
  static const String authenticationFailed = 'wamp.error.authentication_failed';

  static const String hiddenErrorMessage = 'unknown';

  int requestTypeId;
  int requestId;
  Map<String, Object> details;
  String? error;

  Error(this.requestTypeId, this.requestId, this.details, this.error,
      {List<dynamic>? arguments, Map<String, dynamic>? argumentsKeywords}) {
    id = MessageTypes.codeError;
    this.arguments = arguments;
    this.argumentsKeywords = argumentsKeywords;
  }
}

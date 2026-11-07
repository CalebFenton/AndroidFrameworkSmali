.class public Lcom/android/internal/net/ipsec/ike/utils/IkeMetricsInterface;
.super Ljava/lang/Object;
.source "IkeMetricsInterface.java"


# static fields
.field public static final blacklist ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED:I = 0x2f8

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_CALLER__CALLER_IWLAN:I = 0x1

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_CALLER__CALLER_UNKNOWN:I = 0x0

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_CALLER__CALLER_VCN:I = 0x2

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_CALLER__CALLER_VPN:I = 0x3

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_CLOSE_AND_AWAIT_RESPONSE:I = 0x6a

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_CREATE_LOCAL_CREATE:I = 0x67

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_DELETE_LOCAL_DELETE:I = 0x6b

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_DELETE_REMOTE_DELETE:I = 0x6c

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_IDLE:I = 0x68

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_IDLE_WITH_DEFERRED_REQUEST:I = 0x69

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_INITIAL:I = 0x66

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_KILL:I = 0x65

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_MOBIKE_REKEY_LOCAL_CREATE:I = 0x6e

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_REKEY_LOCAL_CREATE:I = 0x6d

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_REKEY_LOCAL_DELETE:I = 0x70

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_REKEY_REMOTE_CREATE:I = 0x6f

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_CHILD_REKEY_REMOTE_DELETE:I = 0x71

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_CHILD_PROCEDURE_ONGOING:I = 0x8

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH:I = 0x4

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH_IN_EAP:I = 0x5

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH_POST_EAP:I = 0x6

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_INIT:I = 0x3

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_DELETE_LOCAL_DELETE:I = 0x11

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_DPD_LOCAL_INFO:I = 0x12

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_DPD_ON_DEMAND_LOCAL_INFO:I = 0x14

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_IDLE:I = 0x7

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_INITIAL:I = 0x2

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_KILL:I = 0x1

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_MOBIKE_LOCAL_INFO:I = 0x13

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_RECEIVING:I = 0x9

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_REKEY_LOCAL_CREATE:I = 0xa

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_REKEY_LOCAL_DELETE:I = 0xf

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_REKEY_REMOTE_DELETE:I = 0x10

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_CREATE:I = 0xb

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE:I = 0xd

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE_REMOTE_DELETE:I = 0xc

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_REMOTE_DELETE:I = 0xe

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_STATE__STATE_UNKNOWN:I = 0x0

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_MOBIKE:I = 0x6

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_ON_DEMAND_DPD:I = 0x1

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_PERIODIC_DPD:I = 0x3

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_REKEY_CHILD:I = 0x5

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_REKEY_IKE:I = 0x4

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_UNKNOWN_BUSY:I = 0x2

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_TASK__IKE_TASK_UNSPECIFIED:I = 0x0

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_UNDERLYING_NETWORK_TYPE__NETWORK_CELLULAR:I = 0x2

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_UNDERLYING_NETWORK_TYPE__NETWORK_UNSPECIFIED:I = 0x0

.field public static final blacklist IKE_LIVENESS_CHECK_SESSION_VALIDATED__IKE_UNDERLYING_NETWORK_TYPE__NETWORK_WIFI:I = 0x1

.field public static final blacklist IKE_SESSION_TERMINATED:I = 0x2a6

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_CALLER__CALLER_IWLAN:I = 0x1

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_CALLER__CALLER_UNKNOWN:I = 0x0

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_CALLER__CALLER_VCN:I = 0x2

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_CALLER__CALLER_VPN:I = 0x3

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_INTERNAL:I = 0x10000

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_IO_DNS_FAILURE:I = 0x30002

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_IO_GENERAL:I = 0x30000

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_IO_TIMEOUT:I = 0x30001

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_NETWORK_LOST:I = 0x20000

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_NONE:I = 0x0

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_AUTHENTICATION_FAILED:I = 0x40018

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_CHILD_SA_NOT_FOUND:I = 0x4002c

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_FAILED_CP_REQUIRED:I = 0x40025

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INTERNAL_ADDRESS_FAILURE:I = 0x40024

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INVALID_IKE_SPI:I = 0x40004

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INVALID_KE_PAYLOAD:I = 0x40011

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INVALID_MAJOR_VERSION:I = 0x40005

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INVALID_MESSAGE_ID:I = 0x40009

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INVALID_SELECTORS:I = 0x40027

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_INVALID_SYNTAX:I = 0x40007

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_NO_ADDITIONAL_SAS:I = 0x40023

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_NO_PROPOSAL_CHOSEN:I = 0x4000e

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_SINGLE_PAIR_REQUIRED:I = 0x40022

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_TEMPORARY_FAILURE:I = 0x4002b

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_TS_UNACCEPTABLE:I = 0x40026

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_UNKNOWN:I = 0x40000

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_PROTOCOL_UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x40001

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_RESERVED_00004022:I = 0x4022

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_ERROR__ERROR_UNKNOWN:I = 0xfffffff

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_CLOSE_AND_AWAIT_RESPONSE:I = 0x6a

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_CREATE_LOCAL_CREATE:I = 0x67

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_DELETE_LOCAL_DELETE:I = 0x6b

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_DELETE_REMOTE_DELETE:I = 0x6c

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_IDLE:I = 0x68

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_IDLE_WITH_DEFERRED_REQUEST:I = 0x69

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_INITIAL:I = 0x66

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_KILL:I = 0x65

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_MOBIKE_REKEY_LOCAL_CREATE:I = 0x6e

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_REKEY_LOCAL_CREATE:I = 0x6d

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_REKEY_LOCAL_DELETE:I = 0x70

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_REKEY_REMOTE_CREATE:I = 0x6f

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_CHILD_REKEY_REMOTE_DELETE:I = 0x71

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_CHILD_PROCEDURE_ONGOING:I = 0x8

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH:I = 0x4

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH_IN_EAP:I = 0x5

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH_POST_EAP:I = 0x6

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_INIT:I = 0x3

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_DELETE_LOCAL_DELETE:I = 0x11

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_DPD_LOCAL_INFO:I = 0x12

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_DPD_ON_DEMAND_LOCAL_INFO:I = 0x14

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_IDLE:I = 0x7

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_INITIAL:I = 0x2

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_KILL:I = 0x1

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_MOBIKE_LOCAL_INFO:I = 0x13

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_RECEIVING:I = 0x9

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_REKEY_LOCAL_CREATE:I = 0xa

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_REKEY_LOCAL_DELETE:I = 0xf

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_REKEY_REMOTE_DELETE:I = 0x10

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_CREATE:I = 0xb

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE:I = 0xd

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE_REMOTE_DELETE:I = 0xc

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_REMOTE_DELETE:I = 0xe

.field public static final blacklist IKE_SESSION_TERMINATED__IKE_STATE__STATE_UNKNOWN:I = 0x0

.field public static final blacklist IKE_SESSION_TERMINATED__SESSION_TYPE__SESSION_CHILD:I = 0x2

.field public static final blacklist IKE_SESSION_TERMINATED__SESSION_TYPE__SESSION_IKE:I = 0x1

.field public static final blacklist IKE_SESSION_TERMINATED__SESSION_TYPE__SESSION_UNKNOWN:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION:I = 0x335

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_1024_BIT_MODP:I = 0x2

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_1536_BIT_MODP:I = 0x5

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_2048_BIT_MODP:I = 0xe

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_3072_BIT_MODP:I = 0xf

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_4096_BIT_MODP:I = 0x10

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_CURVE_25519:I = 0x1f

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_NONE:I = 0x1

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__DH_GROUP__DH_GROUP_UNSPECIFIED:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_3DES:I = 0x3

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_AES_CBC:I = 0xc

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_AES_CTR:I = 0xd

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_AES_GCM_12:I = 0x13

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_AES_GCM_16:I = 0x14

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_AES_GCM_8:I = 0x12

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_CHACHA20_POLY1305:I = 0x1c

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__ENCRYPTION_ALGORITHM__ENCRYPTION_ALGORITHM_UNSPECIFIED:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_CALLER__CALLER_IWLAN:I = 0x1

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_CALLER__CALLER_UNKNOWN:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_CALLER__CALLER_VCN:I = 0x2

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_CALLER__CALLER_VPN:I = 0x3

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_INTERNAL:I = 0x10000

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_IO_DNS_FAILURE:I = 0x30002

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_IO_GENERAL:I = 0x30000

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_IO_TIMEOUT:I = 0x30001

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_NETWORK_LOST:I = 0x20000

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_NONE:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_AUTHENTICATION_FAILED:I = 0x40018

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_CHILD_SA_NOT_FOUND:I = 0x4002c

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_FAILED_CP_REQUIRED:I = 0x40025

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INTERNAL_ADDRESS_FAILURE:I = 0x40024

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INVALID_IKE_SPI:I = 0x40004

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INVALID_KE_PAYLOAD:I = 0x40011

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INVALID_MAJOR_VERSION:I = 0x40005

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INVALID_MESSAGE_ID:I = 0x40009

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INVALID_SELECTORS:I = 0x40027

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_INVALID_SYNTAX:I = 0x40007

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_NO_ADDITIONAL_SAS:I = 0x40023

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_NO_PROPOSAL_CHOSEN:I = 0x4000e

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_SINGLE_PAIR_REQUIRED:I = 0x40022

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_TEMPORARY_FAILURE:I = 0x4002b

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_TS_UNACCEPTABLE:I = 0x40026

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_UNKNOWN:I = 0x40000

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_PROTOCOL_UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x40001

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_RESERVED_00004022:I = 0x4022

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_ERROR__ERROR_UNKNOWN:I = 0xfffffff

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_CLOSE_AND_AWAIT_RESPONSE:I = 0x6a

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_CREATE_LOCAL_CREATE:I = 0x67

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_DELETE_LOCAL_DELETE:I = 0x6b

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_DELETE_REMOTE_DELETE:I = 0x6c

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_IDLE:I = 0x68

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_IDLE_WITH_DEFERRED_REQUEST:I = 0x69

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_INITIAL:I = 0x66

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_KILL:I = 0x65

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_MOBIKE_REKEY_LOCAL_CREATE:I = 0x6e

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_REKEY_LOCAL_CREATE:I = 0x6d

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_REKEY_LOCAL_DELETE:I = 0x70

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_REKEY_REMOTE_CREATE:I = 0x6f

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_CHILD_REKEY_REMOTE_DELETE:I = 0x71

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_CHILD_PROCEDURE_ONGOING:I = 0x8

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH:I = 0x4

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH_IN_EAP:I = 0x5

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_AUTH_POST_EAP:I = 0x6

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_CREATE_LOCAL_IKE_INIT:I = 0x3

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_DELETE_LOCAL_DELETE:I = 0x11

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_DPD_LOCAL_INFO:I = 0x12

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_DPD_ON_DEMAND_LOCAL_INFO:I = 0x14

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_IDLE:I = 0x7

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_INITIAL:I = 0x2

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_KILL:I = 0x1

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_MOBIKE_LOCAL_INFO:I = 0x13

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_RECEIVING:I = 0x9

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_REKEY_LOCAL_CREATE:I = 0xa

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_REKEY_LOCAL_DELETE:I = 0xf

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_REKEY_REMOTE_DELETE:I = 0x10

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_CREATE:I = 0xb

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE:I = 0xd

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE_REMOTE_DELETE:I = 0xc

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_IKE_SIMULTANEOUS_REKEY_REMOTE_DELETE:I = 0xe

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__IKE_STATE__STATE_UNKNOWN:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_AES_CMAC_96:I = 0x8

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_AES_XCBC_96:I = 0x5

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_HMAC_SHA1_96:I = 0x2

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_HMAC_SHA2_256_128:I = 0xc

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_HMAC_SHA2_384_192:I = 0xd

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_HMAC_SHA2_512_256:I = 0xe

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_NONE:I = 0x1

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__INTEGRITY_ALGORITHM__INTEGRITY_ALGORITHM_UNSPECIFIED:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__KEY_LENGTH__KEY_LEN_AES_128:I = 0x80

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__KEY_LENGTH__KEY_LEN_AES_192:I = 0xc0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__KEY_LENGTH__KEY_LEN_AES_256:I = 0x100

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__KEY_LENGTH__KEY_LEN_UNSPECIFIED:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__KEY_LENGTH__KEY_LEN_UNUSED:I = 0x1

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_AES128_CMAC:I = 0x8

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_AES128_XCBC:I = 0x4

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_HMAC_SHA1:I = 0x2

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_SHA2_256:I = 0x5

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_SHA2_384:I = 0x6

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_SHA2_512:I = 0x7

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__PRF_ALGORITHMS__PSEUDORANDOM_FUNCTION_UNSPECIFIED:I = 0x0

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__SESSION_TYPE__SESSION_CHILD:I = 0x2

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__SESSION_TYPE__SESSION_IKE:I = 0x1

.field public static final blacklist NEGOTIATED_SECURITY_ASSOCIATION__SESSION_TYPE__SESSION_UNKNOWN:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist write(IIIII)V
    .registers 7
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I

    .line 316
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 317
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 318
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 319
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 320
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 321
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 323
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 324
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 325
    return-void
.end method

.method public static blacklist write(IIIIIIIIII)V
    .registers 12
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # I
    .param p6, "arg6"    # I
    .param p7, "arg7"    # I
    .param p8, "arg8"    # I
    .param p9, "arg9"    # I

    .line 343
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 344
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 345
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 346
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 347
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 348
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 349
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 350
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 351
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 352
    invoke-virtual {v0, p8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 353
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 355
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 357
    return-void
.end method

.method public static blacklist write(IIIIIIZI)V
    .registers 10
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # I
    .param p4, "arg4"    # I
    .param p5, "arg5"    # I
    .param p6, "arg6"    # Z
    .param p7, "arg7"    # I

    .line 328
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 329
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 330
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 331
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 332
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 333
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 334
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 335
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 336
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 340
    return-void
.end method

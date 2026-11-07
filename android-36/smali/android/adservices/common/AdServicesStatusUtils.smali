.class public final Landroid/adservices/common/AdServicesStatusUtils;
.super Ljava/lang/Object;
.source "AdServicesStatusUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/AdServicesStatusUtils$StatusCode;
    }
.end annotation


# static fields
.field public static final blacklist CALLER_NOT_ALLOWED_DENY_LIST_ERROR_MESSAGE:Ljava/lang/String; = "Caller is not authorized to call this API as caller is in deny list."

.field public static final blacklist DEV_SESSION_CALLER_IS_NON_DEBUGGABLE_MESSAGE:Ljava/lang/String; = "Caller during a dev session must have android:debuggable=\"true\" in their manifest! If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

.field private static final blacklist DEV_SESSION_ERROR_TRANSITIONING_HELP:Ljava/lang/String; = "If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

.field public static final blacklist DEV_SESSION_FAILURE_MESSAGE:Ljava/lang/String; = "Failed to read dev session state. If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

.field public static final blacklist DEV_SESSION_IS_TRANSITIONING_MESSAGE:Ljava/lang/String; = "Caller is not allowed during the transition to or from dev mode. If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

.field public static final blacklist ENCRYPTION_FAILURE_MESSAGE:Ljava/lang/String; = "Failed to encrypt responses."

.field public static final blacklist ILLEGAL_STATE_ACTIVITY_DISABLED_ERROR_MESSAGE:Ljava/lang/String; = "AdServices activity is disabled."

.field public static final blacklist ILLEGAL_STATE_BACKGROUND_CALLER_ERROR_MESSAGE:Ljava/lang/String; = "Background thread is not allowed to call this service."

.field public static final blacklist INVALID_OBJECT_ERROR_MESSAGE:Ljava/lang/String; = "The service received an invalid object from the server."

.field public static final blacklist RATE_LIMIT_REACHED_ERROR_MESSAGE:Ljava/lang/String; = "API rate limit exceeded."

.field public static final blacklist SECURITY_EXCEPTION_CALLER_NOT_ALLOWED_ERROR_MESSAGE:Ljava/lang/String; = "Caller is not authorized to call this API. Caller is not allowed."

.field public static final blacklist SECURITY_EXCEPTION_CALLER_NOT_ALLOWED_ON_BEHALF_ERROR_MESSAGE:Ljava/lang/String; = "Caller is not allowed to perform this operation on behalf of the given package."

.field public static final blacklist SECURITY_EXCEPTION_CALLER_NOT_ALLOWED_TO_CROSS_USER_BOUNDARIES:Ljava/lang/String; = "Caller is not authorized to access information from another user"

.field public static final blacklist SECURITY_EXCEPTION_PERMISSION_NOT_REQUESTED_ERROR_MESSAGE:Ljava/lang/String; = "Caller is not authorized to call this API. Permission was not requested."

.field public static final blacklist SERVER_RATE_LIMIT_REACHED_ERROR_MESSAGE:Ljava/lang/String; = "Server rate limit exceeded."

.field public static final blacklist SERVICE_UNAVAILABLE_ERROR_MESSAGE:Ljava/lang/String; = "Service is not available."

.field public static final blacklist STATUS_ADSERVICES_ACTIVITY_DISABLED:I = 0x1a

.field public static final blacklist STATUS_ADSERVICES_DISABLED:I = 0x8

.field public static final blacklist STATUS_BACKGROUND_CALLER:I = 0xb

.field public static final blacklist STATUS_CALLBACK_SHUTDOWN:I = 0x1b

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED:I = 0xa

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_DENY_LIST:I = 0x22

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_ENROLLMENT_BLOCKLISTED:I = 0x18

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_ENROLLMENT_INVALID_ID:I = 0x17

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_ENROLLMENT_MATCH_NOT_FOUND:I = 0x16

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_MANIFEST_ADSERVICES_CONFIG_NO_PERMISSION:I = 0x19

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_PACKAGE_BLOCKLISTED:I = 0x15

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_PACKAGE_NOT_IN_ALLOWLIST:I = 0x14

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_TO_CROSS_USER_BOUNDARIES:I = 0x10

.field public static final blacklist STATUS_CALLER_NOT_ALLOWED_UID_MISMATCH:I = 0x23

.field public static final blacklist STATUS_CONSENT_REVOKED_ALL_APIS:I = 0x1e

.field public static final blacklist STATUS_DEV_SESSION_CALLER_IS_NON_DEBUGGABLE:I = 0x20

.field public static final blacklist STATUS_DEV_SESSION_FAILURE:I = 0x21

.field public static final blacklist STATUS_DEV_SESSION_IS_STILL_TRANSITIONING:I = 0x1f

.field public static final blacklist STATUS_ENCRYPTION_FAILURE:I = 0x13

.field public static final blacklist STATUS_INTERNAL_ERROR:I = 0x1

.field public static final blacklist STATUS_INVALID_ARGUMENT:I = 0x2

.field public static final blacklist STATUS_INVALID_OBJECT:I = 0xf

.field public static final blacklist STATUS_IO_ERROR:I = 0x4

.field public static final blacklist STATUS_JS_SANDBOX_UNAVAILABLE:I = 0xe

.field public static final blacklist STATUS_KILLSWITCH_ENABLED:I = 0x6

.field public static final blacklist STATUS_PERMISSION_NOT_REQUESTED:I = 0x9

.field public static final blacklist STATUS_PROVIDER_SERVICE_INTERNAL_ERROR:I = 0x1c

.field public static final blacklist STATUS_PROVIDER_SERVICE_TASK_CANCELLED_ERROR:I = 0x24

.field public static final blacklist STATUS_RATE_LIMIT_REACHED:I = 0x5

.field public static final blacklist STATUS_SERVER_RATE_LIMIT_REACHED:I = 0x11

.field public static final blacklist STATUS_SUCCESS:I = 0x0

.field public static final blacklist STATUS_TIMEOUT:I = 0xd

.field public static final blacklist STATUS_UNAUTHORIZED:I = 0xc

.field public static final blacklist STATUS_UNKNOWN_ERROR:I = 0x3

.field public static final blacklist STATUS_UNSET:I = -0x1

.field public static final blacklist STATUS_UPDATE_ALREADY_PENDING_ERROR:I = 0x1d

.field public static final blacklist STATUS_USER_CONSENT_NOTIFICATION_NOT_DISPLAYED_YET:I = 0x12

.field public static final blacklist STATUS_USER_CONSENT_REVOKED:I = 0x7

.field public static final blacklist TIMED_OUT_ERROR_MESSAGE:Ljava/lang/String; = "API timed out."

.field public static final blacklist UPDATE_ALREADY_PENDING_ERROR_MESSAGE:Ljava/lang/String; = "Failed to schedule update. A request is already pending."


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static blacklist asException(I)Ljava/lang/Exception;
    .registers 3
    .param p0, "statusCode"    # I

    .line 385
    const-string v0, "Caller is not authorized to call this API. Caller is not allowed."

    packed-switch p0, :pswitch_data_c6

    .line 445
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    return-object v0

    .line 435
    :pswitch_b
    new-instance v0, Lcom/android/adservices/shared/common/exception/ProviderServiceTaskCancelledException;

    invoke-direct {v0}, Lcom/android/adservices/shared/common/exception/ProviderServiceTaskCancelledException;-><init>()V

    return-object v0

    .line 443
    :pswitch_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not authorized to call this API as caller is in deny list."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 441
    :pswitch_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to read dev session state. If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 439
    :pswitch_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller during a dev session must have android:debuggable=\"true\" in their manifest! If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 437
    :pswitch_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Caller is not allowed during the transition to or from dev mode. If this error persists, run `cmd adservices_manager adservices-api dev-session end` to reset the dev session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 420
    :pswitch_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to schedule update. A request is already pending."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 433
    :pswitch_39
    new-instance v0, Lcom/android/adservices/shared/common/exception/ProviderServiceInternalException;

    invoke-direct {v0}, Lcom/android/adservices/shared/common/exception/ProviderServiceInternalException;-><init>()V

    return-object v0

    .line 418
    :pswitch_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdServices activity is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 414
    :pswitch_47
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 412
    :pswitch_4d
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 410
    :pswitch_53
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 408
    :pswitch_59
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 406
    :pswitch_5f
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 404
    :pswitch_65
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 387
    :pswitch_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to encrypt responses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 431
    :pswitch_73
    new-instance v0, Landroid/os/LimitExceededException;

    const-string v1, "Server rate limit exceeded."

    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 429
    :pswitch_7b
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "The service received an invalid object from the server."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 425
    :pswitch_83
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "API timed out."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 422
    :pswitch_8b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not allowed to perform this operation on behalf of the given package."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 416
    :pswitch_93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background thread is not allowed to call this service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 402
    :pswitch_9b
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 399
    :pswitch_a1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not authorized to call this API. Permission was not requested."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 397
    :pswitch_a9
    new-instance v0, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v1, "Service is not available."

    invoke-direct {v0, v1}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 427
    :pswitch_b1
    new-instance v0, Landroid/os/LimitExceededException;

    const-string v1, "API rate limit exceeded."

    invoke-direct {v0, v1}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 391
    :pswitch_b9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    return-object v0

    .line 389
    :pswitch_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    return-object v0

    nop

    :pswitch_data_c6
    .packed-switch 0x2
        :pswitch_bf
        :pswitch_5
        :pswitch_b9
        :pswitch_b1
        :pswitch_a9
        :pswitch_a9
        :pswitch_5
        :pswitch_a1
        :pswitch_9b
        :pswitch_93
        :pswitch_8b
        :pswitch_83
        :pswitch_a9
        :pswitch_7b
        :pswitch_5
        :pswitch_73
        :pswitch_a9
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_3f
        :pswitch_5
        :pswitch_39
        :pswitch_31
        :pswitch_a9
        :pswitch_29
        :pswitch_21
        :pswitch_19
        :pswitch_11
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist asException(Landroid/adservices/common/AdServicesResponse;)Ljava/lang/Exception;
    .registers 2
    .param p0, "adServicesResponse"    # Landroid/adservices/common/AdServicesResponse;

    .line 453
    invoke-virtual {p0}, Landroid/adservices/common/AdServicesResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Landroid/adservices/common/AdServicesStatusUtils;->asException(I)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isSuccess(I)Z
    .registers 2
    .param p0, "statusCode"    # I

    .line 379
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

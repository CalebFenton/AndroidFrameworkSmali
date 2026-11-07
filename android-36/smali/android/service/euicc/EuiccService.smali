.class public abstract Landroid/service/euicc/EuiccService;
.super Landroid/app/Service;
.source "EuiccService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;,
        Landroid/service/euicc/EuiccService$OtaStatusChangedCallback;,
        Landroid/service/euicc/EuiccService$Result;,
        Landroid/service/euicc/EuiccService$ResolvableError;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BIND_CARRIER_PROVISIONING_SERVICE:Ljava/lang/String; = "android.service.euicc.action.BIND_CARRIER_PROVISIONING_SERVICE"

.field public static final whitelist ACTION_CONVERT_TO_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.service.euicc.action.CONVERT_TO_EMBEDDED_SUBSCRIPTION"

.field public static final whitelist ACTION_DELETE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.service.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.service.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

.field public static final whitelist ACTION_RENAME_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_RESOLVE_CONFIRMATION_CODE:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_RESOLVE_DEACTIVATE_SIM:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

.field public static final whitelist ACTION_RESOLVE_NO_PRIVILEGES:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

.field public static final whitelist ACTION_RESOLVE_RESOLVABLE_ERRORS:Ljava/lang/String; = "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS"

.field public static final whitelist ACTION_START_CARRIER_ACTIVATION:Ljava/lang/String; = "android.service.euicc.action.START_CARRIER_ACTIVATION"

.field public static final whitelist ACTION_START_EUICC_ACTIVATION:Ljava/lang/String; = "android.service.euicc.action.START_EUICC_ACTIVATION"

.field public static final whitelist ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.service.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED"

.field public static final whitelist ACTION_TRANSFER_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.service.euicc.action.TRANSFER_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist CATEGORY_EUICC_UI:Ljava/lang/String; = "android.service.euicc.category.EUICC_UI"

.field public static final whitelist EUICC_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.euicc.EuiccService"

.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.service.euicc.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_RESOLUTION_ALLOW_POLICY_RULES:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

.field public static final whitelist EXTRA_RESOLUTION_CALLING_PACKAGE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

.field public static final whitelist EXTRA_RESOLUTION_CARD_ID:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CARD_ID"

.field public static final whitelist EXTRA_RESOLUTION_CONFIRMATION_CODE:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

.field public static final whitelist EXTRA_RESOLUTION_CONFIRMATION_CODE_RETRIED:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

.field public static final whitelist EXTRA_RESOLUTION_CONSENT:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_CONSENT"

.field public static final whitelist EXTRA_RESOLUTION_PORT_INDEX:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

.field public static final whitelist EXTRA_RESOLUTION_SUBSCRIPTION_ID:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_SUBSCRIPTION_ID"

.field public static final whitelist EXTRA_RESOLUTION_USE_PORT_INDEX:Ljava/lang/String; = "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

.field public static final whitelist EXTRA_RESOLVABLE_ERRORS:Ljava/lang/String; = "android.service.euicc.extra.RESOLVABLE_ERRORS"

.field public static final whitelist RESOLVABLE_ERROR_CONFIRMATION_CODE:I = 0x1

.field public static final whitelist RESOLVABLE_ERROR_POLICY_RULES:I = 0x2

.field public static final whitelist RESULT_FIRST_USER:I = 0x1

.field public static final whitelist RESULT_MUST_DEACTIVATE_SIM:I = -0x1

.field public static final whitelist RESULT_NEED_CONFIRMATION_CODE:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_OK:I = 0x0

.field public static final whitelist RESULT_RESOLVABLE_ERRORS:I = -0x2

.field private static final blacklist TAG:Ljava/lang/String; = "EuiccService"


# instance fields
.field private greylist-max-o mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final greylist-max-o mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    iget-object p0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 361
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 362
    new-instance v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService-IA;)V

    iput-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    .line 363
    return-void
.end method

.method public static blacklist resultToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "result"    # I

    .line 805
    packed-switch p0, :pswitch_data_2a

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 809
    :pswitch_1d
    const-string v0, "FIRST_USER"

    return-object v0

    .line 806
    :pswitch_20
    const-string v0, "OK"

    return-object v0

    .line 807
    :pswitch_23
    const-string v0, "MUST_DEACTIVATE_SIM"

    return-object v0

    .line 808
    :pswitch_26
    const-string v0, "RESOLVABLE_ERRORS"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch -0x2
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 793
    const-string v0, "The connected LPA does not implement EuiccService#dump()"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public whitelist encodeSmdxSubjectAndReasonCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "subjectCode"    # Ljava/lang/String;
    .param p2, "reasonCode"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x3

    .line 382
    .local v0, "maxSupportedSection":I
    const/16 v1, 0xf

    .line 383
    .local v1, "maxSupportedDigit":I
    const/4 v2, 0x4

    .line 385
    .local v2, "bitsPerSection":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 389
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "subjectCodeToken":[Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "reasonCodeToken":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x3

    if-gt v5, v6, :cond_67

    array-length v5, v3

    if-gt v5, v6, :cond_67

    .line 397
    const/16 v5, 0xa

    .line 400
    .local v5, "result":I
    array-length v7, v4

    rsub-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    shl-int/2addr v5, v7

    .line 402
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_2c
    const/16 v10, 0xf

    if-ge v9, v7, :cond_47

    aget-object v11, v4, v9

    .line 403
    .local v11, "digitString":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 404
    .local v12, "num":I
    if-gt v12, v10, :cond_3f

    .line 407
    shl-int/lit8 v10, v5, 0x4

    add-int v5, v10, v12

    .line 402
    .end local v11    # "digitString":Ljava/lang/String;
    .end local v12    # "num":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 405
    .restart local v11    # "digitString":Ljava/lang/String;
    .restart local v12    # "num":I
    :cond_3f
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "SubjectCode exceeds 15"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    .end local v11    # "digitString":Ljava/lang/String;
    .end local v12    # "num":I
    :cond_47
    array-length v7, v3

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x4

    shl-int/2addr v5, v6

    .line 412
    array-length v6, v3

    :goto_4d
    if-ge v8, v6, :cond_66

    aget-object v7, v3, v8

    .line 413
    .local v7, "digitString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 414
    .local v9, "num":I
    if-gt v9, v10, :cond_5e

    .line 417
    shl-int/lit8 v11, v5, 0x4

    add-int v5, v11, v9

    .line 412
    .end local v7    # "digitString":Ljava/lang/String;
    .end local v9    # "num":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 415
    .restart local v7    # "digitString":Ljava/lang/String;
    .restart local v9    # "num":I
    :cond_5e
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v8, "ReasonCode exceeds 15"

    invoke-direct {v6, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 420
    .end local v7    # "digitString":Ljava/lang/String;
    .end local v9    # "num":I
    :cond_66
    return v5

    .line 394
    .end local v5    # "result":I
    :cond_67
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Only three nested layer is supported."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 386
    .end local v3    # "reasonCodeToken":[Ljava/lang/String;
    .end local v4    # "subjectCodeToken":[Ljava/lang/String;
    :cond_6f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SubjectCode/ReasonCode is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 463
    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mStubWrapper:Landroid/service/euicc/IEuiccService$Stub;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 9

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 432
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Landroid/service/euicc/EuiccService$1;

    invoke-direct {v7, p0}, Landroid/service/euicc/EuiccService$1;-><init>(Landroid/service/euicc/EuiccService;)V

    const/4 v1, 0x4

    const/4 v2, 0x4

    const-wide/16 v3, 0x1e

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 446
    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 447
    return-void
.end method

.method public abstract whitelist onDeleteSubscription(ILjava/lang/String;)I
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 452
    iget-object v0, p0, Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 453
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 454
    return-void
.end method

.method public whitelist onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZ)I
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "forceDeactivateSim"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist onDownloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;
    .registers 9
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "switchAfterDownload"    # Z
    .param p5, "forceDeactivateSim"    # Z
    .param p6, "resolvedBundle"    # Landroid/os/Bundle;

    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LPA must override onDownloadSubscription"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onDownloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;)Landroid/service/euicc/DownloadSubscriptionResult;
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p3, "switchAfterDownload"    # Z
    .param p4, "forceDeactivateSim"    # Z
    .param p5, "resolvedBundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onEraseSubscriptions(I)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onEraseSubscriptions(II)I
    .registers 5
    .param p1, "slotIndex"    # I
    .param p2, "options"    # I

    .line 757
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must be overridden to enable the ResetOption parameter"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onGetAvailableMemoryInBytes(I)J
    .registers 4
    .param p1, "slotId"    # I

    .line 785
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The connected LPA does not implementEuiccService#onGetAvailableMemoryInBytes(int)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
.end method

.method public whitelist onGetDownloadableSubscriptionMetadata(IILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p4, "forceDeactivateSim"    # Z

    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LPA must override onGetDownloadableSubscriptionMetadata"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.end method

.method public abstract whitelist onGetEid(I)Ljava/lang/String;
.end method

.method public abstract whitelist onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
.end method

.method public abstract whitelist onGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
.end method

.method public abstract whitelist onGetOtaStatus(I)I
.end method

.method public abstract whitelist onRetainSubscriptionsForFactoryReset(I)I
.end method

.method public abstract whitelist onStartOtaIfNecessary(ILandroid/service/euicc/EuiccService$OtaStatusChangedCallback;)V
.end method

.method public abstract whitelist onSwitchToSubscription(ILjava/lang/String;Z)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onSwitchToSubscriptionWithPort(IILjava/lang/String;Z)I
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "portIndex"    # I
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "forceDeactivateSim"    # Z

    .line 711
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LPA must override onSwitchToSubscriptionWithPort"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist onUpdateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;)I
.end method

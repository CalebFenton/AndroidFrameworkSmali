.class public Landroid/telephony/euicc/EuiccManager;
.super Ljava/lang/Object;
.source "EuiccManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccManager$ErrorCode;,
        Landroid/telephony/euicc/EuiccManager$OperationCode;,
        Landroid/telephony/euicc/EuiccManager$OtaStatus;,
        Landroid/telephony/euicc/EuiccManager$EuiccActivationType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONVERT_TO_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.action.CONVERT_TO_EMBEDDED_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DELETE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS"

.field public static final whitelist ACTION_NOTIFY_CARRIER_SETUP_INCOMPLETE:Ljava/lang/String; = "android.telephony.euicc.action.NOTIFY_CARRIER_SETUP_INCOMPLETE"

.field public static final whitelist ACTION_OTA_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.euicc.action.OTA_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_EMBEDDED_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RENAME_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.RENAME_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_RESOLVE_ERROR:Ljava/lang/String; = "android.telephony.euicc.action.RESOLVE_ERROR"

.field public static final whitelist ACTION_START_EUICC_ACTIVATION:Ljava/lang/String; = "android.telephony.euicc.action.START_EUICC_ACTIVATION"

.field public static final whitelist ACTION_TOGGLE_SUBSCRIPTION_PRIVILEGED:Ljava/lang/String; = "android.telephony.euicc.action.TOGGLE_SUBSCRIPTION_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_TRANSFER_EMBEDDED_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.action.TRANSFER_EMBEDDED_SUBSCRIPTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_ERROR:I = 0x2

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_OK:I = 0x0

.field public static final whitelist EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR:I = 0x1

.field public static final whitelist ERROR_ADDRESS_MISSING:I = 0x271b

.field public static final whitelist ERROR_CARRIER_LOCKED:I = 0x2710

.field public static final whitelist ERROR_CERTIFICATE_ERROR:I = 0x271c

.field public static final whitelist ERROR_CONNECTION_ERROR:I = 0x271e

.field public static final whitelist ERROR_DISALLOWED_BY_PPR:I = 0x271a

.field public static final whitelist ERROR_EUICC_INSUFFICIENT_MEMORY:I = 0x2714

.field public static final whitelist ERROR_EUICC_MISSING:I = 0x2716

.field public static final whitelist ERROR_INCOMPATIBLE_CARRIER:I = 0x2713

.field public static final whitelist ERROR_INSTALL_PROFILE:I = 0x2719

.field public static final whitelist ERROR_INVALID_ACTIVATION_CODE:I = 0x2711

.field public static final whitelist ERROR_INVALID_CONFIRMATION_CODE:I = 0x2712

.field public static final whitelist ERROR_INVALID_PORT:I = 0x2721

.field public static final whitelist ERROR_INVALID_RESPONSE:I = 0x271f

.field public static final whitelist ERROR_NO_PROFILES_AVAILABLE:I = 0x271d

.field public static final whitelist ERROR_OPERATION_BUSY:I = 0x2720

.field public static final whitelist ERROR_SIM_MISSING:I = 0x2718

.field public static final whitelist ERROR_TIME_OUT:I = 0x2715

.field public static final whitelist ERROR_UNSUPPORTED_VERSION:I = 0x2717

.field public static final whitelist EUICC_ACTIVATION_TYPE_ACCOUNT_REQUIRED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_BACKUP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_DEFAULT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_ACTIVATION_TYPE_TRANSFER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EUICC_ACTIVATION_TYPE_TRANSFER_FINAL_HOLD:I = 0x5

.field public static final whitelist EUICC_MEMORY_FIELD_UNAVAILABLE:J = -0x1L

.field public static final whitelist EUICC_OTA_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_IN_PROGRESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_NOT_NEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_STATUS_UNAVAILABLE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EUICC_OTA_SUCCEEDED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ACTIVATION_TYPE:Ljava/lang/String; = "android.telephony.euicc.extra.ACTIVATION_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_OPERATION_CODE"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

.field public static final greylist-max-o EXTRA_EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE"

.field public static final whitelist EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE"

.field public static final whitelist EXTRA_ENABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.ENABLE_SUBSCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FORCE_PROVISION:Ljava/lang/String; = "android.telephony.euicc.extra.FORCE_PROVISION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FROM_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.euicc.extra.FROM_SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHYSICAL_SLOT_ID:Ljava/lang/String; = "android.telephony.euicc.extra.PHYSICAL_SLOT_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.euicc.extra.SUBSCRIPTION_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_SUBSCRIPTION_NICKNAME:Ljava/lang/String; = "android.telephony.euicc.extra.SUBSCRIPTION_NICKNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USE_QR_SCANNER:Ljava/lang/String; = "android.telephony.euicc.extra.USE_QR_SCANNER"

.field public static final blacklist INACTIVE_PORT_AVAILABILITY_CHECK:J = 0xe524809L

.field public static final whitelist META_DATA_CARRIER_ICON:Ljava/lang/String; = "android.telephony.euicc.carriericon"

.field public static final whitelist OPERATION_APDU:I = 0x8

.field public static final whitelist OPERATION_DOWNLOAD:I = 0x5

.field public static final whitelist OPERATION_EUICC_CARD:I = 0x3

.field public static final whitelist OPERATION_EUICC_GSMA:I = 0x7

.field public static final whitelist OPERATION_HTTP:I = 0xb

.field public static final whitelist OPERATION_METADATA:I = 0x6

.field public static final whitelist OPERATION_SIM_SLOT:I = 0x2

.field public static final whitelist OPERATION_SMDX:I = 0x9

.field public static final whitelist OPERATION_SMDX_SUBJECT_REASON_CODE:I = 0xa

.field public static final whitelist OPERATION_SWITCH:I = 0x4

.field public static final whitelist OPERATION_SYSTEM:I = 0x1

.field public static final blacklist SHOULD_RESOLVE_PORT_INDEX_FOR_APPS:J = 0xd628eb8L

.field public static final blacklist SWITCH_WITHOUT_PORT_INDEX_EXCEPTION_ON_DISABLE:J = 0xd046b13L

.field private static final blacklist TAG:Ljava/lang/String; = "EuiccManager"


# instance fields
.field private blacklist mCardId:I

.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 918
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccManager;->getCardIdForDefaultEuicc()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 919
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardId"    # I

    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 923
    iput-object p1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 924
    iput p2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 925
    return-void
.end method

.method private blacklist getCardIdForDefaultEuicc()I
    .registers 5

    .line 1738
    const/4 v0, -0x2

    .line 1740
    .local v0, "cardId":I
    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1741
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1f

    const-string v2, "android.hardware.telephony.euicc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1742
    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1743
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    .line 1746
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1f
    return v0
.end method

.method private static greylist-max-o getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;
    .registers 1

    .line 1732
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1733
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1734
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1730
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    return-object v0
.end method

.method private blacklist refreshCardIdIfUninitialized()Z
    .registers 3

    .line 1715
    iget v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 1716
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccManager;->getCardIdForDefaultEuicc()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    .line 1718
    :cond_b
    iget v0, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private static greylist-max-o sendUnavailableError(Landroid/app/PendingIntent;)V
    .registers 2
    .param p0, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1723
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_4} :catch_5

    .line 1726
    goto :goto_6

    .line 1724
    :catch_5
    move-exception v0

    .line 1727
    :goto_6
    return-void
.end method


# virtual methods
.method public whitelist continueOperation(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "resolutionIntent"    # Landroid/content/Intent;
    .param p2, "resolutionExtras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1156
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1157
    const-class v0, Landroid/app/PendingIntent;

    .line 1158
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1160
    .local v0, "callbackIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_15

    .line 1161
    invoke-static {v0}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1163
    :cond_15
    return-void

    .line 1166
    .end local v0    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_21

    .line 1169
    nop

    .line 1170
    return-void

    .line 1167
    :catch_21
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createForCardId(I)Landroid/telephony/euicc/EuiccManager;
    .registers 4
    .param p1, "cardId"    # I

    .line 934
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist deleteSubscription(ILandroid/app/PendingIntent;)V
    .registers 6
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1287
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1288
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1289
    return-void

    .line 1292
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1293
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1292
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    .line 1296
    nop

    .line 1297
    return-void

    .line 1294
    :catch_1b
    move-exception v0

    .line 1295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist downloadSubscription(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V
    .registers 12
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "switchAfterDownload"    # Z
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1091
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1092
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1093
    return-void

    .line 1096
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1097
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_22

    .line 1096
    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object v7, p3

    .end local p1    # "subscription":Landroid/telephony/euicc/DownloadableSubscription;
    .end local p2    # "switchAfterDownload":Z
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .local v3, "subscription":Landroid/telephony/euicc/DownloadableSubscription;
    .local v4, "switchAfterDownload":Z
    .local v7, "callbackIntent":Landroid/app/PendingIntent;
    :try_start_1a
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1f

    .line 1100
    nop

    .line 1101
    return-void

    .line 1098
    :catch_1f
    move-exception v0

    move-object p1, v0

    goto :goto_27

    .end local v3    # "subscription":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v4    # "switchAfterDownload":Z
    .end local v7    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p1    # "subscription":Landroid/telephony/euicc/DownloadableSubscription;
    .restart local p2    # "switchAfterDownload":Z
    .restart local p3    # "callbackIntent":Landroid/app/PendingIntent;
    :catch_22
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object v7, p3

    move-object p1, v0

    .line 1099
    .end local p2    # "switchAfterDownload":Z
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local v3    # "subscription":Landroid/telephony/euicc/DownloadableSubscription;
    .restart local v4    # "switchAfterDownload":Z
    .restart local v7    # "callbackIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_27
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .registers 5
    .param p1, "options"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1517
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1518
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1519
    return-void

    .line 1522
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 1525
    nop

    .line 1526
    return-void

    .line 1523
    :catch_15
    move-exception v0

    .line 1524
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist eraseSubscriptions(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1489
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1490
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1491
    return-void

    .line 1494
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->eraseSubscriptions(ILandroid/app/PendingIntent;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 1497
    nop

    .line 1498
    return-void

    .line 1495
    :catch_15
    move-exception v0

    .line 1496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableMemoryInBytes()J
    .registers 4

    .line 998
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 999
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1002
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1003
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getAvailableMemoryInBytes(ILjava/lang/String;)J

    move-result-wide v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    .line 1002
    return-wide v0

    .line 1004
    :catch_1a
    move-exception v0

    .line 1005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultDownloadableSubscriptionList(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1229
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1230
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1231
    return-void

    .line 1234
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1235
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1234
    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    .line 1238
    nop

    .line 1239
    return-void

    .line 1236
    :catch_1b
    move-exception v0

    .line 1237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDownloadableSubscriptionMetadata(Landroid/telephony/euicc/DownloadableSubscription;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1196
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1197
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1198
    return-void

    .line 1201
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1202
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1201
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    .line 1205
    nop

    .line 1206
    return-void

    .line 1203
    :catch_1b
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEid()Ljava/lang/String;
    .registers 4

    .line 970
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 971
    const/4 v0, 0x0

    return-object v0

    .line 974
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return-object v0

    .line 975
    :catch_19
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getEuiccInfo()Landroid/telephony/euicc/EuiccInfo;
    .registers 3

    .line 1251
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1252
    const/4 v0, 0x0

    return-object v0

    .line 1255
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    .line 1256
    :catch_13
    move-exception v0

    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOtaStatus()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1024
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1025
    const/4 v0, 0x5

    return v0

    .line 1028
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getOtaStatus(I)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1029
    :catch_13
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSupportedCountries()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1636
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1637
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1640
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 1641
    :catch_15
    move-exception v0

    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUnsupportedCountries()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 1667
    :catch_15
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 953
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/telephony/euicc/EuiccManager;->refreshCardIdIfUninitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isPsimConversionSupported(I)Z
    .registers 4
    .param p1, "carrierId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1817
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1818
    const/4 v0, 0x0

    return v0

    .line 1821
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->isPsimConversionSupported(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return v0

    .line 1822
    :catch_11
    move-exception v0

    .line 1823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSimPortAvailable(I)Z
    .registers 5
    .param p1, "portIndex"    # I

    .line 1767
    :try_start_0
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1768
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1767
    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->isSimPortAvailable(IILjava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 1769
    :catch_11
    move-exception v0

    .line 1770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSupportedCountry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryIso"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1695
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1696
    const/4 v0, 0x0

    return v0

    .line 1699
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->isSupportedCountry(Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    return v0

    .line 1700
    :catch_17
    move-exception v0

    .line 1701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o retainSubscriptionsForFactoryReset(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1547
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1548
    invoke-static {p1}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1549
    return-void

    .line 1552
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IEuiccController;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    .line 1555
    nop

    .line 1556
    return-void

    .line 1553
    :catch_15
    move-exception v0

    .line 1554
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPsimConversionSupportedCarriers(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1791
    .local p1, "carrierIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1795
    :try_start_6
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1796
    .local v0, "arr":[I
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/euicc/IEuiccController;->setPsimConversionSupportedCarriers([I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_20

    .line 1799
    .end local v0    # "arr":[I
    nop

    .line 1800
    return-void

    .line 1797
    :catch_20
    move-exception v0

    .line 1798
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1792
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Euicc is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSupportedCountries(Ljava/util/List;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1576
    .local p1, "supportedCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1577
    return-void

    .line 1580
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    .line 1582
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1583
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1580
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->setSupportedCountries(ZLjava/util/List;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_26} :catch_28

    .line 1586
    nop

    .line 1587
    return-void

    .line 1584
    :catch_28
    move-exception v0

    .line 1585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUnsupportedCountries(Ljava/util/List;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1607
    .local p1, "unsupportedCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1608
    return-void

    .line 1611
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    .line 1613
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/euicc/EuiccManager$$ExternalSyntheticLambda0;-><init>()V

    .line 1614
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1611
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/euicc/IEuiccController;->setSupportedCountries(ZLjava/util/List;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_26} :catch_28

    .line 1617
    nop

    .line 1618
    return-void

    .line 1615
    :catch_28
    move-exception v0

    .line 1616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startResolutionActivity(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultIntent"    # Landroid/content/Intent;
    .param p4, "callbackIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1124
    const-class v0, Landroid/app/PendingIntent;

    .line 1125
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1126
    .local v0, "resolutionIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_24

    .line 1129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v5, v1

    .line 1130
    .local v5, "fillInIntent":Landroid/content/Intent;
    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    invoke-virtual {v5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1132
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p2

    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "requestCode":I
    .local v2, "activity":Landroid/app/Activity;
    .local v4, "requestCode":I
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 1134
    return-void

    .line 1127
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v4    # "requestCode":I
    .end local v5    # "fillInIntent":Landroid/content/Intent;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "requestCode":I
    :cond_24
    move-object v2, p1

    move v4, p2

    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "requestCode":I
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v4    # "requestCode":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid result intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist switchToSubscription(IILandroid/app/PendingIntent;)V
    .registers 11
    .param p1, "subscriptionId"    # I
    .param p2, "portIndex"    # I
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1418
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1419
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1420
    return-void

    .line 1423
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_54

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1428
    .local v0, "canWriteEmbeddedSubscriptions":Z
    :goto_17
    if-nez v0, :cond_3e

    :try_start_19
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1429
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController;->hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_3e

    .line 1430
    :cond_2a
    const-string v1, "EuiccManager"

    const-string v2, "Not permitted to use switchToSubscription with portIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Must have carrier privileges to use switchToSubscription with portIndex"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "portIndex":I
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    throw v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_39} :catch_39

    .line 1436
    .end local v0    # "canWriteEmbeddedSubscriptions":Z
    .restart local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "callbackIntent":Landroid/app/PendingIntent;
    :catch_39
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v6, p3

    goto :goto_58

    .line 1434
    .restart local v0    # "canWriteEmbeddedSubscriptions":Z
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v3, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1435
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4a} :catch_54

    .line 1434
    move v3, p1

    move v4, p2

    move-object v6, p3

    .end local p1    # "subscriptionId":I
    .end local p2    # "portIndex":I
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .local v3, "subscriptionId":I
    .local v4, "portIndex":I
    .local v6, "callbackIntent":Landroid/app/PendingIntent;
    :try_start_4d
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_50} :catch_52

    .line 1438
    .end local v0    # "canWriteEmbeddedSubscriptions":Z
    nop

    .line 1439
    return-void

    .line 1436
    :catch_52
    move-exception v0

    goto :goto_58

    .end local v3    # "subscriptionId":I
    .end local v4    # "portIndex":I
    .end local v6    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "portIndex":I
    .restart local p3    # "callbackIntent":Landroid/app/PendingIntent;
    :catch_54
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v6, p3

    .line 1437
    .end local p1    # "subscriptionId":I
    .end local p2    # "portIndex":I
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "subscriptionId":I
    .restart local v4    # "portIndex":I
    .restart local v6    # "callbackIntent":Landroid/app/PendingIntent;
    :goto_58
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .registers 7
    .param p1, "subscriptionId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1353
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1354
    invoke-static {p2}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1355
    return-void

    .line 1358
    :cond_a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_31

    .line 1359
    :try_start_d
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0xd046b13

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_31

    .line 1363
    :cond_21
    const-string v0, "EuiccManager"

    const-string/jumbo v1, "switchToSubscription without portIndex is not allowed for disable operation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use switchToSubscription with portIndex API for disable operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "callbackIntent":Landroid/app/PendingIntent;
    throw v0

    .line 1368
    .restart local p0    # "this":Landroid/telephony/euicc/EuiccManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "callbackIntent":Landroid/app/PendingIntent;
    :cond_31
    :goto_31
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1369
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1368
    invoke-interface {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/euicc/IEuiccController;->switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_40} :catch_42

    .line 1372
    nop

    .line 1373
    return-void

    .line 1370
    :catch_42
    move-exception v0

    .line 1371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSubscriptionNickname(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11
    .param p1, "subscriptionId"    # I
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 1458
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1459
    invoke-static {p3}, Landroid/telephony/euicc/EuiccManager;->sendUnavailableError(Landroid/app/PendingIntent;)V

    .line 1460
    return-void

    .line 1463
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/euicc/EuiccManager;->getIEuiccController()Lcom/android/internal/telephony/euicc/IEuiccController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/euicc/EuiccManager;->mCardId:I

    iget-object v0, p0, Landroid/telephony/euicc/EuiccManager;->mContext:Landroid/content/Context;

    .line 1464
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_21

    .line 1463
    move v3, p1

    move-object v4, p2

    move-object v6, p3

    .end local p1    # "subscriptionId":I
    .end local p2    # "nickname":Ljava/lang/String;
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .local v3, "subscriptionId":I
    .local v4, "nickname":Ljava/lang/String;
    .local v6, "callbackIntent":Landroid/app/PendingIntent;
    :try_start_19
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1e

    .line 1467
    nop

    .line 1468
    return-void

    .line 1465
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .end local v3    # "subscriptionId":I
    .end local v4    # "nickname":Ljava/lang/String;
    .end local v6    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "nickname":Ljava/lang/String;
    .restart local p3    # "callbackIntent":Landroid/app/PendingIntent;
    :catch_21
    move-exception v0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object p1, v0

    .line 1466
    .end local p2    # "nickname":Ljava/lang/String;
    .end local p3    # "callbackIntent":Landroid/app/PendingIntent;
    .restart local v3    # "subscriptionId":I
    .restart local v4    # "nickname":Ljava/lang/String;
    .restart local v6    # "callbackIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_26
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

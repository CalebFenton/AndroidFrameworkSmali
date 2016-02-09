.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

.field public static final ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

.field public static final DTMF_CHARACTER_PAUSE:C = ','

.field public static final DTMF_CHARACTER_WAIT:C = ';'

.field public static final EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"

.field public static final EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.intent.extra.CURRENT_TTY_MODE"

.field public static final EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.intent.extra.TTY_PREFERRED"

.field public static final EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"

.field public static final GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TelecomManager"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 410
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    #@9
    .line 411
    iput-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@b
    .line 408
    :goto_0
    return-void

    #@c
    .line 413
    :cond_0
    iput-object p1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@e
    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 402
    const-string/jumbo v0, "telecom"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/telecom/TelecomManager;

    #@9
    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    #@0
    .prologue
    .line 1258
    const-string/jumbo v0, "telecom"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private isServiceConnected()Z
    .locals 3

    #@0
    .prologue
    .line 1262
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    .line 1263
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_0

    #@9
    .line 1264
    const-string/jumbo v1, "TelecomManager"

    #@c
    const-string/jumbo v2, "Telecom Service not found."

    #@f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1266
    :cond_0
    return v0

    #@13
    .line 1262
    .end local v0    # "isConnected":Z
    :cond_1
    const/4 v0, 0x0

    #@14
    .restart local v0    # "isConnected":Z
    goto :goto_0
.end method


# virtual methods
.method public acceptRingingCall()V
    .locals 3

    #@0
    .prologue
    .line 982
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 983
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 980
    :cond_0
    :goto_0
    return-void

    #@e
    .line 985
    :catch_0
    move-exception v0

    #@f
    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@12
    const-string/jumbo v2, "Error calling ITelecomService#acceptRingingCall"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method public addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1056
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1057
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 1058
    if-nez p2, :cond_0

    #@c
    new-instance p2, Landroid/os/Bundle;

    #@e
    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@11
    .line 1057
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1054
    :cond_1
    :goto_0
    return-void

    #@15
    .line 1060
    :catch_0
    move-exception v0

    #@16
    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "RemoteException adding a new incoming call: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0
.end method

.method public addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1079
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 1080
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 1081
    if-nez p2, :cond_0

    #@c
    new-instance p2, Landroid/os/Bundle;

    #@e
    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@11
    .line 1080
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1077
    :cond_1
    :goto_0
    return-void

    #@15
    .line 1083
    :catch_0
    move-exception v0

    #@16
    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "RemoteException adding a new unknown call: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 4

    #@0
    .prologue
    .line 1162
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1163
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    .line 1165
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1161
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1166
    :catch_0
    move-exception v0

    #@11
    .line 1167
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@14
    const-string/jumbo v3, "Error calling ITelecomService#cancelMissedCallsNotification"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public clearAccounts()V
    .locals 3

    #@0
    .prologue
    .line 739
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 740
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 737
    :cond_0
    :goto_0
    return-void

    #@14
    .line 742
    :catch_0
    move-exception v0

    #@15
    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@18
    const-string/jumbo v2, "Error calling ITelecomService#clearAccounts"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method

.method public clearAccountsForPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 753
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 751
    :cond_0
    :goto_0
    return-void

    #@d
    .line 754
    :cond_1
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    goto :goto_0

    #@15
    .line 756
    :catch_0
    move-exception v0

    #@16
    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "Error calling ITelecomService#clearAccountsForPackage"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0
.end method

.method public clearPhoneAccounts()V
    .locals 0

    #@0
    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->clearAccounts()V

    #@3
    .line 728
    return-void
.end method

.method public enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 4
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z

    #@0
    .prologue
    .line 1247
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1248
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    .line 1250
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1246
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1251
    :catch_0
    move-exception v0

    #@b
    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@e
    const-string/jumbo v3, "Error enablePhoneAbbount"

    #@11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@14
    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    #@0
    .prologue
    .line 963
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 964
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 966
    :catch_0
    move-exception v0

    #@10
    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#endCall"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 969
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method

.method public getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 4
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 1144
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1145
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 1147
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 1148
    :catch_0
    move-exception v0

    #@14
    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@17
    const-string/jumbo v3, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "content://icc/adn"

    #@20
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@23
    move-result-object v2

    #@24
    return-object v2
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 675
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 676
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 678
    :catch_0
    move-exception v0

    #@10
    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getAllPhoneAccountHandles"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@1b
    return-object v1
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 657
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 658
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 660
    :catch_0
    move-exception v0

    #@10
    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getAllPhoneAccounts"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    #@1b
    return-object v1
.end method

.method public getAllPhoneAccountsCount()I
    .locals 3

    #@0
    .prologue
    .line 639
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 640
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 642
    :catch_0
    move-exception v0

    #@10
    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getAllPhoneAccountsCount"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 645
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 571
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .locals 4
    .param p1, "includeDisabledAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 583
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 584
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 585
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 584
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 587
    :catch_0
    move-exception v0

    #@16
    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    .line 589
    const-string/jumbo v3, ")"

    #@2c
    .line 588
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3c
    return-object v1
.end method

.method public getCallState()I
    .locals 3

    #@0
    .prologue
    .line 928
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 929
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 931
    :catch_0
    move-exception v0

    #@10
    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "RemoteException calling getCallState()."

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 934
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method

.method public getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    #@0
    .prologue
    .line 532
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCurrentTtyMode()I
    .locals 3

    #@0
    .prologue
    .line 1032
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1033
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1035
    :catch_0
    move-exception v0

    #@16
    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException attempting to get the current TTY mode."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 1038
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public getDefaultDialerPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 787
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 788
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 790
    :catch_0
    move-exception v0

    #@10
    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "RemoteException attempting to get the default dialer package name."

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p1, "uriScheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 438
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 439
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 440
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 439
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 442
    :catch_0
    move-exception v0

    #@16
    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return-object v1
.end method

.method public getDefaultPhoneApp()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 770
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 771
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 773
    :catch_0
    move-exception v0

    #@10
    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "RemoteException attempting to get the default phone app."

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 884
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 885
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 886
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 885
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 888
    :catch_0
    move-exception v0

    #@16
    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException calling ITelecomService#getLine1Number."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return-object v1
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 621
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 622
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 624
    :catch_0
    move-exception v0

    #@10
    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getPhoneAccount"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 627
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getPhoneAccountsForPackage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 604
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 606
    :catch_0
    move-exception v0

    #@16
    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "Error calling ITelecomService#getPhoneAccountsForPackage"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 609
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return-object v1
.end method

.method public getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 551
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 552
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 553
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 552
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 555
    :catch_0
    move-exception v0

    #@16
    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 558
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@24
    return-object v1
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    #@0
    .prologue
    .line 493
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 494
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 496
    :catch_0
    move-exception v0

    #@10
    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getSimCallManager"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 513
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 514
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 516
    :catch_0
    move-exception v0

    #@10
    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getSimCallManagerForUser"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getSystemDialerPackage()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 829
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 830
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 832
    :catch_0
    move-exception v0

    #@10
    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "RemoteException attempting to get the system dialer package name."

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 835
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    #@0
    .prologue
    .line 461
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 462
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 464
    :catch_0
    move-exception v0

    #@10
    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 866
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 867
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 868
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 867
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 870
    :catch_0
    move-exception v0

    #@16
    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 873
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return-object v1
.end method

.method public handleMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1102
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    .line 1104
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 1105
    :catch_0
    move-exception v0

    #@12
    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@15
    const-string/jumbo v3, "Error calling ITelecomService#handlePinMmi"

    #@18
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 1109
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1c
    return v2
.end method

.method public handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 1125
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1126
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    .line 1129
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 1128
    invoke-interface {v1, p2, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 1130
    :catch_0
    move-exception v0

    #@12
    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@15
    const-string/jumbo v3, "Error calling ITelecomService#handlePinMmi"

    #@18
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 1134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    #@1c
    return v2
.end method

.method public isInCall()Z
    .locals 3

    #@0
    .prologue
    .line 903
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 904
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 906
    :catch_0
    move-exception v0

    #@16
    .line 907
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException calling isInCall()."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 909
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public isRinging()Z
    .locals 3

    #@0
    .prologue
    .line 945
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 946
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 948
    :catch_0
    move-exception v0

    #@16
    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException attempting to get ringing state of phone app."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public isTtySupported()Z
    .locals 3

    #@0
    .prologue
    .line 1011
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1012
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1014
    :catch_0
    move-exception v0

    #@16
    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException attempting to get TTY supported state."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 1017
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 847
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 848
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    .line 849
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 848
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 851
    :catch_0
    move-exception v0

    #@16
    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@19
    const-string/jumbo v2, "RemoteException calling ITelecomService#isVoiceMailNumber."

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1224
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1225
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_2

    #@6
    .line 1226
    if-nez p1, :cond_0

    #@8
    .line 1227
    const-string/jumbo v2, "TelecomManager"

    #@b
    const-string/jumbo v3, "Cannot place call to empty address."

    #@e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1230
    :cond_0
    if-nez p2, :cond_1

    #@13
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    #@15
    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@18
    .line 1231
    :cond_1
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@1a
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 1230
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 1223
    :cond_2
    :goto_0
    return-void

    #@22
    .line 1232
    :catch_0
    move-exception v0

    #@23
    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@26
    const-string/jumbo v3, "Error calling ITelecomService#placeCall"

    #@29
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 3
    .param p1, "account"    # Landroid/telecom/PhoneAccount;

    #@0
    .prologue
    .line 700
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 701
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 698
    :cond_0
    :goto_0
    return-void

    #@e
    .line 703
    :catch_0
    move-exception v0

    #@f
    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@12
    const-string/jumbo v2, "Error calling ITelecomService#registerPhoneAccount"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method public setDefaultDialer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 812
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 813
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 815
    :catch_0
    move-exception v0

    #@10
    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@13
    const-string/jumbo v2, "RemoteException attempting to set the default dialer."

    #@16
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    .line 818
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@1a
    return v1
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 476
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 477
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 474
    :cond_0
    :goto_0
    return-void

    #@e
    .line 479
    :catch_0
    move-exception v0

    #@f
    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@12
    const-string/jumbo v2, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    goto :goto_0
.end method

.method public showInCallScreen(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    #@0
    .prologue
    .line 1183
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@3
    move-result-object v1

    #@4
    .line 1184
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    #@6
    .line 1186
    :try_start_0
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1182
    :cond_0
    :goto_0
    return-void

    #@10
    .line 1187
    :catch_0
    move-exception v0

    #@11
    .line 1188
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelecomManager"

    #@14
    const-string/jumbo v3, "Error calling ITelecomService#showCallScreen"

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    #@0
    .prologue
    .line 995
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 996
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 993
    :cond_0
    :goto_0
    return-void

    #@14
    .line 998
    :catch_0
    move-exception v0

    #@15
    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@18
    const-string/jumbo v2, "Error calling ITelecomService#silenceRinger"

    #@1b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1e
    goto :goto_0
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 715
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isServiceConnected()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 716
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 713
    :cond_0
    :goto_0
    return-void

    #@e
    .line 718
    :catch_0
    move-exception v0

    #@f
    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelecomManager"

    #@12
    const-string/jumbo v2, "Error calling ITelecomService#unregisterPhoneAccount"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

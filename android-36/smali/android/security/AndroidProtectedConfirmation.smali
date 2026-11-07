.class public Landroid/security/AndroidProtectedConfirmation;
.super Ljava/lang/Object;
.source "AndroidProtectedConfirmation.java"


# static fields
.field public static final blacklist ERROR_ABORTED:I = 0x2

.field public static final blacklist ERROR_CANCELED:I = 0x1

.field public static final blacklist ERROR_IGNORED:I = 0x4

.field public static final blacklist ERROR_OK:I = 0x0

.field public static final blacklist ERROR_OPERATION_PENDING:I = 0x3

.field public static final blacklist ERROR_SYSTEM_ERROR:I = 0x5

.field public static final blacklist ERROR_UNIMPLEMENTED:I = 0x6

.field public static final blacklist FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final blacklist FLAG_UI_OPTION_MAGNIFIED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidProtectedConfirmation"


# instance fields
.field private blacklist mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    .line 50
    return-void
.end method

.method private declared-synchronized blacklist getService()Landroid/security/apc/IProtectedConfirmation;
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    if-nez v0, :cond_11

    .line 54
    const-string v0, "android.security.apc"

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    .line 57
    .end local p0    # "this":Landroid/security/AndroidProtectedConfirmation;
    :cond_11
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 52
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method


# virtual methods
.method public blacklist cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I
    .registers 5
    .param p1, "listener"    # Landroid/security/apc/IConfirmationCallback;

    .line 94
    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/security/apc/IProtectedConfirmation;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    .line 95
    const/4 v0, 0x0

    return v0

    .line 99
    :catch_9
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 96
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_d
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AndroidProtectedConfirmation"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v1, 0x5

    return v1
.end method

.method public blacklist isConfirmationPromptSupported()Z
    .registers 4

    .line 111
    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/apc/IProtectedConfirmation;->isSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 112
    :catch_9
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AndroidProtectedConfirmation"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I
    .registers 12
    .param p1, "listener"    # Landroid/security/apc/IConfirmationCallback;
    .param p2, "promptText"    # Ljava/lang/String;
    .param p3, "extraData"    # [B
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "uiOptionsAsFlags"    # I

    .line 74
    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_1e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_14

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "listener":Landroid/security/apc/IConfirmationCallback;
    .end local p2    # "promptText":Ljava/lang/String;
    .end local p3    # "extraData":[B
    .end local p4    # "locale":Ljava/lang/String;
    .end local p5    # "uiOptionsAsFlags":I
    .local v1, "listener":Landroid/security/apc/IConfirmationCallback;
    .local v2, "promptText":Ljava/lang/String;
    .local v3, "extraData":[B
    .local v4, "locale":Ljava/lang/String;
    .local v5, "uiOptionsAsFlags":I
    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/security/apc/IProtectedConfirmation;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_9 .. :try_end_c} :catch_e

    .line 76
    const/4 p1, 0x0

    return p1

    .line 80
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_1b

    .line 77
    :catch_11
    move-exception v0

    move-object p1, v0

    goto :goto_25

    .line 80
    .end local v1    # "listener":Landroid/security/apc/IConfirmationCallback;
    .end local v2    # "promptText":Ljava/lang/String;
    .end local v3    # "extraData":[B
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "uiOptionsAsFlags":I
    .restart local p1    # "listener":Landroid/security/apc/IConfirmationCallback;
    .restart local p2    # "promptText":Ljava/lang/String;
    .restart local p3    # "extraData":[B
    .restart local p4    # "locale":Ljava/lang/String;
    .restart local p5    # "uiOptionsAsFlags":I
    :catch_14
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object p1, v0

    .line 81
    .end local p2    # "promptText":Ljava/lang/String;
    .end local p3    # "extraData":[B
    .end local p4    # "locale":Ljava/lang/String;
    .end local p5    # "uiOptionsAsFlags":I
    .restart local v1    # "listener":Landroid/security/apc/IConfirmationCallback;
    .restart local v2    # "promptText":Ljava/lang/String;
    .restart local v3    # "extraData":[B
    .restart local v4    # "locale":Ljava/lang/String;
    .restart local v5    # "uiOptionsAsFlags":I
    .local p1, "e":Landroid/os/ServiceSpecificException;
    :goto_1b
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p2

    .line 77
    .end local v1    # "listener":Landroid/security/apc/IConfirmationCallback;
    .end local v2    # "promptText":Ljava/lang/String;
    .end local v3    # "extraData":[B
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "uiOptionsAsFlags":I
    .local p1, "listener":Landroid/security/apc/IConfirmationCallback;
    .restart local p2    # "promptText":Ljava/lang/String;
    .restart local p3    # "extraData":[B
    .restart local p4    # "locale":Ljava/lang/String;
    .restart local p5    # "uiOptionsAsFlags":I
    :catch_1e
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object p1, v0

    .line 78
    .end local p2    # "promptText":Ljava/lang/String;
    .end local p3    # "extraData":[B
    .end local p4    # "locale":Ljava/lang/String;
    .end local p5    # "uiOptionsAsFlags":I
    .restart local v1    # "listener":Landroid/security/apc/IConfirmationCallback;
    .restart local v2    # "promptText":Ljava/lang/String;
    .restart local v3    # "extraData":[B
    .restart local v4    # "locale":Ljava/lang/String;
    .restart local v5    # "uiOptionsAsFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_25
    const-string p2, "AndroidProtectedConfirmation"

    const-string p3, "Cannot connect to keystore"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 p2, 0x5

    return p2
.end method

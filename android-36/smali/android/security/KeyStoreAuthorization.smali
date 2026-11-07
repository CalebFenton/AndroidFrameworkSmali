.class public Landroid/security/KeyStoreAuthorization;
.super Ljava/lang/Object;
.source "KeyStoreAuthorization.java"


# static fields
.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreAuthorization"

.field private static final blacklist sInstance:Landroid/security/KeyStoreAuthorization;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/security/KeyStoreAuthorization;

    invoke-direct {v0}, Landroid/security/KeyStoreAuthorization;-><init>()V

    sput-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/security/KeyStoreAuthorization;
    .registers 1

    .line 44
    sget-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-object v0
.end method

.method private blacklist getService()Landroid/security/authorization/IKeystoreAuthorization;
    .registers 2

    .line 51
    nop

    .line 52
    const-string v0, "android.security.authorization"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I
    .registers 5
    .param p1, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 62
    const-string v0, "addAuthToken"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 64
    :try_start_5
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/security/authorization/IKeystoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_c} :catch_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_e

    .line 65
    const/4 v0, 0x0

    return v0

    .line 69
    :catch_e
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 66
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_12
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyStoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v1, 0x4

    return v1
.end method

.method public blacklist addAuthToken([B)I
    .registers 3
    .param p1, "authToken"    # [B

    .line 80
    invoke-static {p1}, Landroid/security/AuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I

    move-result v0

    return v0
.end method

.method public blacklist getLastAuthTime(J[I)J
    .registers 9
    .param p1, "userId"    # J
    .param p3, "authenticatorTypes"    # [I

    .line 136
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->getLastAuthTime(J[I)J

    move-result-wide v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_18
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_a} :catch_b

    return-wide v0

    .line 140
    :catch_b
    move-exception v2

    .line 142
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_12

    .line 145
    return-wide v0

    .line 143
    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 137
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :catch_18
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting last auth time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyStoreAuthorization"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-wide v0
.end method

.method public blacklist onDeviceLocked(I[JZ)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "unlockingSids"    # [J
    .param p3, "weakUnlockEnabled"    # Z

    .line 114
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 116
    :try_start_3
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceLocked(I[JZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_c

    .line 117
    const/4 v0, 0x0

    return v0

    .line 121
    :catch_c
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 118
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_10
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyStoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x4

    return v1
.end method

.method public blacklist onDeviceUnlocked(I[B)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "password"    # [B

    .line 92
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 94
    :try_start_3
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceUnlocked(I[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_c

    .line 95
    const/4 v0, 0x0

    return v0

    .line 99
    :catch_c
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    .line 96
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_10
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyStoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v1, 0x4

    return v1
.end method

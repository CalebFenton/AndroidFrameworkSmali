.class public Landroid/security/KeyStoreOperation;
.super Ljava/lang/Object;
.source "KeyStoreOperation.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "KeyStoreOperation"


# instance fields
.field private final blacklist mChallenge:Ljava/lang/Long;

.field private final blacklist mOperation:Landroid/system/keystore2/IKeystoreOperation;

.field private final blacklist mParameters:[Landroid/hardware/security/keymint/KeyParameter;


# direct methods
.method public static synthetic blacklist $r8$lambda$GzMEBikNfodj-GTvvDZlceivwHs(Landroid/security/KeyStoreOperation;)Ljava/lang/Integer;
    .registers 1

    invoke-direct {p0}, Landroid/security/KeyStoreOperation;->lambda$abort$3()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$V3JLJE9IyoSDQbEtsEuYDTSdLnE(Landroid/security/KeyStoreOperation;[B)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/KeyStoreOperation;->lambda$updateAad$0([B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$XF8dnoTmM6hMBLu75BKLqVy-bxI(Landroid/security/KeyStoreOperation;[B[B)[B
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/security/KeyStoreOperation;->lambda$finish$2([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Zq48mSFIXpCsoYDZ2jJFfuYJxZo(Landroid/security/KeyStoreOperation;[B)[B
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/KeyStoreOperation;->lambda$update$1([B)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/IKeystoreOperation;Ljava/lang/Long;[Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 5
    .param p1, "operation"    # Landroid/system/keystore2/IKeystoreOperation;
    .param p2, "challenge"    # Ljava/lang/Long;
    .param p3, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1}, Landroid/system/keystore2/IKeystoreOperation;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 45
    iput-object p1, p0, Landroid/security/KeyStoreOperation;->mOperation:Landroid/system/keystore2/IKeystoreOperation;

    .line 46
    iput-object p2, p0, Landroid/security/KeyStoreOperation;->mChallenge:Ljava/lang/Long;

    .line 47
    iput-object p3, p0, Landroid/security/KeyStoreOperation;->mParameters:[Landroid/hardware/security/keymint/KeyParameter;

    .line 48
    return-void
.end method

.method private blacklist handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/security/CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 70
    .local p1, "request":Landroid/security/CheckedRemoteRequest;, "Landroid/security/CheckedRemoteRequest<TR;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/security/CheckedRemoteRequest;->execute()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 81
    :catch_5
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreOperation"

    const-string v2, "Remote exception while advancing a KeyStoreOperation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v1, Landroid/security/KeyStoreException;

    .line 90
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x1c

    const-string v4, ""

    invoke-direct {v1, v3, v4, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_34

    .line 79
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1

    .line 74
    :pswitch_2c
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Cannot update the same operation concurrently."

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_34
    .packed-switch 0x13
        :pswitch_2c
    .end packed-switch
.end method

.method private synthetic blacklist lambda$abort$3()Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/security/KeyStoreOperation;->mOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-interface {v0}, Landroid/system/keystore2/IKeystoreOperation;->abort()V

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$finish$2([B[B)[B
    .registers 4
    .param p1, "input"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/security/KeyStoreOperation;->mOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-interface {v0, p1, p2}, Landroid/system/keystore2/IKeystoreOperation;->finish([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$update$1([B)[B
    .registers 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/security/KeyStoreOperation;->mOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-interface {v0, p1}, Landroid/system/keystore2/IKeystoreOperation;->update([B)[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$updateAad$0([B)Ljava/lang/Integer;
    .registers 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/security/KeyStoreOperation;->mOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-interface {v0, p1}, Landroid/system/keystore2/IKeystoreOperation;->updateAad([B)V

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist abort()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 142
    const-string v0, "abort"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda3;-><init>(Landroid/security/KeyStoreOperation;)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreOperation;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public blacklist finish([B[B)[B
    .registers 4
    .param p1, "input"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 131
    const-string v0, "finish"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda1;-><init>(Landroid/security/KeyStoreOperation;[B[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreOperation;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getChallenge()Ljava/lang/Long;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/security/KeyStoreOperation;->mChallenge:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getParameters()[Landroid/hardware/security/keymint/KeyParameter;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/security/KeyStoreOperation;->mParameters:[Landroid/hardware/security/keymint/KeyParameter;

    return-object v0
.end method

.method public blacklist update([B)[B
    .registers 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 117
    const-string/jumbo v0, "update"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda2;-><init>(Landroid/security/KeyStoreOperation;[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreOperation;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist updateAad([B)V
    .registers 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 101
    const-string/jumbo v0, "updateAad"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/security/KeyStoreOperation$$ExternalSyntheticLambda0;-><init>(Landroid/security/KeyStoreOperation;[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreOperation;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.class public Landroid/security/KeyStoreSecurityLevel;
.super Ljava/lang/Object;
.source "KeyStoreSecurityLevel.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreSecurityLevel"


# instance fields
.field private final blacklist mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;


# direct methods
.method public static synthetic blacklist $r8$lambda$5bIRjf-liwdi2vhNkXtQ_Lej5d8(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/security/KeyStoreSecurityLevel;->lambda$importKey$1(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$U6uoVwZpPjz239eYhssnn9J_-30(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/security/KeyStoreSecurityLevel;->lambda$importWrappedKey$2(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nmKQL67jdmJaQALlqay99_HTGYQ(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/security/KeyStoreSecurityLevel;->lambda$generateKey$0(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V
    .registers 3
    .param p1, "securityLevel"    # Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-interface {p1}, Landroid/system/keystore2/IKeystoreSecurityLevel;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 51
    iput-object p1, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 52
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

    .line 56
    .local p1, "request":Landroid/security/CheckedRemoteRequest;, "Landroid/security/CheckedRemoteRequest<TR;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/security/CheckedRemoteRequest;->execute()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_4} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 59
    :catch_5
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreSecurityLevel"

    const-string v2, "Could not connect to Keystore."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v1, Landroid/security/KeyStoreException;

    const-string v2, ""

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v1, v4, v2, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1a
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1
.end method

.method protected static blacklist interruptedPreservingSleep(J)V
    .registers 8
    .param p0, "millis"    # J

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "wasInterrupted":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 210
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    .line 213
    .local v2, "target":J
    :goto_a
    :try_start_a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_13} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_13} :catch_14

    .line 214
    goto :goto_16

    .line 217
    :catch_14
    move-exception v4

    .line 220
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 223
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_16
    if-eqz v0, :cond_1f

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 226
    :cond_1f
    return-void

    .line 215
    :catch_20
    move-exception v4

    .line 216
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 221
    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_a
.end method

.method private synthetic blacklist lambda$generateKey$0(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 150
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 149
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p4    # "flags":I
    .end local p5    # "entropy":[B
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .local v4, "flags":I
    .local v5, "entropy":[B
    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$importKey$1(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "args"    # Ljava/util/Collection;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 173
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 172
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p4    # "flags":I
    .end local p5    # "keyData":[B
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .local v4, "flags":I
    .local v5, "keyData":[B
    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$importWrappedKey$2(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 12
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "maskingKey"    # [B
    .param p4, "args"    # Ljava/util/Collection;
    .param p5, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 204
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 202
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .end local p1    # "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "wrappingKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "maskingKey":[B
    .end local p5    # "authenticatorSpecs":[Landroid/system/keystore2/AuthenticatorSpec;
    .local v1, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v2, "wrappingKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v3, "maskingKey":[B
    .local v5, "authenticatorSpecs":[Landroid/system/keystore2/AuthenticatorSpec;
    invoke-interface/range {v0 .. v5}, Landroid/system/keystore2/IKeystoreSecurityLevel;->importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;
    .registers 8
    .param p1, "keyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)",
            "Landroid/security/KeyStoreOperation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 79
    .local p2, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 82
    :goto_3
    :try_start_3
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel;->mSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 85
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/security/keymint/KeyParameter;

    .line 83
    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/system/keystore2/IKeystoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object v0

    .line 88
    .local v0, "createOperationResponse":Landroid/system/keystore2/CreateOperationResponse;
    const/4 v1, 0x0

    .line 89
    .local v1, "challenge":Ljava/lang/Long;
    iget-object v2, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    if-eqz v2, :cond_24

    .line 90
    iget-object v2, v0, Landroid/system/keystore2/CreateOperationResponse;->operationChallenge:Landroid/system/keystore2/OperationChallenge;

    iget-wide v2, v2, Landroid/system/keystore2/OperationChallenge;->challenge:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 92
    :cond_24
    const/4 v2, 0x0

    .line 93
    .local v2, "parameters":[Landroid/hardware/security/keymint/KeyParameter;
    iget-object v3, v0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    if-eqz v3, :cond_2e

    .line 94
    iget-object v3, v0, Landroid/system/keystore2/CreateOperationResponse;->parameters:Landroid/system/keystore2/KeyParameters;

    iget-object v3, v3, Landroid/system/keystore2/KeyParameters;->keyParameter:[Landroid/hardware/security/keymint/KeyParameter;

    move-object v2, v3

    .line 96
    :cond_2e
    new-instance v3, Landroid/security/KeyStoreOperation;

    iget-object v4, v0, Landroid/system/keystore2/CreateOperationResponse;->iOperation:Landroid/system/keystore2/IKeystoreOperation;

    invoke-direct {v3, v4, v1, v2}, Landroid/security/KeyStoreOperation;-><init>(Landroid/system/keystore2/IKeystoreOperation;Ljava/lang/Long;[Landroid/hardware/security/keymint/KeyParameter;)V
    :try_end_35
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_35} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_35} :catch_36

    return-object v3

    .line 124
    .end local v0    # "createOperationResponse":Landroid/system/keystore2/CreateOperationResponse;
    .end local v1    # "challenge":Ljava/lang/Long;
    .end local v2    # "parameters":[Landroid/hardware/security/keymint/KeyParameter;
    :catch_36
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStoreSecurityLevel"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance v1, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v1}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v1

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_44
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_74

    .line 122
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object v1

    throw v1

    .line 103
    :pswitch_55
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 104
    .local v1, "backOffHint":J
    const-wide/32 v3, 0xa206cc8

    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 117
    invoke-static {v1, v2}, Landroid/security/KeyStoreSecurityLevel;->interruptedPreservingSleep(J)V

    .line 119
    nop

    .line 127
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "backOffHint":J
    goto :goto_3

    .line 108
    .restart local v0    # "e":Landroid/os/ServiceSpecificException;
    .restart local v1    # "backOffHint":J
    :cond_6e
    new-instance v3, Landroid/security/keystore/BackendBusyException;

    invoke-direct {v3, v1, v2}, Landroid/security/keystore/BackendBusyException;-><init>(J)V

    throw v3

    :pswitch_data_74
    .packed-switch 0x12
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 13
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[B)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 147
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 149
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p4    # "flags":I
    .end local p5    # "entropy":[B
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v3, "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .local v4, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v5, "flags":I
    .local v6, "entropy":[B
    invoke-direct/range {v0 .. v6}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyMetadata;

    return-object p1
.end method

.method public blacklist importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;
    .registers 13
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;I[B)",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 170
    .local p3, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 172
    new-instance v0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p4    # "flags":I
    .end local p5    # "keyData":[B
    .local v2, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v3, "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .local v4, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v5, "flags":I
    .local v6, "keyData":[B
    invoke-direct/range {v0 .. v6}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda0;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V

    invoke-direct {p0, v0}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyMetadata;

    return-object p1
.end method

.method public blacklist importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .registers 15
    .param p1, "wrappedKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKeyDescriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "wrappedKey"    # [B
    .param p4, "maskingKey"    # [B
    .param p6, "authenticatorSpecs"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/system/keystore2/KeyDescriptor;",
            "Landroid/system/keystore2/KeyDescriptor;",
            "[B[B",
            "Ljava/util/Collection<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;[",
            "Landroid/system/keystore2/AuthenticatorSpec;",
            ")",
            "Landroid/system/keystore2/KeyMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 195
    .local p5, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 196
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    move-object v3, v0

    .line 197
    .local v3, "keyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v0, p1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v0, v3, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 198
    iget-wide v0, p1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-wide v0, v3, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 199
    iput-object p3, v3, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 200
    iget v0, p1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    iput v0, v3, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 202
    new-instance v1, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p2    # "wrappingKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local p4    # "maskingKey":[B
    .end local p5    # "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local p6    # "authenticatorSpecs":[Landroid/system/keystore2/AuthenticatorSpec;
    .local v4, "wrappingKeyDescriptor":Landroid/system/keystore2/KeyDescriptor;
    .local v5, "maskingKey":[B
    .local v6, "args":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/security/keymint/KeyParameter;>;"
    .local v7, "authenticatorSpecs":[Landroid/system/keystore2/AuthenticatorSpec;
    invoke-direct/range {v1 .. v7}, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda1;-><init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[BLjava/util/Collection;[Landroid/system/keystore2/AuthenticatorSpec;)V

    invoke-direct {p0, v1}, Landroid/security/KeyStoreSecurityLevel;->handleExceptions(Landroid/security/CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/system/keystore2/KeyMetadata;

    return-object p2
.end method

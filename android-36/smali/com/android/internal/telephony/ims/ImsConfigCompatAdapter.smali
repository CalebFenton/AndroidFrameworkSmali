.class public Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigCompatAdapter.java"


# static fields
.field public static final blacklist FAILED:I = 0x1

.field public static final blacklist SUCCESS:I = 0x0

.field public static final blacklist UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsConfig;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    return-void
.end method


# virtual methods
.method public whitelist getConfigInt(I)I
    .registers 5

    const/4 v0, -0x1

    .line 69
    :try_start_1
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_a

    if-eq p0, v0, :cond_2d

    return p0

    :catch_a
    move-exception p0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInt: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsConfigCompatAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return v0
.end method

.method public whitelist getConfigString(I)Ljava/lang/String;
    .registers 4

    .line 82
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigInt: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsConfigCompatAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist setConfig(II)I
    .registers 5

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_a

    if-nez p0, :cond_35

    const/4 p0, 0x0

    return p0

    :catch_a
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string p1, "ImsConfigCompatAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist setConfig(ILjava/lang/String;)I
    .registers 5

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_a

    if-nez p0, :cond_35

    const/4 p0, 0x0

    return p0

    :catch_a
    move-exception p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    const-string p1, "ImsConfigCompatAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

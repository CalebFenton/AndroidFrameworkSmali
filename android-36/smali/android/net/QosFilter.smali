.class public abstract Landroid/net/QosFilter;
.super Ljava/lang/Object;
.source "QosFilter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    instance-of v0, p0, Landroid/net/connectivity/android/net/QosSocketFilter;

    if-eqz v0, :cond_8

    .line 45
    return-void

    .line 42
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported QosFilter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract whitelist getNetwork()Landroid/net/Network;
.end method

.method public abstract whitelist matchesLocalAddress(Ljava/net/InetAddress;II)Z
.end method

.method public whitelist matchesProtocol(I)Z
    .registers 3
    .param p1, "protocol"    # I

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist matchesRemoteAddress(Ljava/net/InetAddress;II)Z
.end method

.method public abstract blacklist validate()I
.end method

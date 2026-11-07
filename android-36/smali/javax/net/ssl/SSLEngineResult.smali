.class public Ljavax/net/ssl/SSLEngineResult;
.super Ljava/lang/Object;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/SSLEngineResult$Status;,
        Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    }
.end annotation


# instance fields
.field private final greylist-max-o bytesConsumed:I

.field private final greylist-max-o bytesProduced:I

.field private final greylist-max-o handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private final greylist-max-o status:Ljavax/net/ssl/SSLEngineResult$Status;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    .registers 7
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-ltz p3, :cond_14

    if-ltz p4, :cond_14

    .line 187
    iput-object p1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 188
    iput-object p2, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 189
    iput p3, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    .line 190
    iput p4, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    .line 191
    return-void

    .line 184
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Parameter(s)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api bytesConsumed()I
    .registers 2

    .line 218
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    return v0
.end method

.method public final whitelist test-api bytesProduced()I
    .registers 2

    .line 227
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    return v0
.end method

.method public final whitelist test-api getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2

    .line 209
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method public final whitelist test-api getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2

    .line 199
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandshakeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nbytesConsumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytesProduced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

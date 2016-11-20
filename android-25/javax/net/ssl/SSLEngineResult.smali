.class public Ljavax/net/ssl/SSLEngineResult;
.super Ljava/lang/Object;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;,
        Ljavax/net/ssl/SSLEngineResult$Status;
    }
.end annotation


# instance fields
.field private final bytesConsumed:I

.field private final bytesProduced:I

.field private final handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private final status:Ljavax/net/ssl/SSLEngineResult$Status;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    .locals 2
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 182
    if-eqz p1, :cond_0

    #@5
    if-nez p2, :cond_1

    #@7
    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Invalid Parameter(s)"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 183
    :cond_1
    if-ltz p3, :cond_0

    #@12
    if-ltz p4, :cond_0

    #@14
    .line 187
    iput-object p1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    #@16
    .line 188
    iput-object p2, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@18
    .line 189
    iput p3, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    #@1a
    .line 190
    iput p4, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    #@1c
    .line 180
    return-void
.end method


# virtual methods
.method public final bytesConsumed()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    #@2
    return v0
.end method

.method public final bytesProduced()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    #@2
    return v0
.end method

.method public final getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2
    return-object v0
.end method

.method public final getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    #@0
    .prologue
    .line 199
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Status = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 235
    const-string/jumbo v1, " HandshakeStatus = "

    #@15
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 235
    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@1b
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 236
    const-string/jumbo v1, "\nbytesConsumed = "

    #@22
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 236
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    #@28
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 237
    const-string/jumbo v1, " bytesProduced = "

    #@2f
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 237
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    #@35
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

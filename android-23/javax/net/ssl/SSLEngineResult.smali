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
    .locals 3
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    if-nez p1, :cond_0

    #@5
    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "status == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 115
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "handshakeStatus == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 118
    :cond_1
    if-gez p3, :cond_2

    #@1b
    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "bytesConsumed < 0: "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 121
    :cond_2
    if-gez p4, :cond_3

    #@37
    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "bytesProduced < 0: "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 124
    :cond_3
    iput-object p1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    #@53
    .line 125
    iput-object p2, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@55
    .line 126
    iput p3, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    #@57
    .line 127
    iput p4, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    #@59
    .line 111
    return-void
.end method


# virtual methods
.method public final bytesConsumed()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    #@2
    return v0
.end method

.method public final bytesProduced()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    #@2
    return v0
.end method

.method public final getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2
    return-object v0
.end method

.method public final getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SSLEngineReport: Status = "

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
    const-string/jumbo v1, "  HandshakeStatus = "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 169
    const-string/jumbo v1, "\n                 bytesConsumed = "

    #@22
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 169
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    #@28
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 169
    const-string/jumbo v1, " bytesProduced = "

    #@2f
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 170
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    #@35
    .line 168
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

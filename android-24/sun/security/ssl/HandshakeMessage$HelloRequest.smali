.class final Lsun/security/ssl/HandshakeMessage$HelloRequest;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HelloRequest"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 0
    .param p1, "in"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 179
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method messageLength()I
    .locals 1

    #@0
    .prologue
    .line 184
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 175
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    const-string/jumbo v0, "*** HelloRequest (empty)"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 191
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    return-void
.end method

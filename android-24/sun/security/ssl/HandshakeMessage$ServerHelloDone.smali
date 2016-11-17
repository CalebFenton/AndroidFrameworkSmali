.class final Lsun/security/ssl/HandshakeMessage$ServerHelloDone;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerHelloDone"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1496
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 0
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;

    #@0
    .prologue
    .line 1498
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method messageLength()I
    .locals 1

    #@0
    .prologue
    .line 1505
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 1494
    const/16 v0, 0xe

    #@2
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1515
    const-string/jumbo v0, "*** ServerHelloDone"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 1513
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 0
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1508
    return-void
.end method

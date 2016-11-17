.class Lgov/nist/javax/sip/stack/TCPMessageChannel$1;
.super Ljava/util/TimerTask;
.source "TCPMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .locals 0
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@0
    .prologue
    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    #@0
    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@2
    invoke-static {v1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->-get0(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    #@9
    .line 322
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 326
    :goto_0
    const/4 v1, 0x1

    #@d
    return v1

    #@e
    .line 323
    :catch_0
    move-exception v0

    #@f
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public run()V
    .locals 2

    #@0
    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    #@2
    invoke-static {v1}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->-get0(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 330
    :goto_0
    return-void

    #@a
    .line 333
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

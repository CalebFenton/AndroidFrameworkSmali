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
.field final synthetic greylist this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;


# direct methods
.method constructor greylist <init>(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .registers 2
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/TCPMessageChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api cancel()Z
    .registers 2

    .line 321
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->-$$Nest$fgetmySock(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 322
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 325
    goto :goto_e

    .line 323
    :catch_d
    move-exception v0

    .line 326
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 332
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->-$$Nest$fgetmySock(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 335
    goto :goto_b

    .line 333
    :catch_a
    move-exception v0

    .line 336
    :goto_b
    return-void
.end method

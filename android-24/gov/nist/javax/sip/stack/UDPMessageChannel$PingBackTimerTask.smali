.class Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;
.super Ljava/util/TimerTask;
.source "UDPMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/UDPMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingBackTimerTask"
.end annotation


# instance fields
.field ipAddress:Ljava/lang/String;

.field port:I

.field final synthetic this$0:Lgov/nist/javax/sip/stack/UDPMessageChannel;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V
    .locals 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # I

    #@0
    .prologue
    .line 147
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->this$0:Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    .line 148
    iput-object p2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->ipAddress:Ljava/lang/String;

    #@7
    .line 149
    iput p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->port:I

    #@9
    .line 150
    invoke-static {p1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->-get0(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ":"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 147
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->ipAddress:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ":"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->port:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public run()V
    .locals 3

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->this$0:Lgov/nist/javax/sip/stack/UDPMessageChannel;

    #@2
    invoke-static {v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->-get0(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->ipAddress:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ":"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->port:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 153
    return-void
.end method

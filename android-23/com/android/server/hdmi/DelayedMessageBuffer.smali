.class final Lcom/android/server/hdmi/DelayedMessageBuffer;
.super Ljava/lang/Object;
.source "DelayedMessageBuffer.java"


# instance fields
.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@a
    .line 33
    iput-object p1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@c
    .line 32
    return-void
.end method

.method private removeActiveSource()V
    .locals 4

    #@0
    .prologue
    .line 69
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    .line 71
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@15
    move-result v2

    #@16
    const/16 v3, 0x82

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@1d
    goto :goto_0

    #@1e
    .line 67
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 43
    const/4 v0, 0x1

    #@1
    .line 49
    .local v0, "buffered":Z
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@4
    move-result v1

    #@5
    sparse-switch v1, :sswitch_data_0

    #@8
    .line 59
    const/4 v0, 0x0

    #@9
    .line 62
    :goto_0
    if-eqz v0, :cond_0

    #@b
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Buffering message:"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x0

    #@20
    new-array v2, v2, [Ljava/lang/Object;

    #@22
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@25
    .line 42
    :cond_0
    return-void

    #@26
    .line 51
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->removeActiveSource()V

    #@29
    .line 52
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_0

    #@2f
    .line 56
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_0

    #@35
    .line 49
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_1
        0x82 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method isBuffered(I)Z
    .locals 3
    .param p1, "opcode"    # I

    #@0
    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "message$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    .line 79
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_0

    #@18
    .line 80
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 83
    .end local v0    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method processActiveSource(I)V
    .locals 5
    .param p1, "address"    # I

    #@0
    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    .line 138
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 139
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "message$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    #@1c
    .line 140
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@1f
    move-result v3

    #@20
    const/16 v4, 0x82

    #@22
    if-ne v3, v4, :cond_0

    #@24
    .line 141
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@27
    move-result v3

    #@28
    if-ne v3, p1, :cond_0

    #@2a
    .line 142
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2c
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@2f
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Processing message:"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    const/4 v4, 0x0

    #@44
    new-array v4, v4, [Ljava/lang/Object;

    #@46
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@49
    goto :goto_0

    #@4a
    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_0

    #@50
    .line 136
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return-void
.end method

.method processAllMessages()V
    .locals 5

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    .line 89
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "message$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_0

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    #@1c
    .line 91
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@1e
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@21
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Processing message:"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    const/4 v4, 0x0

    #@36
    new-array v4, v4, [Ljava/lang/Object;

    #@38
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@3b
    goto :goto_0

    #@3c
    .line 86
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_0
    return-void
.end method

.method processMessagesForDevice(I)V
    .locals 6
    .param p1, "address"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    #@3
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@8
    .line 108
    .local v0, "copiedBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecMessage;>;"
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@d
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "Checking message for address:"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    new-array v4, v5, [Ljava/lang/Object;

    #@23
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@26
    .line 110
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    .local v2, "message$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_3

    #@30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    #@36
    .line 111
    .local v1, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@39
    move-result v3

    #@3a
    if-eq v3, p1, :cond_0

    #@3c
    .line 112
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 115
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@45
    move-result v3

    #@46
    const/16 v4, 0x82

    #@48
    if-ne v3, v4, :cond_1

    #@4a
    .line 116
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@4c
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    #@4f
    move-result v4

    #@50
    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isInputReady(I)Z

    #@53
    move-result v3

    #@54
    if-eqz v3, :cond_2

    #@56
    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@58
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    #@5b
    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v4, "Processing message:"

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v3

    #@6f
    new-array v4, v5, [Ljava/lang/Object;

    #@71
    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    #@74
    goto :goto_0

    #@75
    .line 117
    :cond_2
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7a
    goto :goto_0

    #@7b
    .line 106
    .end local v1    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_3
    return-void
.end method

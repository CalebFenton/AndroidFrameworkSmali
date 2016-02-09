.class final Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
.super Ljava/lang/Object;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CecMessageBuffer"
.end annotation


# instance fields
.field private mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@c
    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    #@3
    return-void
.end method

.method private bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 338
    const/16 v0, 0x82

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 339
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 337
    :cond_0
    return-void
.end method

.method private bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 344
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 345
    const/16 v0, 0xd

    #@9
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 343
    :cond_0
    :goto_0
    return-void

    #@10
    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    goto :goto_0
.end method

.method private replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "opcode"    # I

    #@0
    .prologue
    .line 352
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 353
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    #@11
    .line 354
    .local v0, "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@14
    move-result v2

    #@15
    if-ne v2, p2, :cond_0

    #@17
    .line 355
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@19
    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 356
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 359
    .end local v0    # "bufferedMessage":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    const/4 v2, 0x0

    #@22
    return v2
.end method


# virtual methods
.method public bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 309
    :goto_0
    return-void

    #@8
    .line 312
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@b
    goto :goto_0

    #@c
    .line 316
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@f
    goto :goto_0

    #@10
    .line 310
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xd -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public processMessages()V
    .locals 4

    #@0
    .prologue
    .line 326
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "message$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    #@12
    .line 327
    .local v0, "message":Lcom/android/server/hdmi/HdmiCecMessage;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@14
    new-instance v3, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;

    #@16
    invoke-direct {v3, p0, v0}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@19
    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    #@1c
    goto :goto_0

    #@1d
    .line 334
    .end local v0    # "message":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->mBuffer:Ljava/util/List;

    #@1f
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@22
    .line 325
    return-void
.end method

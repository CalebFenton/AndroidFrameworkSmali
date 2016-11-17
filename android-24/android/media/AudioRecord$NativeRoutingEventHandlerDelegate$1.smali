.class Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

.field final synthetic val$record:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$record"    # Landroid/media/AudioRecord;
    .param p4, "val$listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    #@0
    .prologue
    .line 1539
    iput-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    #@2
    iput-object p3, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    #@4
    iput-object p4, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    #@6
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1542
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1543
    return-void

    #@5
    .line 1545
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@7
    packed-switch v0, :pswitch_data_0

    #@a
    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "Unknown native event type: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0}, Landroid/media/AudioRecord;->-wrap0(Ljava/lang/String;)V

    #@23
    .line 1541
    :cond_1
    :goto_0
    return-void

    #@24
    .line 1547
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 1548
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    #@2a
    iget-object v1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    #@2c
    invoke-interface {v0, v1}, Landroid/media/AudioRouting$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRouting;)V

    #@2f
    goto :goto_0

    #@30
    .line 1545
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

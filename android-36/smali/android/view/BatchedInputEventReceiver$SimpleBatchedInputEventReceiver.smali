.class public Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBatchedInputEventReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;
    }
.end annotation


# instance fields
.field protected blacklist mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# direct methods
.method public constructor blacklist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "choreographer"    # Landroid/view/Choreographer;
    .param p4, "listener"    # Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 158
    iput-object p4, p0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    .line 159
    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "handled":Z
    :try_start_1
    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    invoke-interface {v1, p1}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    .line 167
    .end local v0    # "handled":Z
    .local v1, "handled":Z
    invoke-virtual {p0, p1, v1}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    .end local v1    # "handled":Z
    .restart local v0    # "handled":Z
    :catchall_c
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 168
    throw v1
.end method

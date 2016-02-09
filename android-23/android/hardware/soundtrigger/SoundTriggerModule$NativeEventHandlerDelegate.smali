.class Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/hardware/soundtrigger/SoundTriggerModule;
    .param p2, "listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 129
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 133
    if-eqz p3, :cond_0

    #@8
    .line 134
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    .line 140
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    #@e
    .line 142
    new-instance v1, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;

    #@10
    invoke-direct {v1, p0, v0, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V

    #@13
    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@15
    .line 130
    :goto_1
    return-void

    #@16
    .line 136
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@19
    move-result-object v0

    #@1a
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1b
    .line 174
    :cond_1
    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@1d
    goto :goto_1
.end method


# virtual methods
.method handler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

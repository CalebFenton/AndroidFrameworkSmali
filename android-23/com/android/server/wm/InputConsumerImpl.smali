.class public final Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$InputConsumer;


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    #@0
    .prologue
    const-wide v8, 0x12a05f200L

    #@5
    const/4 v6, 0x1

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    .line 40
    const-string/jumbo v1, "input consumer"

    #@e
    .line 41
    .local v1, "name":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@10
    .line 43
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@13
    move-result-object v0

    #@14
    .line 44
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v4

    #@16
    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@18
    .line 45
    aget-object v2, v0, v6

    #@1a
    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    #@1c
    .line 46
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@1e
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@20
    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@22
    invoke-virtual {v2, v3, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    #@25
    .line 49
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    #@27
    .line 48
    invoke-interface {p3, v2, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    #@2d
    .line 51
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    #@2f
    invoke-direct {v2, v5}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@32
    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@34
    .line 52
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@36
    iput-object v1, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@38
    .line 53
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@3a
    iput-wide v8, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@3c
    .line 56
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    #@3e
    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@40
    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@43
    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@45
    .line 57
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@47
    iput-object v1, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@49
    .line 58
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@4b
    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@4d
    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@4f
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@51
    const/16 v3, 0x7e6

    #@53
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@55
    .line 60
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@57
    iget v2, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@59
    invoke-direct {p0, v2}, Lcom/android/server/wm/InputConsumerImpl;->getLayerLw(I)I

    #@5c
    move-result v2

    #@5d
    iput v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowLayer:I

    #@5f
    .line 61
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@61
    iget v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowLayer:I

    #@63
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@65
    .line 62
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@67
    iput v4, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@69
    .line 63
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6b
    iput-wide v8, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@6d
    .line 65
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6f
    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@71
    .line 66
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@73
    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@75
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@77
    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@79
    .line 68
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@7b
    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@7d
    .line 69
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@7f
    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@81
    .line 70
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@83
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@86
    move-result v3

    #@87
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@89
    .line 71
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@8b
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@8e
    move-result v3

    #@8f
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@91
    .line 72
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@93
    iput v4, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@95
    .line 73
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@97
    const/high16 v3, 0x3f800000    # 1.0f

    #@99
    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@9b
    .line 39
    return-void
.end method

.method private getLayerLw(I)I
    .locals 1
    .param p1, "windowType"    # I

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    #@4
    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    #@7
    move-result v0

    #@8
    mul-int/lit16 v0, v0, 0x2710

    #@a
    add-int/lit16 v0, v0, 0x3e8

    #@c
    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4
    monitor-enter v1

    #@5
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->removeInputConsumer()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    #@f
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    #@12
    .line 89
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@14
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@16
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@18
    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@1b
    .line 90
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    #@1d
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@20
    .line 91
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@22
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    :cond_0
    monitor-exit v1

    #@26
    .line 85
    return-void

    #@27
    .line 86
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method layout(II)V
    .locals 2
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@3
    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@5
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    #@8
    .line 78
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a
    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@c
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@e
    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@10
    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@12
    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@14
    .line 81
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@16
    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@18
    .line 76
    return-void
.end method

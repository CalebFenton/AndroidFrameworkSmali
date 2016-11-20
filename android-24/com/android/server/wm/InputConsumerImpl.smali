.class Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    const-wide v6, 0x12a05f200L

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    .line 33
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@d
    .line 35
    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    #@10
    move-result-object v0

    #@11
    .line 36
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v1, v0, v3

    #@13
    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@15
    .line 37
    if-eqz p3, :cond_0

    #@17
    .line 38
    aget-object v1, v0, v4

    #@19
    invoke-virtual {v1, p3}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    #@1c
    .line 39
    aget-object v1, v0, v4

    #@1e
    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    #@21
    .line 40
    iput-object p3, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    #@23
    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@25
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@27
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@29
    invoke-virtual {v1, v2, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    #@2c
    .line 46
    new-instance v1, Lcom/android/server/input/InputApplicationHandle;

    #@2e
    invoke-direct {v1, v5}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    #@31
    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@33
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@35
    iput-object p2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    #@37
    .line 48
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@39
    iput-wide v6, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    #@3b
    .line 51
    new-instance v1, Lcom/android/server/input/InputWindowHandle;

    #@3d
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    #@3f
    invoke-direct {v1, v2, v5, v3}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    #@42
    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@44
    .line 52
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@46
    iput-object p2, v1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    #@48
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@4a
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@4c
    iput-object v2, v1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    #@4e
    .line 54
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@50
    const/16 v2, 0x7e6

    #@52
    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@54
    .line 55
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@56
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@58
    iget v2, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    #@5a
    invoke-direct {p0, v2}, Lcom/android/server/wm/InputConsumerImpl;->getLayerLw(I)I

    #@5d
    move-result v2

    #@5e
    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->layer:I

    #@60
    .line 56
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@62
    iput v3, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    #@64
    .line 57
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@66
    iput-wide v6, v1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    #@68
    .line 59
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6a
    iput-boolean v4, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    #@6c
    .line 60
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@6e
    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    #@70
    .line 61
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@72
    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    #@74
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@76
    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    #@78
    .line 63
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@7a
    iput-boolean v3, v1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    #@7c
    .line 64
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@7e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@81
    move-result v2

    #@82
    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    #@84
    .line 65
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@86
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@89
    move-result v2

    #@8a
    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    #@8c
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@8e
    iput v3, v1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    #@90
    .line 67
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@92
    const/high16 v2, 0x3f800000    # 1.0f

    #@94
    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    #@96
    .line 32
    return-void

    #@97
    .line 42
    :cond_0
    aget-object v1, v0, v4

    #@99
    iput-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    #@9b
    goto :goto_0
.end method

.method private getLayerLw(I)I
    .locals 1
    .param p1, "windowType"    # I

    #@0
    .prologue
    .line 79
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
.method disposeChannelsLw()V
    .locals 2

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    #@4
    iget-object v1, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    #@9
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    #@b
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@e
    .line 87
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    #@10
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    #@13
    .line 84
    return-void
.end method

.method layout(II)V
    .locals 2
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@3
    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    #@5
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    #@8
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@a
    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    #@c
    .line 73
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@e
    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    #@10
    .line 74
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@12
    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    #@14
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    #@16
    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    #@18
    .line 70
    return-void
.end method

.class public abstract Landroid/media/tv/TvInputService;
.super Landroid/app/Service;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputService$Session;,
        Landroid/media/tv/TvInputService$HardwareSession;,
        Landroid/media/tv/TvInputService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.tv.TvInputService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.media.tv.input"

.field private static final TAG:Ljava/lang/String; = "TvInputService"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/tv/ITvInputServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceHandler:Landroid/os/Handler;

.field private mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService;->isPassthroughInput(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 99
    new-instance v0, Landroid/media/tv/TvInputService$ServiceHandler;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler;)V

    #@9
    iput-object v0, p0, Landroid/media/tv/TvInputService;->mServiceHandler:Landroid/os/Handler;

    #@b
    .line 101
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@d
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@10
    .line 100
    iput-object v0, p0, Landroid/media/tv/TvInputService;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@12
    .line 75
    return-void
.end method

.method public static isNavigationKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    #@0
    .prologue
    .line 1569
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 1584
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 1582
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 1569
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private isPassthroughInput(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    iget-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 234
    const-string/jumbo v1, "tv_input"

    #@7
    invoke-virtual {p0, v1}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/media/tv/TvInputManager;

    #@d
    iput-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@f
    .line 236
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    #@11
    invoke-virtual {v1, p1}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    #@14
    move-result-object v0

    #@15
    .line 237
    .local v0, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v0, :cond_1

    #@17
    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->isPassthroughInput()Z

    #@1a
    move-result v1

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_1
    const/4 v1, 0x0

    #@1d
    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 107
    new-instance v0, Landroid/media/tv/TvInputService$1;

    #@2
    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$1;-><init>(Landroid/media/tv/TvInputService;)V

    #@5
    return-object v0
.end method

.method public abstract onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;
.end method

.method public onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 187
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;
    .locals 1
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@0
    .prologue
    .line 229
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

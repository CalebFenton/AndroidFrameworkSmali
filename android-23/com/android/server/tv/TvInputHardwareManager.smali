.class Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$Connection;,
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;,
        Lcom/android/server/tv/TvInputHardwareManager$Listener;,
        Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;,
        Lcom/android/server/tv/TvInputHardwareManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/tv/TvInputHardwareManager$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentMaxIndex:I

.field private final mHal:Lcom/android/server/tv/TvInputHal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field private final mHdmiDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field private final mHdmiInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field private final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field private final mInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingHdmiDeviceEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 1
    .param p1, "port"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1([II)Z
    .locals 1
    .param p0, "array"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvInputHardwareManager;)F
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvInputHardwareManager;Z)I
    .locals 1
    .param p1, "connected"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 76
    const-class v0, Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@8
    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 80
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    #@a
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    #@c
    .line 81
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@13
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    #@1a
    .line 83
    new-instance v0, Ljava/util/LinkedList;

    #@1c
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    #@21
    .line 85
    new-instance v0, Landroid/util/SparseArray;

    #@23
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@26
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@28
    .line 87
    new-instance v0, Landroid/util/SparseArray;

    #@2a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@2d
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    #@2f
    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    #@31
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@34
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    #@36
    .line 92
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    #@38
    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;)V

    #@3b
    .line 91
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@3d
    .line 93
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    #@3f
    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;)V

    #@42
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@44
    .line 95
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    #@46
    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;)V

    #@49
    .line 94
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@4b
    .line 96
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$1;

    #@4d
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    #@50
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    #@52
    .line 102
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    #@54
    .line 103
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    #@56
    .line 106
    new-instance v0, Landroid/util/SparseBooleanArray;

    #@58
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    #@5b
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    #@5d
    .line 107
    new-instance v0, Ljava/util/LinkedList;

    #@5f
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@62
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    #@64
    .line 110
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    #@66
    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;)V

    #@69
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@6b
    .line 112
    new-instance v0, Ljava/lang/Object;

    #@6d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@70
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@72
    .line 115
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    #@74
    .line 116
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    #@76
    .line 117
    const-string/jumbo v0, "audio"

    #@79
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Landroid/media/AudioManager;

    #@7f
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    #@81
    .line 118
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    #@83
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    #@86
    .line 114
    return-void
.end method

.method private buildHardwareListLocked()V
    .locals 3

    #@0
    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    #@2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@5
    .line 163
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 164
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    #@10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@18
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f
    .line 163
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 161
    :cond_0
    return-void
.end method

.method private checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .locals 4
    .param p1, "connection"    # Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 253
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    #@4
    move-result-object v0

    #@5
    .line 254
    .local v0, "connectionCallingUid":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    .line 255
    .local v1, "connectionResolvedUserId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@b
    if-nez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v2

    #@e
    .line 256
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v3

    #@12
    if-ne v3, p2, :cond_0

    #@14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v3

    #@18
    if-ne v3, p3, :cond_0

    #@1a
    const/4 v2, 0x0

    #@1b
    goto :goto_0
.end method

.method private convertConnectedToState(Z)I
    .locals 1
    .param p1, "connected"    # Z

    #@0
    .prologue
    .line 260
    if-eqz p1, :cond_0

    #@2
    .line 261
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 263
    :cond_0
    const/4 v0, 0x2

    #@5
    return v0
.end method

.method private findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 418
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 419
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@11
    .line 420
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 421
    return v1

    #@20
    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 424
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_1
    const/4 v2, -0x1

    #@24
    return v2
.end method

.method private findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .locals 4
    .param p1, "port"    # I

    #@0
    .prologue
    .line 408
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "hardwareInfo$iterator":Ljava/util/Iterator;
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
    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    #@12
    .line 409
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@15
    move-result v2

    #@16
    const/16 v3, 0x9

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 410
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    #@1d
    move-result v2

    #@1e
    if-ne v2, p1, :cond_0

    #@20
    .line 411
    return-object v0

    #@21
    .line 414
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_1
    const/4 v2, 0x0

    #@22
    return-object v2
.end method

.method private getMediaStreamVolume()F
    .locals 2

    #@0
    .prologue
    .line 542
    iget v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    #@5
    int-to-float v1, v1

    #@6
    div-float/2addr v0, v1

    #@7
    return v0
.end method

.method private handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, -0x1

    #@2
    .line 504
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 505
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.media.VOLUME_CHANGED_ACTION"

    #@9
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 507
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@12
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@15
    move-result v4

    #@16
    .line 508
    .local v4, "streamType":I
    if-eq v4, v7, :cond_1

    #@18
    .line 509
    return-void

    #@19
    .line 505
    .end local v4    # "streamType":I
    :cond_0
    const-string/jumbo v5, "android.media.STREAM_MUTE_CHANGED_ACTION"

    #@1c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_5

    #@22
    .line 519
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@25
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@28
    move-result v4

    #@29
    .line 520
    .restart local v4    # "streamType":I
    if-eq v4, v7, :cond_3

    #@2b
    .line 521
    return-void

    #@2c
    .line 511
    :cond_1
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    #@2f
    const/4 v6, 0x0

    #@30
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@33
    move-result v3

    #@34
    .line 512
    .local v3, "index":I
    iget v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    #@36
    if-ne v3, v5, :cond_2

    #@38
    .line 513
    return-void

    #@39
    .line 515
    :cond_2
    iput v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    #@3b
    .line 531
    .end local v3    # "index":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@3d
    monitor-enter v6

    #@3e
    .line 532
    const/4 v2, 0x0

    #@3f
    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    #@44
    move-result v5

    #@45
    if-ge v2, v5, :cond_6

    #@47
    .line 533
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4c
    move-result-object v5

    #@4d
    check-cast v5, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@4f
    invoke-virtual {v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@52
    move-result-object v1

    #@53
    .line 534
    .local v1, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v1, :cond_4

    #@55
    .line 535
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 532
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 528
    .end local v1    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v2    # "i":I
    .end local v4    # "streamType":I
    :cond_5
    sget-object v5, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@5d
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v7, "Unrecognized intent: "

    #@65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 529
    return-void

    #@75
    .restart local v2    # "i":I
    .restart local v4    # "streamType":I
    :cond_6
    monitor-exit v6

    #@76
    .line 503
    return-void

    #@77
    .line 531
    :catchall_0
    move-exception v5

    #@78
    monitor-exit v6

    #@79
    throw v5
.end method

.method private static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 306
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 307
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 308
    return v0

    #@12
    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 311
    :cond_1
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method private static intArrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 315
    array-length v3, p0

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget v0, p0, v1

    #@7
    .line 316
    .local v0, "element":I
    if-ne v0, p1, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 315
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 318
    .end local v0    # "element":I
    :cond_1
    return v2
.end method

.method private processPendingHdmiDeviceEventsLocked()V
    .locals 5

    #@0
    .prologue
    .line 486
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 487
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/os/Message;

    #@12
    .line 488
    .local v3, "msg":Landroid/os/Message;
    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@16
    .line 490
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@19
    move-result v4

    #@1a
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    #@1d
    move-result-object v1

    #@1e
    .line 491
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-eqz v1, :cond_0

    #@20
    .line 492
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@26
    goto :goto_0

    #@27
    .line 485
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateVolume()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 499
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    #@3
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    #@9
    .line 500
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    #@b
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    #@11
    .line 498
    return-void
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    .locals 8
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 364
    if-nez p2, :cond_0

    #@3
    .line 365
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v2

    #@9
    .line 367
    :cond_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@b
    monitor-enter v7

    #@c
    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@14
    .line 369
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_1

    #@16
    .line 370
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@18
    new-instance v3, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v4, "Invalid deviceId : "

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v7

    #@30
    .line 371
    return-object v5

    #@31
    .line 373
    :cond_1
    :try_start_1
    invoke-direct {p0, v0, p4, p5}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_2

    #@37
    .line 375
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@39
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 377
    .local v1, "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :try_start_2
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    #@43
    move-result-object v2

    #@44
    const/4 v3, 0x0

    #@45
    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@48
    .line 382
    :try_start_3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v4

    #@4c
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v5

    #@50
    move-object v2, p2

    #@51
    move-object v3, p3

    #@52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@55
    .line 384
    .end local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@58
    move-result-object v2

    #@59
    monitor-exit v7

    #@5a
    return-object v2

    #@5b
    .line 378
    .restart local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catch_0
    move-exception v6

    #@5c
    .line 379
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5f
    monitor-exit v7

    #@60
    .line 380
    return-object v5

    #@61
    .line 367
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@62
    monitor-exit v7

    #@63
    throw v2
.end method

.method public addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 11
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 268
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v7

    #@5
    .line 269
    :try_start_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    check-cast v4, Ljava/lang/String;

    #@d
    .line 270
    .local v4, "oldInputId":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@f
    .line 271
    sget-object v8, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@11
    new-instance v9, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v10, "Trying to override previous registration: old = "

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v9

    #@1d
    .line 272
    iget-object v10, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    #@1f
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v10

    #@23
    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v9

    #@27
    .line 272
    const-string/jumbo v10, ":"

    #@2a
    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    .line 272
    const-string/jumbo v10, ", new = "

    #@35
    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    .line 273
    const-string/jumbo v10, ":"

    #@40
    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v9

    #@48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 275
    :cond_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@51
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@58
    .line 276
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    #@5a
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@5d
    move-result-object v9

    #@5e
    invoke-interface {v8, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 281
    const/4 v2, 0x0

    #@62
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    #@64
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    #@67
    move-result v8

    #@68
    if-ge v2, v8, :cond_3

    #@6a
    .line 283
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    #@6c
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@6f
    move-result v8

    #@70
    invoke-direct {p0, v8}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    #@73
    move-result-object v1

    #@74
    .line 284
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v1, :cond_2

    #@76
    .line 281
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@78
    goto :goto_0

    #@79
    .line 287
    :cond_2
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@7b
    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@7e
    move-result v9

    #@7f
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@82
    move-result-object v3

    #@83
    check-cast v3, Ljava/lang/String;

    #@85
    .line 288
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@87
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8e
    move-result v8

    #@8f
    if-eqz v8, :cond_1

    #@91
    .line 289
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@93
    .line 290
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    #@95
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@98
    move-result v6

    #@99
    invoke-direct {p0, v6}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    #@9c
    move-result v6

    #@9d
    .line 289
    const/4 v8, 0x1

    #@9e
    .line 290
    const/4 v9, 0x0

    #@9f
    .line 289
    invoke-virtual {v5, v8, v6, v9, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a6
    monitor-exit v7

    #@a7
    .line 292
    return-void

    #@a8
    .line 296
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@aa
    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ad
    move-result-object v0

    #@ae
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@b0
    .line 297
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-eqz v0, :cond_4

    #@b2
    .line 298
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@b4
    .line 299
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    #@b7
    move-result-object v9

    #@b8
    array-length v9, v9

    #@b9
    if-lez v9, :cond_5

    #@bb
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    #@be
    move-result v5

    #@bf
    .line 300
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@c2
    move-result-object v6

    #@c3
    .line 298
    const/4 v9, 0x1

    #@c4
    .line 299
    const/4 v10, 0x0

    #@c5
    .line 298
    invoke-virtual {v8, v9, v5, v10, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c8
    move-result-object v5

    #@c9
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cc
    :cond_4
    monitor-exit v7

    #@cd
    .line 267
    return-void

    #@ce
    :cond_5
    move v5, v6

    #@cf
    .line 299
    goto :goto_1

    #@d0
    .line 268
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "i":I
    .end local v4    # "oldInputId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@d1
    monitor-exit v7

    #@d2
    throw v5
.end method

.method public addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    #@3
    move-result v3

    #@4
    const/16 v4, 0x3ef

    #@6
    if-eq v3, v4, :cond_0

    #@8
    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v5, "info ("

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, ") has non-HDMI type."

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v3

    #@29
    .line 325
    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2b
    monitor-enter v4

    #@2c
    .line 326
    :try_start_0
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 327
    .local v1, "parentId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@32
    invoke-static {v3, v1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    #@35
    move-result v2

    #@36
    .line 328
    .local v2, "parentIndex":I
    if-gez v2, :cond_1

    #@38
    .line 329
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "info ("

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    const-string/jumbo v6, ") has invalid parentId."

    #@4d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 325
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "parentIndex":I
    :catchall_0
    move-exception v3

    #@5a
    monitor-exit v4

    #@5b
    throw v3

    #@5c
    .line 331
    .restart local v1    # "parentId":Ljava/lang/String;
    .restart local v2    # "parentIndex":I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    #@5e
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    check-cast v0, Ljava/lang/String;

    #@64
    .line 332
    .local v0, "oldInputId":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@66
    .line 333
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@68
    new-instance v5, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v6, "Trying to override previous registration: old = "

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    .line 334
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    #@76
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    move-result-object v6

    #@7a
    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    .line 334
    const-string/jumbo v6, ":"

    #@81
    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    .line 334
    const-string/jumbo v6, ", new = "

    #@8c
    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    .line 335
    const-string/jumbo v6, ":"

    #@97
    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v5

    #@9f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    .line 337
    :cond_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    #@a8
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@ab
    move-result-object v5

    #@ac
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@af
    .line 338
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    #@b1
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b8
    monitor-exit v4

    #@b9
    .line 321
    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 454
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v6

    #@4
    .line 455
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 456
    .local v1, "deviceId":I
    if-gez v1, :cond_0

    #@a
    .line 457
    sget-object v5, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@c
    new-instance v7, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v8, "Invalid inputId : "

    #@14
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v6

    #@24
    .line 458
    return v9

    #@25
    .line 460
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@2d
    .line 461
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@30
    move-result-object v2

    #@31
    .line 462
    .local v2, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v2, :cond_3

    #@33
    .line 464
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    #@36
    move-result-object v4

    #@37
    .line 465
    .local v4, "runnable":Ljava/lang/Runnable;
    if-eqz v4, :cond_1

    #@39
    .line 466
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    #@3c
    .line 467
    const/4 v5, 0x0

    #@3d
    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    #@40
    .line 470
    :cond_1
    invoke-static {v2, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-wrap0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    #@43
    move-result v3

    #@44
    .line 471
    .local v3, "result":Z
    if-eqz v3, :cond_2

    #@46
    .line 472
    new-instance v5, Lcom/android/server/tv/TvInputHardwareManager$2;

    #@48
    invoke-direct {v5, p0, v2, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    #@4b
    invoke-virtual {v0, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    :cond_2
    monitor-exit v6

    #@4f
    .line 479
    return v3

    #@50
    .end local v3    # "result":Z
    .end local v4    # "runnable":Ljava/lang/Runnable;
    :cond_3
    monitor-exit v6

    #@51
    .line 482
    return v9

    #@52
    .line 454
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "deviceId":I
    .end local v2    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catchall_0
    move-exception v5

    #@53
    monitor-exit v6

    #@54
    throw v5
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 432
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 433
    .local v1, "configsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v5

    #@9
    .line 434
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    #@c
    move-result v3

    #@d
    .line 435
    .local v3, "deviceId":I
    if-gez v3, :cond_0

    #@f
    .line 436
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "Invalid inputId : "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v5

    #@29
    .line 437
    return-object v1

    #@2a
    .line 439
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@2c
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@32
    .line 440
    .local v2, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    #@35
    move-result-object v6

    #@36
    array-length v7, v6

    #@37
    :goto_0
    if-ge v4, v7, :cond_2

    #@39
    aget-object v0, v6, v4

    #@3b
    .line 441
    .local v0, "config":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {v0}, Landroid/media/tv/TvStreamConfig;->getType()I

    #@3e
    move-result v8

    #@3f
    const/4 v9, 0x2

    #@40
    if-ne v8, v9, :cond_1

    #@42
    .line 442
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 440
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .end local v0    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_2
    monitor-exit v5

    #@49
    .line 446
    return-object v1

    #@4a
    .line 433
    .end local v2    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v3    # "deviceId":I
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit v5

    #@4c
    throw v4
.end method

.method public getHardwareList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 240
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 246
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 122
    const/16 v3, 0x1f4

    #@2
    if-ne p1, v3, :cond_0

    #@4
    .line 124
    const-string/jumbo v3, "hdmi_control"

    #@7
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a
    move-result-object v3

    #@b
    .line 123
    invoke-static {v3}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    #@e
    move-result-object v2

    #@f
    .line 125
    .local v2, "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    if-eqz v2, :cond_1

    #@11
    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    #@13
    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    #@16
    .line 128
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@18
    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    #@1b
    .line 130
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    #@1d
    .line 129
    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    #@20
    .line 131
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    #@22
    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    #@25
    move-result-object v4

    #@26
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 138
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    #@2b
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@2e
    .line 139
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    #@31
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@34
    .line 140
    const-string/jumbo v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    #@37
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@3a
    .line 141
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    #@3c
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    #@3e
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@41
    .line 142
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    #@44
    .line 121
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :cond_0
    return-void

    #@45
    .line 132
    .restart local v2    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    :catch_0
    move-exception v0

    #@46
    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@48
    const-string/jumbo v4, "Error registering listeners to HdmiControlService:"

    #@4b
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    goto :goto_0

    #@4f
    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@51
    const-string/jumbo v4, "HdmiControlService is not available"

    #@54
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_0
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .locals 6
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 149
    :try_start_0
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    #@8
    .line 150
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v0, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    #@b
    .line 151
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@d
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@10
    move-result v3

    #@11
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@14
    .line 152
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    #@17
    .line 153
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@19
    .line 154
    const/4 v3, 0x2

    #@1a
    const/4 v4, 0x0

    #@1b
    const/4 v5, 0x0

    #@1c
    .line 153
    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@23
    .line 155
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@26
    move-result v1

    #@27
    const/16 v3, 0x9

    #@29
    if-ne v1, v3, :cond_0

    #@2b
    .line 156
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingHdmiDeviceEventsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_0
    monitor-exit v2

    #@2f
    .line 147
    return-void

    #@30
    .line 148
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method public onDeviceUnavailable(I)V
    .locals 10
    .param p1, "deviceId"    # I

    #@0
    .prologue
    .line 170
    iget-object v9, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v9

    #@3
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@b
    .line 172
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    #@d
    .line 173
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "onDeviceUnavailable: Cannot find a connection with "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v9

    #@27
    .line 174
    return-void

    #@28
    .line 176
    :cond_0
    const/4 v1, 0x0

    #@29
    const/4 v2, 0x0

    #@2a
    const/4 v3, 0x0

    #@2b
    const/4 v4, 0x0

    #@2c
    const/4 v5, 0x0

    #@2d
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    #@30
    .line 177
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@32
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    #@35
    .line 178
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    #@38
    .line 179
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    #@3b
    move-result-object v7

    #@3c
    .line 180
    .local v7, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@3f
    move-result v1

    #@40
    const/16 v2, 0x9

    #@42
    if-ne v1, v2, :cond_2

    #@44
    .line 182
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    #@46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v8

    #@4a
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_2

    #@50
    .line 183
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@53
    move-result-object v6

    #@54
    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@56
    .line 184
    .local v6, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@59
    move-result v1

    #@5a
    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    #@5d
    move-result v2

    #@5e
    if-ne v1, v2, :cond_1

    #@60
    .line 185
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@62
    const/4 v2, 0x5

    #@63
    const/4 v3, 0x0

    #@64
    const/4 v4, 0x0

    #@65
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@6c
    .line 187
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    goto :goto_0

    #@70
    .line 170
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :catchall_0
    move-exception v1

    #@71
    monitor-exit v9

    #@72
    throw v1

    #@73
    .line 191
    .restart local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .restart local v7    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@75
    .line 192
    const/4 v2, 0x3

    #@76
    const/4 v3, 0x0

    #@77
    const/4 v4, 0x0

    #@78
    .line 191
    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7f
    monitor-exit v9

    #@80
    .line 169
    return-void
.end method

.method public onFirstFrameCaptured(II)V
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    #@0
    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@b
    .line 226
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    #@d
    .line 227
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "FirstFrameCaptured: Cannot find a connection with "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v3

    #@27
    .line 229
    return-void

    #@28
    .line 231
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    #@2b
    move-result-object v1

    #@2c
    .line 232
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    #@2e
    .line 233
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@31
    .line 234
    const/4 v2, 0x0

    #@32
    invoke-virtual {v0, v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    :cond_1
    monitor-exit v3

    #@36
    .line 223
    return-void

    #@37
    .line 224
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    #@38
    monitor-exit v3

    #@39
    throw v2
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V
    .locals 9
    .param p1, "deviceId"    # I
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 198
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v6

    #@5
    .line 199
    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@d
    .line 200
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_0

    #@f
    .line 201
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "StreamConfigurationChanged: Cannot find a connection with "

    #@19
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v6

    #@29
    .line 203
    return-void

    #@2a
    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    #@2d
    .line 206
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@2f
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    check-cast v3, Ljava/lang/String;

    #@35
    .line 207
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@37
    .line 208
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    #@39
    .line 209
    array-length v8, p2

    #@3a
    if-lez v8, :cond_3

    #@3c
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->convertConnectedToState(Z)I

    #@3f
    move-result v4

    #@40
    .line 208
    const/4 v5, 0x1

    #@41
    .line 209
    const/4 v8, 0x0

    #@42
    .line 208
    invoke-virtual {v7, v5, v4, v8, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@49
    .line 211
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    move-result-object v0

    #@4d
    .line 212
    .local v0, "callback":Landroid/media/tv/ITvInputHardwareCallback;
    if-eqz v0, :cond_2

    #@4f
    .line 214
    :try_start_2
    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    :cond_2
    :goto_1
    monitor-exit v6

    #@53
    .line 197
    return-void

    #@54
    .end local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    :cond_3
    move v4, v5

    #@55
    .line 209
    goto :goto_0

    #@56
    .line 215
    .restart local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    :catch_0
    move-exception v2

    #@57
    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@59
    const-string/jumbo v5, "error in onStreamConfigurationChanged"

    #@5c
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5f
    goto :goto_1

    #@60
    .line 198
    .end local v0    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "inputId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@61
    monitor-exit v6

    #@62
    throw v4
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .locals 7
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "callingUid"    # I
    .param p4, "resolvedUserId"    # I

    #@0
    .prologue
    .line 393
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@b
    .line 395
    .local v0, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v0, :cond_0

    #@d
    .line 396
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Invalid deviceId : "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v6

    #@27
    .line 397
    return-void

    #@28
    .line 399
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    #@2b
    move-result-object v1

    #@2c
    if-ne v1, p2, :cond_1

    #@2e
    .line 400
    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    move-result v1

    #@32
    .line 399
    if-eqz v1, :cond_2

    #@34
    :cond_1
    monitor-exit v6

    #@35
    .line 401
    return-void

    #@36
    .line 403
    :cond_2
    const/4 v1, 0x0

    #@37
    const/4 v2, 0x0

    #@38
    const/4 v3, 0x0

    #@39
    const/4 v4, 0x0

    #@3a
    const/4 v5, 0x0

    #@3b
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    monitor-exit v6

    #@3f
    .line 392
    return-void

    #@40
    .line 393
    .end local v0    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_0
    move-exception v1

    #@41
    monitor-exit v6

    #@42
    throw v1
.end method

.method public removeTvInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 343
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    #@5
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 345
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@a
    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    #@d
    move-result v1

    #@e
    .line 346
    .local v1, "hardwareIndex":I
    if-ltz v1, :cond_0

    #@10
    .line 347
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@15
    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    #@17
    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    .line 350
    .local v0, "deviceIndex":I
    if-ltz v0, :cond_1

    #@1d
    .line 351
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_1
    monitor-exit v3

    #@23
    .line 342
    return-void

    #@24
    .line 343
    .end local v0    # "deviceIndex":I
    .end local v1    # "hardwareIndex":I
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

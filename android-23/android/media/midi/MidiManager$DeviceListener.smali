.class Landroid/media/midi/MidiManager$DeviceListener;
.super Landroid/media/midi/IMidiDeviceListener$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListener"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/midi/MidiManager;


# direct methods
.method static synthetic -get0(Landroid/media/midi/MidiManager$DeviceListener;)Landroid/media/midi/MidiManager$DeviceCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;
    .param p2, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener;->this$0:Landroid/media/midi/MidiManager;

    #@2
    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceListener$Stub;-><init>()V

    #@5
    .line 73
    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    #@7
    .line 74
    iput-object p3, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@9
    .line 72
    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 79
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 80
    move-object v0, p1

    #@5
    .line 81
    .local v0, "deviceF":Landroid/media/midi/MidiDeviceInfo;
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@7
    new-instance v2, Landroid/media/midi/MidiManager$DeviceListener$1;

    #@9
    invoke-direct {v2, p0, v0}, Landroid/media/midi/MidiManager$DeviceListener$1;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 78
    .end local v0    # "deviceF":Landroid/media/midi/MidiDeviceInfo;
    :goto_0
    return-void

    #@10
    .line 87
    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    #@12
    invoke-virtual {v1, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    #@15
    goto :goto_0
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 3
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 93
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 94
    move-object v0, p1

    #@5
    .line 95
    .local v0, "deviceF":Landroid/media/midi/MidiDeviceInfo;
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@7
    new-instance v2, Landroid/media/midi/MidiManager$DeviceListener$2;

    #@9
    invoke-direct {v2, p0, v0}, Landroid/media/midi/MidiManager$DeviceListener$2;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 92
    .end local v0    # "deviceF":Landroid/media/midi/MidiDeviceInfo;
    :goto_0
    return-void

    #@10
    .line 101
    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    #@12
    invoke-virtual {v1, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    #@15
    goto :goto_0
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/media/midi/MidiDeviceStatus;

    #@0
    .prologue
    .line 107
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 108
    move-object v0, p1

    #@5
    .line 109
    .local v0, "statusF":Landroid/media/midi/MidiDeviceStatus;
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mHandler:Landroid/os/Handler;

    #@7
    new-instance v2, Landroid/media/midi/MidiManager$DeviceListener$3;

    #@9
    invoke-direct {v2, p0, v0}, Landroid/media/midi/MidiManager$DeviceListener$3;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V

    #@c
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    .line 106
    .end local v0    # "statusF":Landroid/media/midi/MidiDeviceStatus;
    :goto_0
    return-void

    #@10
    .line 115
    :cond_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    #@12
    invoke-virtual {v1, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    #@15
    goto :goto_0
.end method

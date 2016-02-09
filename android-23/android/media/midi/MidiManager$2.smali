.class Landroid/media/midi/MidiManager$2;
.super Landroid/media/midi/IMidiDeviceOpenCallback$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager;->openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/midi/MidiManager;

.field final synthetic val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

.field final synthetic val$handlerF:Landroid/os/Handler;

.field final synthetic val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/midi/MidiManager;
    .param p2, "val$deviceInfoF"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "val$listenerF"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p4, "val$handlerF"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    #@2
    iput-object p2, p0, Landroid/media/midi/MidiManager$2;->val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

    #@4
    iput-object p3, p0, Landroid/media/midi/MidiManager$2;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    #@6
    iput-object p4, p0, Landroid/media/midi/MidiManager$2;->val$handlerF:Landroid/os/Handler;

    #@8
    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/IMidiDeviceServer;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 251
    if-eqz p1, :cond_0

    #@2
    .line 252
    new-instance v0, Landroid/media/midi/MidiDevice;

    #@4
    iget-object v1, p0, Landroid/media/midi/MidiManager$2;->val$deviceInfoF:Landroid/media/midi/MidiDeviceInfo;

    #@6
    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    #@8
    invoke-static {v2}, Landroid/media/midi/MidiManager;->-get0(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;

    #@b
    move-result-object v3

    #@c
    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    #@e
    invoke-static {v2}, Landroid/media/midi/MidiManager;->-get1(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;

    #@11
    move-result-object v4

    #@12
    move-object v2, p1

    #@13
    move-object v5, p2

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/media/midi/MidiDevice;-><init>(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/IMidiManager;Landroid/os/IBinder;Landroid/os/IBinder;)V

    #@17
    .line 256
    :goto_0
    iget-object v1, p0, Landroid/media/midi/MidiManager$2;->this$0:Landroid/media/midi/MidiManager;

    #@19
    iget-object v2, p0, Landroid/media/midi/MidiManager$2;->val$listenerF:Landroid/media/midi/MidiManager$OnDeviceOpenedListener;

    #@1b
    iget-object v3, p0, Landroid/media/midi/MidiManager$2;->val$handlerF:Landroid/os/Handler;

    #@1d
    invoke-static {v1, v0, v2, v3}, Landroid/media/midi/MidiManager;->-wrap0(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    #@20
    .line 249
    return-void

    #@21
    .line 254
    :cond_0
    const/4 v0, 0x0

    #@22
    .local v0, "device":Landroid/media/midi/MidiDevice;
    goto :goto_0
.end method

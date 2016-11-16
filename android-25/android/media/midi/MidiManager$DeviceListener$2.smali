.class Landroid/media/midi/MidiManager$DeviceListener$2;
.super Ljava/lang/Object;
.source "MidiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/midi/MidiManager$DeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/midi/MidiManager$DeviceListener;

.field final synthetic val$deviceF:Landroid/media/midi/MidiDeviceInfo;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/midi/MidiManager$DeviceListener;
    .param p2, "val$deviceF"    # Landroid/media/midi/MidiDeviceInfo;

    #@0
    .prologue
    .line 95
    iput-object p1, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->this$1:Landroid/media/midi/MidiManager$DeviceListener;

    #@2
    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->val$deviceF:Landroid/media/midi/MidiDeviceInfo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->this$1:Landroid/media/midi/MidiManager$DeviceListener;

    #@2
    invoke-static {v0}, Landroid/media/midi/MidiManager$DeviceListener;->-get0(Landroid/media/midi/MidiManager$DeviceListener;)Landroid/media/midi/MidiManager$DeviceCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/midi/MidiManager$DeviceListener$2;->val$deviceF:Landroid/media/midi/MidiDeviceInfo;

    #@8
    invoke-virtual {v0, v1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    #@b
    .line 96
    return-void
.end method

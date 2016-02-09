.class final Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;
.super Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiSystemAudioModeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    .line 1180
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public onStatusChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1184
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    monitor-enter v3

    #@7
    .line 1185
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@a
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get2(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_1

    #@14
    .line 1186
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@16
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->-get2(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    #@20
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    #@23
    move-result-object v1

    #@24
    .line 1187
    .local v1, "impl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v1, :cond_0

    #@26
    .line 1188
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-wrap2(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v1    # "impl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_1
    monitor-exit v3

    #@2d
    .line 1183
    return-void

    #@2e
    .line 1184
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.class Landroid/media/tv/TvInputManager$3;
.super Landroid/media/tv/ITvInputHardwareCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager;

.field final synthetic val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager;Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;
    .param p2, "val$callback"    # Landroid/media/tv/TvInputManager$HardwareCallback;

    #@0
    .prologue
    .line 1248
    iput-object p1, p0, Landroid/media/tv/TvInputManager$3;->this$0:Landroid/media/tv/TvInputManager;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputManager$3;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    #@4
    invoke-direct {p0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onReleased()V
    .locals 1

    #@0
    .prologue
    .line 1251
    iget-object v0, p0, Landroid/media/tv/TvInputManager$3;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    #@2
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$HardwareCallback;->onReleased()V

    #@5
    .line 1250
    return-void
.end method

.method public onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .locals 1
    .param p1, "configs"    # [Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    .line 1256
    iget-object v0, p0, Landroid/media/tv/TvInputManager$3;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    #@2
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$HardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V

    #@5
    .line 1255
    return-void
.end method

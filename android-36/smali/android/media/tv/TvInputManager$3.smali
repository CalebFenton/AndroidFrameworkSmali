.class Landroid/media/tv/TvInputManager$3;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/tv/TvInputManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 2778
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2779
    return-void
.end method

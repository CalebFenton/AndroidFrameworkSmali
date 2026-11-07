.class public final synthetic Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

.field public final synthetic blacklist f$1:[Landroid/media/tv/TvStreamConfig;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$1:[Landroid/media/tv/TvStreamConfig;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    iget-object v1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$1:[Landroid/media/tv/TvStreamConfig;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputManager$4;->lambda$onStreamConfigChanged$1(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V

    return-void
.end method

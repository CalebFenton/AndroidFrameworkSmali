.class public final synthetic Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/TvInputManager$HardwareCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$4;->lambda$onReleased$0(Landroid/media/tv/TvInputManager$HardwareCallback;)V

    return-void
.end method

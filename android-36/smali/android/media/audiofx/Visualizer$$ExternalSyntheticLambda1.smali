.class public final synthetic Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/audiofx/Visualizer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/audiofx/Visualizer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;->f$0:Landroid/media/audiofx/Visualizer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/audiofx/Visualizer$$ExternalSyntheticLambda1;->f$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v0}, Landroid/media/audiofx/Visualizer;->lambda$postEventFromNative$1(Landroid/media/audiofx/Visualizer;)V

    return-void
.end method

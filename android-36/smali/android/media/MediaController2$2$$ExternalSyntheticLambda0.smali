.class public final synthetic Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaController2$2;

.field public final synthetic blacklist f$1:Landroid/media/Session2Command;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaController2$2;Landroid/media/Session2Command;ILandroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaController2$2;

    iput-object p2, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$1:Landroid/media/Session2Command;

    iput p3, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaController2$2;

    iget-object v1, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$1:Landroid/media/Session2Command;

    iget v2, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Landroid/media/MediaController2$2$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Landroid/media/MediaController2$2;->$r8$lambda$4l8JXV1IgDgj7ZdvQvyK4fHCuOg(Landroid/media/MediaController2$2;Landroid/media/Session2Command;ILandroid/os/Bundle;)V

    return-void
.end method

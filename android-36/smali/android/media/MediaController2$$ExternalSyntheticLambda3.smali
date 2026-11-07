.class public final synthetic Landroid/media/MediaController2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaController2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/ResultReceiver;

.field public final synthetic blacklist f$3:Landroid/media/Session2Command;

.field public final synthetic blacklist f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaController2;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$0:Landroid/media/MediaController2;

    iput p2, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$2:Landroid/os/ResultReceiver;

    iput-object p4, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$3:Landroid/media/Session2Command;

    iput-object p5, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$0:Landroid/media/MediaController2;

    iget v1, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$2:Landroid/os/ResultReceiver;

    iget-object v3, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$3:Landroid/media/Session2Command;

    iget-object p0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda3;->f$4:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/media/MediaController2;->$r8$lambda$cSyt-3H3zyQyiQCyxu--BW9jGnY(Landroid/media/MediaController2;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V

    return-void
.end method

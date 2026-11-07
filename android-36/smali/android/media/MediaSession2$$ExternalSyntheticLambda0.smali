.class public final synthetic Landroid/media/MediaSession2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaSession2;

.field public final synthetic blacklist f$1:Landroid/media/MediaSession2$ControllerInfo;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/os/ResultReceiver;

.field public final synthetic blacklist f$4:Landroid/media/Session2Command;

.field public final synthetic blacklist f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaSession2;

    iput-object p2, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    iput p3, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$3:Landroid/os/ResultReceiver;

    iput-object p5, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$4:Landroid/media/Session2Command;

    iput-object p6, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaSession2;

    iget-object v1, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    iget v2, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$3:Landroid/os/ResultReceiver;

    iget-object v4, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$4:Landroid/media/Session2Command;

    iget-object v5, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda0;->f$5:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Landroid/media/MediaSession2;->$r8$lambda$EQDm50HFWbl_MktRxK0DNCyceWo(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;ILandroid/os/ResultReceiver;Landroid/media/Session2Command;Landroid/os/Bundle;)V

    return-void
.end method

.class public final synthetic Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaSession2$1;

.field public final synthetic blacklist f$1:Landroid/media/MediaSession2$ControllerInfo;

.field public final synthetic blacklist f$2:Landroid/media/Session2Command;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaSession2$1;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;ILandroid/os/Bundle;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaSession2$1;

    iput-object p2, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$2:Landroid/media/Session2Command;

    iput p4, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaSession2$1;

    iget-object v1, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    iget-object v2, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$2:Landroid/media/Session2Command;

    iget v3, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$3:I

    iget-object p0, p0, Landroid/media/MediaSession2$1$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/media/MediaSession2$1;->$r8$lambda$Wpa-gkFRysATiJq-GygAhA5LAdc(Landroid/media/MediaSession2$1;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Session2Command;ILandroid/os/Bundle;)V

    return-void
.end method

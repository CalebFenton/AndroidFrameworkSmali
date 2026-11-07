.class public final synthetic Landroid/media/MediaSession2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaSession2;

.field public final synthetic blacklist f$1:Landroid/media/MediaSession2$ControllerInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaSession2;

    iput-object p2, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda2;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaSession2;

    iget-object p0, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda2;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    invoke-static {v0, p0}, Landroid/media/MediaSession2;->$r8$lambda$gFFQN2dhFh9EEuNlzHSW47eTnhM(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;)V

    return-void
.end method

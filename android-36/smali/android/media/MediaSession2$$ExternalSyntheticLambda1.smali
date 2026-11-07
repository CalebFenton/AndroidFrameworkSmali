.class public final synthetic Landroid/media/MediaSession2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaSession2;

.field public final synthetic blacklist f$1:Landroid/media/MediaSession2$ControllerInfo;

.field public final synthetic blacklist f$2:Landroid/media/Controller2Link;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Controller2Link;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaSession2;

    iput-object p2, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    iput-object p3, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;->f$2:Landroid/media/Controller2Link;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaSession2;

    iget-object v1, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaSession2$ControllerInfo;

    iget-object p0, p0, Landroid/media/MediaSession2$$ExternalSyntheticLambda1;->f$2:Landroid/media/Controller2Link;

    invoke-static {v0, v1, p0}, Landroid/media/MediaSession2;->$r8$lambda$HKPfe_va10vvTZjOE8F_tsaK6rU(Landroid/media/MediaSession2;Landroid/media/MediaSession2$ControllerInfo;Landroid/media/Controller2Link;)V

    return-void
.end method

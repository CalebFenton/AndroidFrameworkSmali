.class public final synthetic Landroid/media/MediaController2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaController2;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaController2;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaController2;

    iput-boolean p2, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda1;->f$0:Landroid/media/MediaController2;

    iget-boolean p0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Landroid/media/MediaController2;->$r8$lambda$KaI5TfbHWsYHHwra12sXX6NN-lI(Landroid/media/MediaController2;Z)V

    return-void
.end method

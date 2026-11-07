.class public final synthetic Landroid/media/MediaController2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaController2;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaController2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaController2;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .registers 1

    .line 0
    iget-object p0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaController2;

    invoke-static {p0}, Landroid/media/MediaController2;->$r8$lambda$Gz1M_daCrW0yd8QCzkxMD354vFU(Landroid/media/MediaController2;)V

    return-void
.end method

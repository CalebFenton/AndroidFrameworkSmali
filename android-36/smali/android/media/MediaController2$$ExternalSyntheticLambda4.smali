.class public final synthetic Landroid/media/MediaController2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaController2;

.field public final synthetic blacklist f$1:Landroid/media/Session2CommandGroup;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda4;->f$0:Landroid/media/MediaController2;

    iput-object p2, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda4;->f$1:Landroid/media/Session2CommandGroup;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda4;->f$0:Landroid/media/MediaController2;

    iget-object p0, p0, Landroid/media/MediaController2$$ExternalSyntheticLambda4;->f$1:Landroid/media/Session2CommandGroup;

    invoke-static {v0, p0}, Landroid/media/MediaController2;->$r8$lambda$g-bSEHvhTDfYKta0BRzWXO45XC4(Landroid/media/MediaController2;Landroid/media/Session2CommandGroup;)V

    return-void
.end method

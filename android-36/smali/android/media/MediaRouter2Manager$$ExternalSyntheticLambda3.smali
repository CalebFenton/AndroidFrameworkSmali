.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    invoke-static {v0}, Landroid/media/MediaRouter2Manager;->lambda$notifyRoutesUpdated$3(Landroid/media/MediaRouter2Manager$CallbackRecord;)V

    return-void
.end method

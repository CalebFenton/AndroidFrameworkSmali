.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput p2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget v1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;->f$1:I

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Manager;->lambda$notifyRequestFailed$6(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V

    return-void
.end method

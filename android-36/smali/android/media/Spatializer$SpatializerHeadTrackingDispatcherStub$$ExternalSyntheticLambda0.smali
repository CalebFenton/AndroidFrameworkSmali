.class public final synthetic Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

    iput p2, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

    iget v1, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;

    invoke-static {v0, v1, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->$r8$lambda$4mNT4MSpnitrsp_2PggVKyWhMYA(Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;ILandroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V

    return-void
.end method

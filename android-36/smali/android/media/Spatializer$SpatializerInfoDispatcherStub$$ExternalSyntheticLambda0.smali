.class public final synthetic Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    iput-boolean p2, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    iget-boolean v1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    invoke-static {v0, v1, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->$r8$lambda$HugCpuxBiTKWS1Loy0WOEiHqhJA(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

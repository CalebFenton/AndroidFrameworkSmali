.class public final synthetic Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Integer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/camera2/CameraCharacteristics$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->lambda$getAvailableSessionCharacteristicsKeys$0(Ljava/lang/Integer;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

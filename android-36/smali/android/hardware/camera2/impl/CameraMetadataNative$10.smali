.class Landroid/hardware/camera2/impl/CameraMetadataNative$10;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/hardware/camera2/impl/GetCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 4
    .param p1, "metadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 722
    .local p2, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->-$$Nest$mgetMandatoryMaximumResolutionStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

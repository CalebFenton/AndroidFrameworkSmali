.class Landroid/hardware/camera2/impl/CameraMetadataNative$36;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/hardware/camera2/impl/SetCommand;


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

    .line 2068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V
    .registers 3
    .param p1, "metadata"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            "TT;)V"
        }
    .end annotation

    .line 2071
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->-$$Nest$msetAWBRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z

    .line 2072
    return-void
.end method

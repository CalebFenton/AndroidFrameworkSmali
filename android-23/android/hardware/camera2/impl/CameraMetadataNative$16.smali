.class final Landroid/hardware/camera2/impl/CameraMetadataNative$16;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/hardware/camera2/impl/SetCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraMetadataNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V
    .locals 0
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

    #@0
    .prologue
    .line 972
    .local p2, "value":Ljava/lang/Object;, "TT;"
    check-cast p2, [Landroid/graphics/Rect;

    #@2
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->-wrap7(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z

    #@5
    .line 971
    return-void
.end method

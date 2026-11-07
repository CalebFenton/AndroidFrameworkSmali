.class abstract Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
.super Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.source "VirtualTouchDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualTouchDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
        "TT;>;>",
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->mWidth:I

    return p0
.end method

.method constructor blacklist <init>(II)V
    .registers 6
    .param p1, "touchDeviceWidth"    # I
    .param p2, "touchDeviceHeight"    # I

    .line 92
    .local p0, "this":Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;, "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<TT;>;"
    invoke-direct {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;-><init>()V

    .line 93
    if-lez p2, :cond_c

    if-lez p1, :cond_c

    .line 99
    iput p2, p0, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->mHeight:I

    .line 100
    iput p1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->mWidth:I

    .line 101
    return-void

    .line 94
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a virtual touch-based device, dimensions must be positive. Got: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

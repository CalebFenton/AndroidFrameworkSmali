.class abstract Landroid/hardware/input/VirtualTouchDeviceConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualTouchDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "+",
            "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 36
    .local p1, "builder":Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;, "Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<+Landroid/hardware/input/VirtualTouchDeviceConfig$Builder<*>;>;"
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    .line 37
    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmWidth(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    .line 38
    invoke-static {p1}, Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;->-$$Nest$fgetmHeight(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    .line 39
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    .line 45
    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .registers 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 54
    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 49
    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    return v0
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/hardware/input/VirtualTouchDeviceConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method

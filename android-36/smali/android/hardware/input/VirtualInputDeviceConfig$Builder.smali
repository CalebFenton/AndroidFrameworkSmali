.class public abstract Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualInputDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualInputDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mAssociatedDisplayId:I

.field private blacklist mInputDeviceName:Ljava/lang/String;

.field private blacklist mProductId:I

.field private blacklist mVendorId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAssociatedDisplayId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mAssociatedDisplayId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputDeviceName(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mInputDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProductId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mProductId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorId(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mVendorId:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 150
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mAssociatedDisplayId:I

    return-void
.end method


# virtual methods
.method blacklist self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 211
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    return-object p0
.end method

.method public whitelist setAssociatedDisplayId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 188
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mAssociatedDisplayId:I

    .line 189
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setInputDeviceName(Ljava/lang/String;)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 203
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mInputDeviceName:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setProductId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "productId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 172
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mProductId:I

    .line 173
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setVendorId(I)Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
    .registers 3
    .param p1, "vendorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/hardware/input/VirtualInputDeviceConfig$Builder;, "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<TT;>;"
    iput p1, p0, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->mVendorId:I

    .line 163
    invoke-virtual {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;->self()Landroid/hardware/input/VirtualInputDeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

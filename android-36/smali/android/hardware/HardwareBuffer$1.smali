.class Landroid/hardware/HardwareBuffer$1;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/HardwareBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/HardwareBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 447
    if-eqz p1, :cond_1b

    .line 450
    invoke-static {p1}, Landroid/hardware/HardwareBuffer;->-$$Nest$smnReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 451
    .local v0, "nativeObject":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    .line 452
    new-instance v2, Landroid/hardware/HardwareBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/hardware/HardwareBuffer;-><init>(JLandroid/hardware/HardwareBuffer-IA;)V

    return-object v2

    .line 454
    :cond_13
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v3, "Failed to read hardware buffer"

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 448
    .end local v0    # "nativeObject":J
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null passed to createFromParcel"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/HardwareBuffer;
    .registers 3
    .param p1, "size"    # I

    .line 458
    new-array v0, p1, [Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Landroid/hardware/HardwareBuffer$1;->newArray(I)[Landroid/hardware/HardwareBuffer;

    move-result-object p1

    return-object p1
.end method

.class Landroid/graphics/Bitmap$1;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 2360
    invoke-static {p1}, Landroid/graphics/Bitmap;->-$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2361
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_18

    .line 2364
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2365
    sget-object v1, Landroid/graphics/Gainmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Gainmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    .line 2367
    :cond_17
    return-object v0

    .line 2362
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to unparcel Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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

    .line 2352
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "size"    # I

    .line 2370
    new-array v0, p1, [Landroid/graphics/Bitmap;

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

    .line 2352
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->newArray(I)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

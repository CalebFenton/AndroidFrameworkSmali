.class Landroid/graphics/Gainmap$1;
.super Ljava/lang/Object;
.source "Gainmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Gainmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/Gainmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Gainmap;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 417
    new-instance v0, Landroid/graphics/Gainmap;

    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 419
    .local v0, "gm":Landroid/graphics/Gainmap;
    iget-wide v1, v0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, p1}, Landroid/graphics/Gainmap;->-$$Nest$smnReadGainmapFromParcel(JLandroid/os/Parcel;)V

    .line 420
    return-object v0
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

    .line 409
    invoke-virtual {p0, p1}, Landroid/graphics/Gainmap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Gainmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/Gainmap;
    .registers 3
    .param p1, "size"    # I

    .line 424
    new-array v0, p1, [Landroid/graphics/Gainmap;

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

    .line 409
    invoke-virtual {p0, p1}, Landroid/graphics/Gainmap$1;->newArray(I)[Landroid/graphics/Gainmap;

    move-result-object p1

    return-object p1
.end method

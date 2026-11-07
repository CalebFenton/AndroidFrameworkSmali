.class Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 400
    invoke-static {v0}, Landroid/view/PointerIcon;->-$$Nest$smgetSystemIcon(I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    .line 402
    :cond_c
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 403
    invoke-static {v1, v2, v3}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v1

    .line 407
    .local v1, "icon":Landroid/view/PointerIcon;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->-$$Nest$fputmDrawNativeDropShadow(Landroid/view/PointerIcon;Z)V

    .line 408
    return-object v1
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

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/PointerIcon;
    .registers 3
    .param p1, "size"    # I

    .line 413
    new-array v0, p1, [Landroid/view/PointerIcon;

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

    .line 395
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

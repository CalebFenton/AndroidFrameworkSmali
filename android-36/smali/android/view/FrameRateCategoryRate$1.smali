.class Landroid/view/FrameRateCategoryRate$1;
.super Ljava/lang/Object;
.source "FrameRateCategoryRate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FrameRateCategoryRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/FrameRateCategoryRate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/FrameRateCategoryRate;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    new-instance v0, Landroid/view/FrameRateCategoryRate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/FrameRateCategoryRate;-><init>(FF)V

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

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/FrameRateCategoryRate$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/FrameRateCategoryRate;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/FrameRateCategoryRate;
    .registers 3
    .param p1, "size"    # I

    .line 110
    new-array v0, p1, [Landroid/view/FrameRateCategoryRate;

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

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/FrameRateCategoryRate$1;->newArray(I)[Landroid/view/FrameRateCategoryRate;

    move-result-object p1

    return-object p1
.end method

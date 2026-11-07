.class Landroid/graphics/Region$1;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Region;
    .registers 6
    .param p1, "p"    # Landroid/os/Parcel;

    .line 359
    invoke-static {p1}, Landroid/graphics/Region;->-$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 360
    .local v0, "ni":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 363
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    return-object v2

    .line 361
    :cond_10
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
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

    .line 351
    invoke-virtual {p0, p1}, Landroid/graphics/Region$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Region;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/Region;
    .registers 3
    .param p1, "size"    # I

    .line 367
    new-array v0, p1, [Landroid/graphics/Region;

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

    .line 351
    invoke-virtual {p0, p1}, Landroid/graphics/Region$1;->newArray(I)[Landroid/graphics/Region;

    move-result-object p1

    return-object p1
.end method

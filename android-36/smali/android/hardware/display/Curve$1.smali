.class Landroid/hardware/display/Curve$1;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/Curve;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/Curve;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 43
    .local v0, "x":[F
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 44
    .local v1, "y":[F
    new-instance v2, Landroid/hardware/display/Curve;

    invoke-direct {v2, v0, v1}, Landroid/hardware/display/Curve;-><init>([F[F)V

    return-object v2
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

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/display/Curve$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/Curve;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/display/Curve;
    .registers 3
    .param p1, "size"    # I

    .line 48
    new-array v0, p1, [Landroid/hardware/display/Curve;

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

    .line 40
    invoke-virtual {p0, p1}, Landroid/hardware/display/Curve$1;->newArray(I)[Landroid/hardware/display/Curve;

    move-result-object p1

    return-object p1
.end method

.class Landroid/graphics/PointF$1;
.super Ljava/lang/Object;
.source "PointF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PointF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 153
    .local v0, "r":Landroid/graphics/PointF;
    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->readFromParcel(Landroid/os/Parcel;)V

    .line 154
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

    .line 146
    invoke-virtual {p0, p1}, Landroid/graphics/PointF$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/PointF;
    .registers 3
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [Landroid/graphics/PointF;

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

    .line 146
    invoke-virtual {p0, p1}, Landroid/graphics/PointF$1;->newArray(I)[Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

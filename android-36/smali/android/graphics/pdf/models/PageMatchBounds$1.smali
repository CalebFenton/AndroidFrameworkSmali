.class Landroid/graphics/pdf/models/PageMatchBounds$1;
.super Ljava/lang/Object;
.source "PageMatchBounds.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/models/PageMatchBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/pdf/models/PageMatchBounds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/pdf/models/PageMatchBounds;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Landroid/graphics/pdf/models/PageMatchBounds;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/pdf/models/PageMatchBounds;-><init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/PageMatchBounds-IA;)V

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

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/models/PageMatchBounds$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/pdf/models/PageMatchBounds;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/pdf/models/PageMatchBounds;
    .registers 3
    .param p1, "size"    # I

    .line 43
    new-array v0, p1, [Landroid/graphics/pdf/models/PageMatchBounds;

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

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/models/PageMatchBounds$1;->newArray(I)[Landroid/graphics/pdf/models/PageMatchBounds;

    move-result-object p1

    return-object p1
.end method

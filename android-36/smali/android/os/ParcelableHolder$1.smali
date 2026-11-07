.class Landroid/os/ParcelableHolder$1;
.super Ljava/lang/Object;
.source "ParcelableHolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelableHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ParcelableHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableHolder;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 110
    new-instance v0, Landroid/os/ParcelableHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ParcelableHolder;-><init>(Landroid/os/ParcelableHolder-IA;)V

    .line 111
    .local v0, "parcelable":Landroid/os/ParcelableHolder;
    invoke-virtual {v0, p1}, Landroid/os/ParcelableHolder;->readFromParcel(Landroid/os/Parcel;)V

    .line 112
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

    .line 106
    invoke-virtual {p0, p1}, Landroid/os/ParcelableHolder$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableHolder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ParcelableHolder;
    .registers 3
    .param p1, "size"    # I

    .line 118
    new-array v0, p1, [Landroid/os/ParcelableHolder;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/os/ParcelableHolder$1;->newArray(I)[Landroid/os/ParcelableHolder;

    move-result-object p1

    return-object p1
.end method

.class Landroid/os/ParcelableParcel$1;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelableParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/os/ParcelableParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableParcel;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    new-instance v0, Landroid/os/ParcelableParcel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/ParcelableParcel;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/ParcelableParcel;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 79
    new-instance v0, Landroid/os/ParcelableParcel;

    invoke-direct {v0, p1, p2}, Landroid/os/ParcelableParcel;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/ParcelableParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableParcel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelableParcel$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/ParcelableParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/ParcelableParcel;
    .registers 3
    .param p1, "size"    # I

    .line 83
    new-array v0, p1, [Landroid/os/ParcelableParcel;

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

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/ParcelableParcel$1;->newArray(I)[Landroid/os/ParcelableParcel;

    move-result-object p1

    return-object p1
.end method

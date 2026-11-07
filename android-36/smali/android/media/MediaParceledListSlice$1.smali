.class Landroid/media/MediaParceledListSlice$1;
.super Ljava/lang/Object;
.source "MediaParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/media/MediaParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaParceledListSlice;
    .registers 3

    .line 94
    new-instance p0, Landroid/media/MediaParceledListSlice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/media/MediaParceledListSlice-IA;)V

    return-object p0
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/media/MediaParceledListSlice;
    .registers 4

    .line 99
    new-instance p0, Landroid/media/MediaParceledListSlice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/media/MediaParceledListSlice-IA;)V

    return-object p0
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

    .line 92
    invoke-virtual {p0, p1}, Landroid/media/MediaParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaParceledListSlice;

    move-result-object p0

    return-object p0
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

    .line 92
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/media/MediaParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/MediaParceledListSlice;
    .registers 2

    .line 104
    new-array p0, p1, [Landroid/media/MediaParceledListSlice;

    return-object p0
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

    .line 92
    invoke-virtual {p0, p1}, Landroid/media/MediaParceledListSlice$1;->newArray(I)[Landroid/media/MediaParceledListSlice;

    move-result-object p0

    return-object p0
.end method

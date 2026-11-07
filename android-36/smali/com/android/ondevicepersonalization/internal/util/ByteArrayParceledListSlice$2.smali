.class Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$2;
.super Ljava/lang/Object;
.source "ByteArrayParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice-IA;)V

    return-object v0
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 61
    new-instance v0, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice-IA;)V

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

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$2;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

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

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;
    .registers 3
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

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

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice$2;->newArray(I)[Lcom/android/ondevicepersonalization/internal/util/ByteArrayParceledListSlice;

    move-result-object p1

    return-object p1
.end method

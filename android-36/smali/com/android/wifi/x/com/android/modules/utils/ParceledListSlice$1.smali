.class Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice$1;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice-IA;)V

    return-object v0
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 79
    new-instance v0, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice-IA;)V

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

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

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

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;
    .registers 3
    .param p1, "size"    # I

    .line 84
    new-array v0, p1, [Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

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

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice$1;->newArray(I)[Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

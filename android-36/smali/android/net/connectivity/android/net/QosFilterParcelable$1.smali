.class Landroid/net/connectivity/android/net/QosFilterParcelable$1;
.super Ljava/lang/Object;
.source "QosFilterParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/QosFilterParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/connectivity/android/net/QosFilterParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/QosFilterParcelable;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    new-instance v0, Landroid/net/connectivity/android/net/QosFilterParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/connectivity/android/net/QosFilterParcelable;-><init>(Landroid/os/Parcel;Landroid/net/connectivity/android/net/QosFilterParcelable-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/QosFilterParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/QosFilterParcelable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/connectivity/android/net/QosFilterParcelable;
    .registers 3
    .param p1, "size"    # I

    .line 93
    new-array v0, p1, [Landroid/net/connectivity/android/net/QosFilterParcelable;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/QosFilterParcelable$1;->newArray(I)[Landroid/net/connectivity/android/net/QosFilterParcelable;

    move-result-object p1

    return-object p1
.end method

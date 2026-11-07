.class Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "ThreadNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 151
    .local v0, "extendedPanId":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 153
    .local v1, "activeTimestampBytes":[B
    if-eqz v1, :cond_f

    .line 154
    invoke-static {v1}, Landroid/net/thread/OperationalDatasetTimestamp;->fromTlvValue([B)Landroid/net/thread/OperationalDatasetTimestamp;

    move-result-object v2

    goto :goto_10

    .line 155
    :cond_f
    const/4 v2, 0x0

    :goto_10
    nop

    .line 156
    .local v2, "activeTimestamp":Landroid/net/thread/OperationalDatasetTimestamp;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 158
    .local v3, "routerEligibleForLeader":Z
    new-instance v4, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;

    invoke-direct {v4, v0}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;-><init>([B)V

    .line 159
    invoke-virtual {v4, v2}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->setActiveTimestamp(Landroid/net/thread/OperationalDatasetTimestamp;)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v3}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->setRouterEligibleForLeader(Z)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$Builder;->build()Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    move-result-object v4

    .line 158
    return-object v4
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

    .line 147
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;
    .registers 3
    .param p1, "size"    # I

    .line 166
    new-array v0, p1, [Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

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

    .line 147
    invoke-virtual {p0, p1}, Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier$1;->newArray(I)[Landroid/net/connectivity/android/net/thread/ThreadNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

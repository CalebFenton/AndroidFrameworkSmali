.class Landroid/net/nsd/AdvertisingRequest$1;
.super Ljava/lang/Object;
.source "AdvertisingRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/AdvertisingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/nsd/AdvertisingRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/AdvertisingRequest;
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    const-class v0, Landroid/net/nsd/NsdServiceInfo;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/nsd/NsdServiceInfo;

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    .line 69
    .local v2, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "protocolType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 71
    .local v4, "advertiseConfig":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 72
    .local v8, "ttlSeconds":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_27

    :cond_23
    invoke-static {v8, v9}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    :goto_27
    move-object v6, v0

    .line 73
    .local v6, "ttl":Ljava/time/Duration;
    new-instance v1, Landroid/net/nsd/AdvertisingRequest;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/net/nsd/AdvertisingRequest;-><init>(Landroid/net/nsd/NsdServiceInfo;IJLjava/time/Duration;Landroid/net/nsd/AdvertisingRequest-IA;)V

    return-object v1
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

    .line 64
    invoke-virtual {p0, p1}, Landroid/net/nsd/AdvertisingRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/AdvertisingRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/nsd/AdvertisingRequest;
    .registers 3
    .param p1, "size"    # I

    .line 78
    new-array v0, p1, [Landroid/net/nsd/AdvertisingRequest;

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

    .line 64
    invoke-virtual {p0, p1}, Landroid/net/nsd/AdvertisingRequest$1;->newArray(I)[Landroid/net/nsd/AdvertisingRequest;

    move-result-object p1

    return-object p1
.end method

.class Landroid/net/LinkAddress$1;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/LinkAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 532
    const/4 v1, 0x0

    .line 534
    .local v1, "address":Ljava/net/InetAddress;
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_9} :catch_c

    move-object v1, v0

    .line 539
    move-object v3, v1

    goto :goto_e

    .line 535
    :catch_c
    move-exception v0

    move-object v3, v1

    .line 540
    .end local v1    # "address":Ljava/net/InetAddress;
    .local v3, "address":Ljava/net/InetAddress;
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 541
    .local v4, "prefixLength":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 542
    .local v5, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 543
    .local v6, "scope":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 544
    .local v7, "deprecationTime":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 545
    .local v9, "expirationTime":J
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct/range {v2 .. v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;IIIJJ)V

    return-object v2
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

    .line 530
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkAddress;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/LinkAddress;
    .registers 3
    .param p1, "size"    # I

    .line 550
    new-array v0, p1, [Landroid/net/LinkAddress;

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

    .line 530
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress$1;->newArray(I)[Landroid/net/LinkAddress;

    move-result-object p1

    return-object p1
.end method

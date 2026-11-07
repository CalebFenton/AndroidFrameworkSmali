.class Landroid/net/wifi/twt/TwtRequest$1;
.super Ljava/lang/Object;
.source "TwtRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/twt/TwtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/twt/TwtRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/twt/TwtRequest;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 112
    new-instance v0, Landroid/net/wifi/twt/TwtRequest$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/twt/TwtRequest$Builder;-><init>(IIJJ)V

    .line 114
    .local v0, "builder":Landroid/net/wifi/twt/TwtRequest$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "mloLinkId":I
    if-ltz v1, :cond_22

    const/16 v2, 0xf

    if-gt v1, v2, :cond_22

    .line 116
    invoke-virtual {v0, v1}, Landroid/net/wifi/twt/TwtRequest$Builder;->setLinkId(I)Landroid/net/wifi/twt/TwtRequest$Builder;

    .line 118
    :cond_22
    invoke-virtual {v0}, Landroid/net/wifi/twt/TwtRequest$Builder;->build()Landroid/net/wifi/twt/TwtRequest;

    move-result-object v2

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

    .line 109
    invoke-virtual {p0, p1}, Landroid/net/wifi/twt/TwtRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/twt/TwtRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/twt/TwtRequest;
    .registers 3
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Landroid/net/wifi/twt/TwtRequest;

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

    .line 109
    invoke-virtual {p0, p1}, Landroid/net/wifi/twt/TwtRequest$1;->newArray(I)[Landroid/net/wifi/twt/TwtRequest;

    move-result-object p1

    return-object p1
.end method

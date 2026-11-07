.class Landroid/net/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ProxyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 361
    .local v1, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1a

    .line 362
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 363
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 364
    .local v3, "localPort":I
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v2, v3}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 366
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "localPort":I
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2b

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object v3, v0

    move v4, v1

    goto :goto_2d

    .line 366
    :cond_2b
    move-object v3, v0

    move v4, v1

    .line 370
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":I
    .local v3, "host":Ljava/lang/String;
    .local v4, "port":I
    :goto_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "exclList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "parsedExclList":[Ljava/lang/String;
    new-instance v2, Landroid/net/ProxyInfo;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo-IA;)V

    .line 373
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
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

    .line 357
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/ProxyInfo;
    .registers 3
    .param p1, "size"    # I

    .line 377
    new-array v0, p1, [Landroid/net/ProxyInfo;

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

    .line 357
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->newArray(I)[Landroid/net/ProxyInfo;

    move-result-object p1

    return-object p1
.end method

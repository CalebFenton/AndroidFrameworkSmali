.class final Landroid/net/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/ProxyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 340
    const/4 v1, 0x0

    #@1
    .line 341
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    #@2
    .line 342
    .local v2, "port":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 343
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a
    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d
    move-result-object v7

    #@e
    check-cast v7, Landroid/net/Uri;

    #@10
    .line 344
    .local v7, "url":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v6

    #@14
    .line 345
    .local v6, "localPort":I
    new-instance v5, Landroid/net/ProxyInfo;

    #@16
    invoke-direct {v5, v7, v6}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    #@19
    return-object v5

    #@1a
    .line 347
    .end local v6    # "localPort":I
    .end local v7    # "url":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 349
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v2

    #@28
    .line 351
    .end local v1    # "host":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 352
    .local v3, "exclList":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 354
    .local v4, "parsedExclList":[Ljava/lang/String;
    new-instance v0, Landroid/net/ProxyInfo;

    #@32
    const/4 v5, 0x0

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo;)V

    #@36
    .line 355
    .local v0, "proxyProperties":Landroid/net/ProxyInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 339
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/ProxyInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 359
    new-array v0, p1, [Landroid/net/ProxyInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 358
    invoke-virtual {p0, p1}, Landroid/net/ProxyInfo$1;->newArray(I)[Landroid/net/ProxyInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

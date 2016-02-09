.class final Landroid/net/nsd/NsdServiceInfo$1;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdServiceInfo;
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
        "Landroid/net/nsd/NsdServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 265
    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    #@3
    invoke-direct {v2}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    #@6
    .line 266
    .local v2, "info":Landroid/net/nsd/NsdServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v6

    #@a
    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set2(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    #@d
    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set3(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    #@14
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v6

    #@18
    if-ne v6, v8, :cond_0

    #@1a
    .line 271
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@1d
    move-result-object v6

    #@1e
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    #@21
    move-result-object v6

    #@22
    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set0(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v6

    #@29
    invoke-static {v2, v6}, Landroid/net/nsd/NsdServiceInfo;->-set1(Landroid/net/nsd/NsdServiceInfo;I)I

    #@2c
    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v3

    #@30
    .line 279
    .local v3, "recordCount":I
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@33
    .line 280
    const/4 v4, 0x0

    #@34
    .line 281
    .local v4, "valueArray":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    if-ne v6, v8, :cond_1

    #@3a
    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v5

    #@3e
    .line 283
    .local v5, "valueLength":I
    new-array v4, v5, [B

    #@40
    .line 284
    .local v4, "valueArray":[B
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    #@43
    .line 286
    .end local v4    # "valueArray":[B
    .end local v5    # "valueLength":I
    :cond_1
    invoke-static {v2}, Landroid/net/nsd/NsdServiceInfo;->-get0(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 279
    add-int/lit8 v1, v1, 0x1

    #@50
    goto :goto_1

    #@51
    .line 288
    :cond_2
    return-object v2

    #@52
    .line 272
    .end local v1    # "i":I
    .end local v3    # "recordCount":I
    :catch_0
    move-exception v0

    #@53
    .local v0, "e":Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 264
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/nsd/NsdServiceInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 292
    new-array v0, p1, [Landroid/net/nsd/NsdServiceInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 291
    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->newArray(I)[Landroid/net/nsd/NsdServiceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

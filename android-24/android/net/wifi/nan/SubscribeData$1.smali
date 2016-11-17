.class final Landroid/net/wifi/nan/SubscribeData$1;
.super Ljava/lang/Object;
.source "SubscribeData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeData;
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
        "Landroid/net/wifi/nan/SubscribeData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/SubscribeData;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 122
    .local v1, "serviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v3

    #@8
    .line 123
    .local v3, "ssiLength":I
    new-array v2, v3, [B

    #@a
    .line 124
    .local v2, "ssi":[B
    if-eqz v3, :cond_0

    #@c
    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    #@f
    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v5

    #@13
    .line 128
    .local v5, "txFilterLength":I
    new-array v4, v5, [B

    #@15
    .line 129
    .local v4, "txFilter":[B
    if-eqz v5, :cond_1

    #@17
    .line 130
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    #@1a
    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v7

    #@1e
    .line 133
    .local v7, "rxFilterLength":I
    new-array v6, v7, [B

    #@20
    .line 134
    .local v6, "rxFilter":[B
    if-eqz v7, :cond_2

    #@22
    .line 135
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    #@25
    .line 138
    :cond_2
    new-instance v0, Landroid/net/wifi/nan/SubscribeData;

    #@27
    const/4 v8, 0x0

    #@28
    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/SubscribeData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/SubscribeData;)V

    #@2b
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/SubscribeData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/SubscribeData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/nan/SubscribeData;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 116
    new-array v0, p1, [Landroid/net/wifi/nan/SubscribeData;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/SubscribeData$1;->newArray(I)[Landroid/net/wifi/nan/SubscribeData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

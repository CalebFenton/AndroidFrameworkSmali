.class public final Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
.super Ljava/lang/Object;
.source "GetAddressInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist address:Ljava/lang/String;

.field private blacklist hostname:Ljava/lang/String;

.field private blacklist id:I

.field private blacklist interfaceIdx:I

.field private blacklist netId:I

.field private blacklist result:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->id:I

    .line 26
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->result:I

    .line 41
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->interfaceIdx:I

    .line 46
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->netId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;
    .registers 8

    .line 52
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->id:I

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->result:I

    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->hostname:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->address:Ljava/lang/String;

    iget v5, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->interfaceIdx:I

    iget v6, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->netId:I

    invoke-direct/range {v0 .. v6}, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo;-><init>(IILjava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public blacklist setAddress(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->address:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public blacklist setHostname(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->hostname:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public blacklist setId(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 23
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->id:I

    .line 24
    return-object p0
.end method

.method public blacklist setInterfaceIdx(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .registers 2
    .param p1, "interfaceIdx"    # I

    .line 43
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->interfaceIdx:I

    .line 44
    return-object p0
.end method

.method public blacklist setNetId(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .registers 2
    .param p1, "netId"    # I

    .line 48
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->netId:I

    .line 49
    return-object p0
.end method

.method public blacklist setResult(I)Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;
    .registers 2
    .param p1, "result"    # I

    .line 28
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/GetAddressInfo$Builder;->result:I

    .line 29
    return-object p0
.end method

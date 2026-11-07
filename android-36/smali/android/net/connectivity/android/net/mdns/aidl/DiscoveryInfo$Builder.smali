.class public final Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
.super Ljava/lang/Object;
.source "DiscoveryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist domainName:Ljava/lang/String;

.field private blacklist id:I

.field private blacklist interfaceIdx:I

.field private blacklist netId:I

.field private blacklist registrationType:Ljava/lang/String;

.field private blacklist result:I

.field private blacklist serviceName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->id:I

    .line 27
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->result:I

    .line 47
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->interfaceIdx:I

    .line 52
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->netId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;
    .registers 9

    .line 58
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->id:I

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->result:I

    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->serviceName:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->registrationType:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->domainName:Ljava/lang/String;

    iget v6, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->interfaceIdx:I

    iget v7, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->netId:I

    invoke-direct/range {v0 .. v7}, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public blacklist setDomainName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "domainName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->domainName:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public blacklist setId(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 24
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->id:I

    .line 25
    return-object p0
.end method

.method public blacklist setInterfaceIdx(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "interfaceIdx"    # I

    .line 49
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->interfaceIdx:I

    .line 50
    return-object p0
.end method

.method public blacklist setNetId(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "netId"    # I

    .line 54
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->netId:I

    .line 55
    return-object p0
.end method

.method public blacklist setRegistrationType(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "registrationType"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->registrationType:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public blacklist setResult(I)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "result"    # I

    .line 29
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->result:I

    .line 30
    return-object p0
.end method

.method public blacklist setServiceName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/DiscoveryInfo$Builder;->serviceName:Ljava/lang/String;

    .line 35
    return-object p0
.end method

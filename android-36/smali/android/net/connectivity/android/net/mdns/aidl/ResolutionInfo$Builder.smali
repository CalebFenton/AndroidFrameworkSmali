.class public final Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
.super Ljava/lang/Object;
.source "ResolutionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist domain:Ljava/lang/String;

.field private blacklist hostname:Ljava/lang/String;

.field private blacklist id:I

.field private blacklist interfaceIdx:I

.field private blacklist port:I

.field private blacklist registrationType:Ljava/lang/String;

.field private blacklist result:I

.field private blacklist serviceFullName:Ljava/lang/String;

.field private blacklist serviceName:Ljava/lang/String;

.field private blacklist txtRecord:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->id:I

    .line 30
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->result:I

    .line 60
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->port:I

    .line 70
    iput v0, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->interfaceIdx:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;
    .registers 12

    .line 76
    new-instance v0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;

    iget v1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->id:I

    iget v2, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->result:I

    iget-object v3, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->serviceName:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->registrationType:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->domain:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->serviceFullName:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->hostname:Ljava/lang/String;

    iget v8, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->port:I

    iget-object v9, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->txtRecord:[B

    iget v10, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->interfaceIdx:I

    invoke-direct/range {v0 .. v10}, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V

    return-object v0
.end method

.method public blacklist setDomain(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "domain"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->domain:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public blacklist setHostname(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->hostname:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public blacklist setId(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 27
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->id:I

    .line 28
    return-object p0
.end method

.method public blacklist setInterfaceIdx(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "interfaceIdx"    # I

    .line 72
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->interfaceIdx:I

    .line 73
    return-object p0
.end method

.method public blacklist setPort(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "port"    # I

    .line 62
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->port:I

    .line 63
    return-object p0
.end method

.method public blacklist setRegistrationType(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "registrationType"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->registrationType:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public blacklist setResult(I)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "result"    # I

    .line 32
    iput p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->result:I

    .line 33
    return-object p0
.end method

.method public blacklist setServiceFullName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "serviceFullName"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->serviceFullName:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public blacklist setServiceName(Ljava/lang/String;)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->serviceName:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public blacklist setTxtRecord([B)Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;
    .registers 2
    .param p1, "txtRecord"    # [B

    .line 67
    iput-object p1, p0, Landroid/net/connectivity/android/net/mdns/aidl/ResolutionInfo$Builder;->txtRecord:[B

    .line 68
    return-object p0
.end method

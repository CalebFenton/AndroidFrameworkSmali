.class public Landroid/net/VpnService$Builder;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/VpnService;


# direct methods
.method public constructor <init>(Landroid/net/VpnService;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/VpnService;

    #@0
    .prologue
    .line 409
    iput-object p1, p0, Landroid/net/VpnService$Builder;->this$0:Landroid/net/VpnService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 405
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    #@7
    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    #@a
    iput-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@c
    .line 406
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    #@13
    .line 407
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    #@1a
    .line 410
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1c
    invoke-virtual {p1}, Landroid/net/VpnService;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    #@26
    .line 409
    return-void
.end method

.method private verifyApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 604
    const-string/jumbo v2, "package"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 603
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@a
    move-result-object v1

    #@b
    .line 606
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@e
    move-result v2

    #@f
    const/4 v3, 0x0

    #@10
    invoke-interface {v1, p1, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 602
    return-void

    #@14
    .line 607
    :catch_0
    move-exception v0

    #@15
    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@17
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 481
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 459
    invoke-static {p1, p2}, Landroid/net/VpnService;->-wrap1(Ljava/net/InetAddress;I)V

    #@3
    .line 461
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Bad address"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 464
    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    #@14
    new-instance v1, Landroid/net/LinkAddress;

    #@16
    invoke-direct {v1, p1, p2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    .line 465
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1e
    invoke-virtual {v0, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    #@21
    .line 466
    return-object p0
.end method

.method public addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 636
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "addDisallowedApplication already called"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 638
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    #@12
    .line 639
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@14
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 640
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1a
    new-instance v1, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@21
    .line 642
    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@23
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 643
    return-object p0
.end method

.method public addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "addAllowedApplication already called"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 670
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;->verifyApp(Ljava/lang/String;)V

    #@12
    .line 671
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@14
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 672
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1a
    new-instance v1, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@21
    .line 674
    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@23
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    #@25
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 675
    return-object p0
.end method

.method public addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 558
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public addDnsServer(Ljava/net/InetAddress;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 536
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 537
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "Bad address"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 539
    :cond_1
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@17
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 540
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@1d
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@24
    .line 542
    :cond_2
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@26
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    #@28
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    .line 543
    return-object p0
.end method

.method public addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 522
    invoke-static {p1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public addRoute(Ljava/net/InetAddress;I)Landroid/net/VpnService$Builder;
    .locals 6
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    #@0
    .prologue
    .line 494
    invoke-static {p1, p2}, Landroid/net/VpnService;->-wrap1(Ljava/net/InetAddress;I)V

    #@3
    .line 496
    div-int/lit8 v1, p2, 0x8

    #@5
    .line 497
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    #@8
    move-result-object v0

    #@9
    .line 498
    .local v0, "bytes":[B
    array-length v2, v0

    #@a
    if-ge v1, v2, :cond_1

    #@c
    .line 499
    aget-byte v2, v0, v1

    #@e
    rem-int/lit8 v3, p2, 0x8

    #@10
    shl-int/2addr v2, v3

    #@11
    int-to-byte v2, v2

    #@12
    aput-byte v2, v0, v1

    #@14
    :goto_0
    array-length v2, v0

    #@15
    if-ge v1, v2, :cond_1

    #@17
    .line 500
    aget-byte v2, v0, v1

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 501
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v3, "Bad address"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 505
    :cond_1
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    #@29
    new-instance v3, Landroid/net/RouteInfo;

    #@2b
    new-instance v4, Landroid/net/IpPrefix;

    #@2d
    invoke-direct {v4, p1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    #@30
    const/4 v5, 0x0

    #@31
    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V

    #@34
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 506
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@39
    invoke-virtual {v2, p1}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    #@3c
    .line 507
    return-object p0
.end method

.method public addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 566
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@8
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@f
    .line 568
    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@11
    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 569
    return-object p0
.end method

.method public allowBypass()Landroid/net/VpnService$Builder;
    .locals 2

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    #@5
    .line 690
    return-object p0
.end method

.method public allowFamily(I)Landroid/net/VpnService$Builder;
    .locals 3
    .param p1, "family"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 591
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 592
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@7
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    #@9
    .line 599
    :goto_0
    return-object p0

    #@a
    .line 593
    :cond_0
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    #@c
    if-ne p1, v0, :cond_1

    #@e
    .line 594
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@10
    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    #@12
    goto :goto_0

    #@13
    .line 596
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " is neither "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, " nor "

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 597
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    #@34
    .line 596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
.end method

.method public establish()Landroid/os/ParcelFileDescriptor;
    .locals 3

    #@0
    .prologue
    .line 765
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mAddresses:Ljava/util/List;

    #@4
    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    #@6
    .line 766
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@8
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mRoutes:Ljava/util/List;

    #@a
    iput-object v2, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    #@c
    .line 769
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->-wrap0()Landroid/net/IConnectivityManager;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@12
    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 770
    :catch_0
    move-exception v0

    #@18
    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1a
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v1
.end method

.method public setBlocking(Z)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "blocking"    # Z

    #@0
    .prologue
    .line 703
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iput-boolean p1, v0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    #@4
    .line 704
    return-object p0
.end method

.method public setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    #@4
    .line 430
    return-object p0
.end method

.method public setMtu(I)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "mtu"    # I

    #@0
    .prologue
    .line 441
    if-gtz p1, :cond_0

    #@2
    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Bad mtu"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 444
    :cond_0
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@d
    iput p1, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    #@f
    .line 445
    return-object p0
.end method

.method public setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 1
    .param p1, "session"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@2
    iput-object p1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    #@4
    .line 420
    return-object p0
.end method

.method public setUnderlyingNetworks([Landroid/net/Network;)Landroid/net/VpnService$Builder;
    .locals 2
    .param p1, "networks"    # [Landroid/net/Network;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 717
    iget-object v1, p0, Landroid/net/VpnService$Builder;->mConfig:Lcom/android/internal/net/VpnConfig;

    #@3
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/net/Network;

    #@b
    :cond_0
    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    #@d
    .line 718
    return-object p0
.end method

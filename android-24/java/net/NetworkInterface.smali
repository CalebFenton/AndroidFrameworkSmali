.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field private static final defaultIndex:I

.field private static final defaultInterface:Ljava/net/NetworkInterface;


# instance fields
.field private addrs:[Ljava/net/InetAddress;

.field private bindings:[Ljava/net/InterfaceAddress;

.field private childs:[Ljava/net/NetworkInterface;

.field private displayName:Ljava/lang/String;

.field private hardwareAddr:[B

.field private index:I

.field private name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;

.field private virtual:Z


# direct methods
.method static synthetic -get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/net/NetworkInterface;->childs:[Ljava/net/NetworkInterface;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-static {}, Ljava/net/DefaultInterface;->getDefault()Ljava/net/NetworkInterface;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    #@6
    .line 58
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 59
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    #@c
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    #@f
    move-result v0

    #@10
    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    #@12
    .line 43
    :goto_0
    return-void

    #@13
    .line 61
    :cond_0
    const/4 v0, 0x0

    #@14
    sput v0, Ljava/net/NetworkInterface;->defaultIndex:I

    #@16
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@6
    .line 51
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    #@9
    .line 71
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "addrs"    # [Ljava/net/InetAddress;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@6
    .line 51
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    #@9
    .line 75
    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@b
    .line 76
    iput p2, p0, Ljava/net/NetworkInterface;->index:I

    #@d
    .line 77
    iput-object p3, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@f
    .line 74
    return-void
.end method

.method private static native getAll()[Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    if-gez p0, :cond_0

    #@2
    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Interface index can\'t be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 285
    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByIndex0(I)Ljava/net/NetworkInterface;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private static native getByIndex0(I)Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 311
    if-nez p0, :cond_0

    #@2
    .line 312
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 314
    :cond_0
    instance-of v0, p0, Ljava/net/Inet4Address;

    #@a
    if-nez v0, :cond_1

    #@c
    instance-of v0, p0, Ljava/net/Inet6Address;

    #@e
    :goto_0
    if-nez v0, :cond_2

    #@10
    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "invalid address type"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 314
    :cond_1
    const/4 v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 317
    :cond_2
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByInetAddress0(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method private static native getByInetAddress0(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 266
    if-nez p0, :cond_0

    #@2
    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 268
    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName0(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private static native getByName0(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method static getDefault()Ljava/net/NetworkInterface;
    .locals 1

    #@0
    .prologue
    .line 555
    sget-object v0, Ljava/net/NetworkInterface;->defaultInterface:Ljava/net/NetworkInterface;

    #@2
    return-object v0
.end method

.method private static native getMTU0(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 333
    invoke-static {}, Ljava/net/NetworkInterface;->getAll()[Ljava/net/NetworkInterface;

    #@4
    move-result-object v0

    #@5
    .line 336
    .local v0, "netifs":[Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    #@7
    .line 337
    return-object v1

    #@8
    .line 339
    :cond_0
    new-instance v1, Ljava/net/NetworkInterface$1;

    #@a
    invoke-direct {v1, v0}, Ljava/net/NetworkInterface$1;-><init>([Ljava/net/NetworkInterface;)V

    #@d
    return-object v1
.end method

.method private static native isLoopback0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native isP2P0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native isUp0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method private static native supportsMulticast0(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 492
    instance-of v8, p1, Ljava/net/NetworkInterface;

    #@4
    if-nez v8, :cond_0

    #@6
    .line 493
    return v7

    #@7
    :cond_0
    move-object v4, p1

    #@8
    .line 495
    check-cast v4, Ljava/net/NetworkInterface;

    #@a
    .line 496
    .local v4, "that":Ljava/net/NetworkInterface;
    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@c
    if-eqz v8, :cond_1

    #@e
    .line 497
    iget-object v8, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@10
    iget-object v9, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v8

    #@16
    if-nez v8, :cond_2

    #@18
    .line 498
    return v7

    #@19
    .line 501
    :cond_1
    iget-object v8, v4, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@1b
    if-eqz v8, :cond_2

    #@1d
    .line 502
    return v7

    #@1e
    .line 506
    :cond_2
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@20
    if-nez v8, :cond_4

    #@22
    .line 507
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@24
    if-nez v8, :cond_3

    #@26
    :goto_0
    return v6

    #@27
    :cond_3
    move v6, v7

    #@28
    goto :goto_0

    #@29
    .line 508
    :cond_4
    iget-object v8, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@2b
    if-nez v8, :cond_5

    #@2d
    .line 509
    return v7

    #@2e
    .line 514
    :cond_5
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@30
    array-length v8, v8

    #@31
    iget-object v9, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@33
    array-length v9, v9

    #@34
    if-eq v8, v9, :cond_6

    #@36
    .line 515
    return v7

    #@37
    .line 518
    :cond_6
    iget-object v5, v4, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@39
    .line 519
    .local v5, "thatAddrs":[Ljava/net/InetAddress;
    array-length v0, v5

    #@3a
    .line 521
    .local v0, "count":I
    const/4 v2, 0x0

    #@3b
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_a

    #@3d
    .line 522
    const/4 v1, 0x0

    #@3e
    .line 523
    .local v1, "found":Z
    const/4 v3, 0x0

    #@3f
    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_7

    #@41
    .line 524
    iget-object v8, p0, Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;

    #@43
    aget-object v8, v8, v2

    #@45
    aget-object v9, v5, v3

    #@47
    invoke-virtual {v8, v9}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v8

    #@4b
    if-eqz v8, :cond_8

    #@4d
    .line 525
    const/4 v1, 0x1

    #@4e
    .line 529
    :cond_7
    if-nez v1, :cond_9

    #@50
    .line 530
    return v7

    #@51
    .line 523
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@53
    goto :goto_2

    #@54
    .line 521
    :cond_9
    add-int/lit8 v2, v2, 0x1

    #@56
    goto :goto_1

    #@57
    .line 533
    .end local v1    # "found":Z
    .end local v3    # "j":I
    :cond_a
    return v6
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 246
    const-string/jumbo v0, ""

    #@3
    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    iget-object v0, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    #@f
    goto :goto_0
.end method

.method public getHardwareAddress()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 436
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName0(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@5
    move-result-object v0

    #@6
    .line 437
    .local v0, "ni":Ljava/net/NetworkInterface;
    if-nez v0, :cond_0

    #@8
    .line 438
    new-instance v1, Ljava/net/SocketException;

    #@a
    const-string/jumbo v2, "NetworkInterface doesn\'t exist anymore"

    #@d
    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 440
    :cond_0
    iget-object v1, v0, Ljava/net/NetworkInterface;->hardwareAddr:[B

    #@13
    return-object v1
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 233
    iget v0, p0, Ljava/net/NetworkInterface;->index:I

    #@2
    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    new-instance v0, Ljava/net/NetworkInterface$1checkedAddresses;

    #@2
    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1checkedAddresses;-><init>(Ljava/net/NetworkInterface;)V

    #@5
    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 162
    new-instance v2, Ljava/util/ArrayList;

    #@2
    const/4 v4, 0x1

    #@3
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 163
    .local v2, "lst":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@9
    move-result-object v3

    #@a
    .line 164
    .local v3, "sec":Ljava/lang/SecurityManager;
    const/4 v1, 0x0

    #@b
    .local v1, "j":I
    :goto_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    #@d
    array-length v4, v4

    #@e
    if-ge v1, v4, :cond_1

    #@10
    .line 166
    if-eqz v3, :cond_0

    #@12
    .line 167
    :try_start_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    #@14
    aget-object v4, v4, v1

    #@16
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    const/4 v5, -0x1

    #@1f
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    #@22
    .line 169
    :cond_0
    iget-object v4, p0, Ljava/net/NetworkInterface;->bindings:[Ljava/net/InterfaceAddress;

    #@24
    aget-object v4, v4, v1

    #@26
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 164
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 172
    :cond_1
    return-object v2

    #@2d
    .line 170
    :catch_0
    move-exception v0

    #@2e
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method public getMTU()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    #@4
    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->getMTU0(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    #@2
    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/net/NetworkInterface$1subIFs;

    #@2
    invoke-direct {v0, p0}, Ljava/net/NetworkInterface$1subIFs;-><init>(Ljava/net/NetworkInterface;)V

    #@5
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public isLoopback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    #@4
    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->isLoopback0(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isPointToPoint()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    #@4
    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->isP2P0(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isUp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    #@4
    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->isUp0(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isVirtual()Z
    .locals 1

    #@0
    .prologue
    .line 468
    iget-boolean v0, p0, Ljava/net/NetworkInterface;->virtual:Z

    #@2
    return v0
.end method

.method public supportsMulticast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/NetworkInterface;->index:I

    #@4
    invoke-static {v0, v1}, Ljava/net/NetworkInterface;->supportsMulticast0(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 541
    const-string/jumbo v0, "name:"

    #@3
    .line 542
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@e
    if-nez v1, :cond_1

    #@10
    const-string/jumbo v1, "null"

    #@13
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 543
    iget-object v1, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, " ("

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Ljava/net/NetworkInterface;->displayName:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, ")"

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 546
    :cond_0
    return-object v0

    #@41
    .line 542
    :cond_1
    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    #@43
    goto :goto_0
.end method

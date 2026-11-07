.class public Lcom/android/net/module/util/InterfaceParams;
.super Ljava/lang/Object;
.source "InterfaceParams.java"


# static fields
.field private static final blacklist ETHER_MTU:I = 0x5dc

.field private static final blacklist IPV6_MIN_MTU:I = 0x500


# instance fields
.field public final blacklist defaultMtu:I

.field public final blacklist hasMacAddress:Z

.field public final blacklist index:I

.field public final blacklist macAddr:Landroid/net/MacAddress;

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/net/MacAddress;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "macAddr"    # Landroid/net/MacAddress;

    .line 67
    const/16 v0, 0x5dc

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/net/module/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "macAddr"    # Landroid/net/MacAddress;
    .param p4, "defaultMtu"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 75
    if-lez p2, :cond_30

    .line 77
    iput-object p1, p0, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    .line 78
    iput p2, p0, Lcom/android/net/module/util/InterfaceParams;->index:I

    .line 79
    if-eqz p3, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/android/net/module/util/InterfaceParams;->hasMacAddress:Z

    .line 80
    iget-boolean v0, p0, Lcom/android/net/module/util/InterfaceParams;->hasMacAddress:Z

    if-eqz v0, :cond_1c

    move-object v0, p3

    goto :goto_26

    :cond_1c
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_40

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    :goto_26
    iput-object v0, p0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 82
    const/16 v0, 0x500

    if-le p4, v0, :cond_2d

    move v0, p4

    :cond_2d
    iput v0, p0, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    .line 83
    return-void

    .line 75
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid interface index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "impossible interface name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_40
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcom/android/net/module/util/InterfaceParams;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 54
    .local v0, "netif":Ljava/net/NetworkInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 57
    :cond_8
    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;

    move-result-object v2

    .line 60
    .local v2, "macAddr":Landroid/net/MacAddress;
    :try_start_c
    new-instance v3, Lcom/android/net/module/util/InterfaceParams;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v5

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/net/module/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v3

    .line 61
    :catch_1a
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static blacklist getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;
    .registers 3
    .param p0, "netif"    # Ljava/net/NetworkInterface;

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 101
    :catch_9
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 93
    :catch_5
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/net/module/util/InterfaceParams;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    iget v3, p0, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s/%d/%s/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

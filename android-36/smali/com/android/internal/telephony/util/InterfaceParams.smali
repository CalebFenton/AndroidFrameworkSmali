.class public Lcom/android/internal/telephony/util/InterfaceParams;
.super Ljava/lang/Object;
.source "InterfaceParams.java"


# instance fields
.field public final blacklist defaultMtu:I

.field public final blacklist hasMacAddress:Z

.field public final blacklist index:I

.field public final blacklist macAddr:Landroid/net/MacAddress;

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/net/MacAddress;)V
    .registers 5

    const/16 v0, 0x5dc

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    .registers 7

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    if-lez p2, :cond_2d

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/util/InterfaceParams;->name:Ljava/lang/String;

    .line 78
    iput p2, p0, Lcom/android/internal/telephony/util/InterfaceParams;->index:I

    if-eqz p3, :cond_13

    const/4 v0, 0x1

    .line 79
    :cond_13
    iput-boolean v0, p0, Lcom/android/internal/telephony/util/InterfaceParams;->hasMacAddress:Z

    if-eqz v0, :cond_18

    goto :goto_22

    :cond_18
    const/4 p1, 0x6

    .line 80
    new-array p1, p1, [B

    fill-array-data p1, :array_3e

    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p3

    :goto_22
    iput-object p3, p0, Lcom/android/internal/telephony/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    const/16 p1, 0x500

    if-le p4, p1, :cond_29

    goto :goto_2a

    :cond_29
    move p4, p1

    .line 82
    :goto_2a
    iput p4, p0, Lcom/android/internal/telephony/util/InterfaceParams;->defaultMtu:I

    return-void

    .line 75
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid interface index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "impossible interface name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_3e
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/internal/telephony/util/InterfaceParams;
    .registers 6

    .line 53
    invoke-static {p0}, Lcom/android/internal/telephony/util/InterfaceParams;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 57
    :cond_8
    invoke-static {v0}, Lcom/android/internal/telephony/util/InterfaceParams;->getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;

    move-result-object v2

    .line 60
    :try_start_c
    new-instance v3, Lcom/android/internal/telephony/util/InterfaceParams;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v0

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/internal/telephony/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v3

    :catch_1a
    return-object v1
.end method

.method private static blacklist getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;
    .registers 1

    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 1

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/util/InterfaceParams;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/util/InterfaceParams;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    iget p0, p0, Lcom/android/internal/telephony/util/InterfaceParams;->defaultMtu:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s/%d/%s/%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

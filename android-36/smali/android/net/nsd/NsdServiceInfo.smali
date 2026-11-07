.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NsdServiceInfo"


# instance fields
.field private blacklist mExpirationTime:Ljava/time/Instant;

.field private final blacklist mHostAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHostname:Ljava/lang/String;

.field private blacklist mInterfaceIndex:I

.field private blacklist mNetwork:Landroid/net/Network;

.field private greylist-max-o mPort:I

.field private blacklist mPublicKey:[B

.field private greylist-max-o mServiceName:Ljava/lang/String;

.field private greylist-max-o mServiceType:Ljava/lang/String;

.field private final blacklist mSubtypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTxtRecord:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHostAddresses(Landroid/net/nsd/NsdServiceInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTxtRecord(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHostname(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHostname:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInterfaceIndex(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mInterfaceIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetwork(Landroid/net/nsd/NsdServiceInfo;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPort(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPublicKey(Landroid/net/nsd/NsdServiceInfo;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceName(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceType(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 678
    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/net/nsd/NsdServiceInfo;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getSubtypes()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHostAddresses()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    .line 110
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHostname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostname:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    .line 112
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mNetwork:Landroid/net/Network;

    .line 113
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getInterfaceIndex()I

    move-result v0

    iput v0, p0, Landroid/net/nsd/NsdServiceInfo;->mInterfaceIndex:I

    .line 114
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getExpirationTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    .line 115
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "rt"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private static blacklist containsNonPrintableChars([B)Z
    .registers 4
    .param p0, "txtValue"    # [B

    .line 632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_16

    .line 633
    aget-byte v1, p0, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_14

    aget-byte v1, p0, v0

    const/16 v2, 0x7e

    if-le v1, v2, :cond_11

    goto :goto_14

    .line 632
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_14
    :goto_14
    const/4 v1, 0x1

    return v1

    .line 637
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getPrintableTxtValue([B)Ljava/lang/String;
    .registers 3
    .param p0, "txtValue"    # [B

    .line 615
    if-nez p0, :cond_5

    .line 616
    const-string v0, "(null)"

    return-object v0

    .line 619
    :cond_5
    invoke-static {p0}, Landroid/net/nsd/NsdServiceInfo;->containsNonPrintableChars([B)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/net/connectivity/com/android/net/module/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 623
    :cond_23
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private greylist-max-o getTxtRecordSize()I
    .registers 6

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "txtRecordSize":I
    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 435
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    add-int/lit8 v0, v0, 0x2

    .line 436
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 438
    .local v3, "value":[B
    if-nez v3, :cond_2e

    const/4 v4, 0x0

    goto :goto_2f

    :cond_2e
    array-length v4, v3

    :goto_2f
    add-int/2addr v0, v4

    .line 439
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v3    # "value":[B
    goto :goto_b

    .line 440
    :cond_31
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExpirationTime()Ljava/time/Instant;
    .registers 2

    .line 581
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getHost()Ljava/net/InetAddress;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_13

    :cond_a
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :goto_13
    return-object v0
.end method

.method public whitelist getHostAddresses()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getHostname()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInterfaceIndex()I
    .registers 2

    .line 510
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mInterfaceIndex:I

    return v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 489
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getPort()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return v0
.end method

.method public blacklist getPublicKey()[B
    .registers 3

    .line 265
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    if-nez v0, :cond_6

    .line 266
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_6
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getServiceName()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceType()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTxtRecord()[B
    .registers 12

    .line 445
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v0

    .line 446
    .local v0, "txtRecordSize":I
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 447
    new-array v1, v1, [B

    return-object v1

    .line 450
    :cond_a
    new-array v2, v0, [B

    .line 451
    .local v2, "txtRecord":[B
    const/4 v3, 0x0

    .line 452
    .local v3, "ptr":I
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 453
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 454
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 457
    .local v7, "value":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "ptr":I
    .local v8, "ptr":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v7, :cond_39

    move v10, v1

    goto :goto_3a

    :cond_39
    array-length v10, v7

    :goto_3a
    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v3

    .line 462
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 463
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 462
    invoke-static {v3, v1, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v8, v3

    .line 467
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "ptr":I
    .restart local v3    # "ptr":I
    const/16 v9, 0x3d

    aput-byte v9, v2, v8

    .line 470
    if-eqz v7, :cond_60

    .line 471
    array-length v8, v7

    invoke-static {v7, v1, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    array-length v8, v7

    add-int/2addr v3, v8

    .line 474
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":[B
    :cond_60
    goto :goto_17

    .line 475
    :cond_61
    return-object v2
.end method

.method public whitelist removeAttribute(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public whitelist setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 410
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :try_start_3
    move-object v1, v0

    check-cast v1, [B

    goto :goto_d

    :cond_7
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_d
    invoke-virtual {p0, p1, v0}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_10} :catch_12

    .line 413
    nop

    .line 414
    return-void

    .line 411
    :catch_12
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value must be UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist setAttribute(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 366
    .local v1, "character":C
    const/16 v2, 0x20

    if-lt v1, v2, :cond_28

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_28

    .line 368
    const/16 v2, 0x3d

    if-eq v1, v2, :cond_20

    .line 364
    .end local v1    # "character":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 369
    .restart local v1    # "character":C
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key strings must not include \'=\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key strings must be printable US-ASCII"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v0    # "i":I
    .end local v1    # "character":C
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_39

    move v2, v1

    goto :goto_3a

    :cond_39
    array-length v2, p2

    :goto_3a
    add-int/2addr v0, v2

    const/16 v2, 0xff

    if-ge v0, v2, :cond_8a

    .line 379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    const-string v3, "NsdServiceInfo"

    if-le v0, v2, :cond_5f

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key lengths > 9 are discouraged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_5f
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v0

    .line 386
    .local v0, "txtRecordSize":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    if-nez p2, :cond_6b

    goto :goto_6c

    :cond_6b
    array-length v1, p2

    :goto_6c
    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    .line 387
    .local v2, "futureSize":I
    const/16 v1, 0x514

    if-gt v2, v1, :cond_82

    .line 389
    const/16 v1, 0x190

    if-le v2, v1, :cond_7c

    .line 390
    const-string v1, "Total length of all attributes exceeds 400 bytes; truncation may occur"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_7c
    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void

    .line 388
    :cond_82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Total length of attributes must be < 1300 bytes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    .end local v0    # "txtRecordSize":I
    .end local v2    # "futureSize":I
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length + value length must be < 255 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExpirationTime(Ljava/time/Instant;)V
    .registers 4
    .param p1, "expirationTime"    # Ljava/time/Instant;

    .line 560
    if-nez p1, :cond_6

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    goto :goto_10

    .line 563
    :cond_6
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    .line 565
    :goto_10
    return-void
.end method

.method public whitelist setHost(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "s"    # Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/nsd/NsdServiceInfo;->setHostAddresses(Ljava/util/List;)V

    .line 155
    return-void
.end method

.method public whitelist setHostAddresses(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    return-void
.end method

.method public blacklist setHostname(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostname"    # Ljava/lang/String;

    .line 234
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHostname:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public blacklist setInterfaceIndex(I)V
    .registers 2
    .param p1, "interfaceIndex"    # I

    .line 518
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mInterfaceIndex:I

    .line 519
    return-void
.end method

.method public whitelist setNetwork(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;

    .line 498
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mNetwork:Landroid/net/Network;

    .line 499
    return-void
.end method

.method public whitelist setPort(I)V
    .registers 2
    .param p1, "p"    # I

    .line 169
    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    .line 170
    return-void
.end method

.method public blacklist setPublicKey([B)V
    .registers 3
    .param p1, "publicKey"    # [B

    .line 251
    if-nez p1, :cond_6

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    .line 253
    return-void

    .line 255
    :cond_6
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    .line 256
    return-void
.end method

.method public whitelist setServiceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public whitelist setServiceType(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public whitelist setSubtypes(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 533
    .local p1, "subtypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 534
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 535
    return-void
.end method

.method public blacklist setTxtRecords([B)V
    .registers 13
    .param p1, "txtRecordsRawBytes"    # [B

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "pos":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_db

    .line 302
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 303
    .local v1, "recordLen":I
    add-int/lit8 v0, v0, 0x1

    .line 306
    const-string v2, "): "

    const-string v3, "NsdServiceInfo"

    if-eqz v1, :cond_ae

    .line 308
    add-int v4, v0, v1

    :try_start_12
    array-length v5, p1

    if-le v4, v5, :cond_36

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Corrupt record length (pos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    array-length v4, p1

    sub-int v1, v4, v0

    .line 314
    :cond_36
    const/4 v4, 0x0

    .line 315
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 316
    .local v5, "value":[B
    const/4 v6, 0x0

    .line 317
    .local v6, "valueLen":I
    move v7, v0

    .local v7, "i":I
    :goto_3a
    add-int v8, v0, v1

    if-ge v7, v8, :cond_67

    .line 318
    if-nez v4, :cond_51

    .line 319
    aget-byte v8, p1, v7

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_64

    .line 320
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v0

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, p1, v0, v9, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v8

    .end local v4    # "key":Ljava/lang/String;
    .local v8, "key":Ljava/lang/String;
    goto :goto_64

    .line 324
    .end local v8    # "key":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    :cond_51
    if-nez v5, :cond_5e

    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v1, v8

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [B

    move-object v5, v8

    .line 327
    :cond_5e
    aget-byte v8, p1, v7

    aput-byte v8, v5, v6

    .line 328
    add-int/lit8 v6, v6, 0x1

    .line 317
    :cond_64
    :goto_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 333
    .end local v7    # "i":I
    :cond_67
    if-nez v4, :cond_71

    .line 334
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, p1, v0, v1, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v7

    .line 337
    :cond_71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 342
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    .line 347
    invoke-virtual {p0, v4, v5}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    .line 350
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":[B
    .end local v6    # "valueLen":I
    goto :goto_d8

    .line 344
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":[B
    .restart local v6    # "valueLen":I
    :cond_85
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid txt record (duplicate key \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "recordLen":I
    .end local p0    # "this":Landroid/net/nsd/NsdServiceInfo;
    .end local p1    # "txtRecordsRawBytes":[B
    throw v7

    .line 339
    .restart local v0    # "pos":I
    .restart local v1    # "recordLen":I
    .restart local p0    # "this":Landroid/net/nsd/NsdServiceInfo;
    .restart local p1    # "txtRecordsRawBytes":[B
    :cond_a4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid txt record (key is empty)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "recordLen":I
    .end local p0    # "this":Landroid/net/nsd/NsdServiceInfo;
    .end local p1    # "txtRecordsRawBytes":[B
    throw v7

    .line 348
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":[B
    .end local v6    # "valueLen":I
    .restart local v0    # "pos":I
    .restart local v1    # "recordLen":I
    .restart local p0    # "this":Landroid/net/nsd/NsdServiceInfo;
    .restart local p1    # "txtRecordsRawBytes":[B
    :catch_ac
    move-exception v4

    goto :goto_b6

    .line 307
    :cond_ae
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Zero sized txt record"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pos":I
    .end local v1    # "recordLen":I
    .end local p0    # "this":Landroid/net/nsd/NsdServiceInfo;
    .end local p1    # "txtRecordsRawBytes":[B
    throw v4
    :try_end_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_b6} :catch_ac

    .line 349
    .restart local v0    # "pos":I
    .restart local v1    # "recordLen":I
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    .restart local p0    # "this":Landroid/net/nsd/NsdServiceInfo;
    .restart local p1    # "txtRecordsRawBytes":[B
    :goto_b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While parsing txt records (pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_d8
    add-int/2addr v0, v1

    .line 353
    .end local v1    # "recordLen":I
    goto/16 :goto_1

    .line 354
    :cond_db
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    const-string v2, ", subtypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 590
    const-string v2, ", hostAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    const-string v2, ", hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mHostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    const-string v2, ", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 593
    const-string v2, ", network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 594
    const-string v2, ", expirationTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 596
    new-instance v1, Ljava/util/StringJoiner;

    const-string v2, "{"

    const-string v4, "}"

    invoke-direct {v1, v3, v2, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 599
    .local v1, "txtJoiner":Ljava/util/StringJoiner;
    const-string v2, ", txtRecord: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7d
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_b6

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Landroid/net/nsd/NsdServiceInfo;->getPrintableTxtValue([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 603
    .end local v2    # "i":I
    :cond_b6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 647
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/nsd/NsdServiceInfo;->mSubtypes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 650
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 656
    .local v3, "value":[B
    if-eqz v3, :cond_4f

    .line 657
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    array-length v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_52

    .line 661
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    :goto_52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":[B
    goto :goto_2c

    .line 666
    :cond_56
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 667
    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mInterfaceIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 670
    .local v1, "address":Ljava/net/InetAddress;
    invoke-static {p1, v1, p2}, Landroid/net/connectivity/com/android/net/module/util/InetAddressUtils;->parcelInetAddress(Landroid/os/Parcel;Ljava/net/InetAddress;I)V

    .line 671
    .end local v1    # "address":Ljava/net/InetAddress;
    goto :goto_6f

    .line 672
    :cond_7f
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mExpirationTime:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    goto :goto_91

    :cond_8f
    const-wide/16 v0, -0x1

    :goto_91
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 674
    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPublicKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 675
    return-void
.end method

.class public Lcom/android/internal/net/vcn/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;,
        Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;,
        Lcom/android/internal/net/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;,
        Lcom/android/internal/net/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    }
.end annotation


# static fields
.field private static final blacklist BYTE_ARRAY_KEY:Ljava/lang/String; = "BYTE_ARRAY_KEY"

.field private static final blacklist COLLECTION_SIZE_KEY:Ljava/lang/String; = "COLLECTION_LENGTH"

.field public static final blacklist INTEGER_DESERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist INTEGER_KEY:Ljava/lang/String; = "INTEGER_KEY"

.field public static final blacklist INTEGER_SERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LIST_KEY_FORMAT:Ljava/lang/String; = "LIST_ITEM_%d"

.field private static final blacklist MAP_KEY_FORMAT:Ljava/lang/String; = "MAP_KEY_%d"

.field private static final blacklist MAP_VALUE_FORMAT:Ljava/lang/String; = "MAP_VALUE_%d"

.field private static final blacklist PARCEL_UUID_KEY:Ljava/lang/String; = "PARCEL_UUID"

.field public static final blacklist STRING_DESERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STRING_KEY:Ljava/lang/String; = "STRING_KEY"

.field public static final blacklist STRING_SERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 93
    new-instance v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 100
    new-instance v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 108
    new-instance v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "array"    # [B

    .line 201
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 203
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "BYTE_ARRAY_KEY"

    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v0
.end method

.method public static blacklist fromDiskStableBytes([B)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 321
    .local v0, "inputStream":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<",
            "TT;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 155
    .local p0, "in":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "serializer":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;, "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<TT;>;"
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 157
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "COLLECTION_LENGTH"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "LIST_ITEM_%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 158
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 162
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method public static blacklist fromMap(Ljava/util/Map;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<",
            "TK;>;",
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<",
            "TV;>;)",
            "Landroid/os/PersistableBundle;"
        }
    .end annotation

    .line 244
    .local p0, "in":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keySerializer":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;, "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<TK;>;"
    .local p2, "valueSerializer":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;, "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer<TV;>;"
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 246
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "COLLECTION_LENGTH"

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 249
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MAP_KEY_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "keyKey":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "MAP_VALUE_%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "valueKey":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 252
    nop

    .line 253
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;->toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 252
    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 255
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4    # "keyKey":Ljava/lang/String;
    .end local v5    # "valueKey":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 256
    goto :goto_17

    .line 258
    :cond_5a
    return-object v0
.end method

.method public static blacklist fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "uuid"    # Landroid/os/ParcelUuid;

    .line 124
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 126
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "PARCEL_UUID"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public static blacklist getHashCode(Landroid/os/PersistableBundle;)I
    .registers 8
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 440
    if-nez p0, :cond_4

    .line 441
    const/4 v0, -0x1

    return v0

    .line 444
    :cond_4
    const/4 v0, 0x0

    .line 445
    .local v0, "iterativeHashcode":I
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 446
    .local v1, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 447
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 448
    .local v4, "val":Ljava/lang/Object;
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_3f

    .line 449
    nop

    .line 450
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    invoke-static {v6}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v3, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_4b

    .line 452
    :cond_3f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 454
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    :goto_4b
    goto :goto_12

    .line 456
    :cond_4c
    return v0
.end method

.method public static blacklist isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 10
    .param p0, "left"    # Landroid/os/PersistableBundle;
    .param p1, "right"    # Landroid/os/PersistableBundle;

    .line 463
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 464
    return v1

    .line 468
    :cond_8
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    .line 469
    return v3

    .line 472
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 473
    return v3

    .line 476
    :cond_23
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 478
    .local v4, "leftVal":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 481
    .local v5, "rightVal":Ljava/lang/Object;
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 482
    goto :goto_2b

    .line 483
    :cond_46
    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v5}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_51

    .line 485
    return v3

    .line 486
    :cond_51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 488
    return v3

    .line 490
    :cond_60
    instance-of v6, v4, Landroid/os/PersistableBundle;

    if-eqz v6, :cond_71

    .line 491
    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    move-object v7, v5

    check-cast v7, Landroid/os/PersistableBundle;

    invoke-static {v6, v7}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 492
    return v3

    .line 494
    :cond_71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 495
    instance-of v6, v4, [Z

    if-eqz v6, :cond_8c

    .line 496
    move-object v6, v4

    check-cast v6, [Z

    move-object v7, v5

    check-cast v7, [Z

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 497
    return v3

    .line 499
    :cond_8c
    instance-of v6, v4, [D

    if-eqz v6, :cond_9d

    .line 500
    move-object v6, v4

    check-cast v6, [D

    move-object v7, v5

    check-cast v7, [D

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 501
    return v3

    .line 503
    :cond_9d
    instance-of v6, v4, [I

    if-eqz v6, :cond_ae

    .line 504
    move-object v6, v4

    check-cast v6, [I

    move-object v7, v5

    check-cast v7, [I

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 505
    return v3

    .line 507
    :cond_ae
    instance-of v6, v4, [J

    if-eqz v6, :cond_bf

    .line 508
    move-object v6, v4

    check-cast v6, [J

    move-object v7, v5

    check-cast v7, [J

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 509
    return v3

    .line 511
    :cond_bf
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 512
    return v3

    .line 515
    :cond_cc
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 516
    return v3

    .line 519
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "leftVal":Ljava/lang/Object;
    .end local v5    # "rightVal":Ljava/lang/Object;
    :cond_d3
    goto/16 :goto_2b

    .line 521
    :cond_d5
    return v1
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "i"    # Ljava/lang/Integer;

    .line 87
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 88
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "INTEGER_KEY"

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/os/PersistableBundle;)Ljava/lang/Integer;
    .registers 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 95
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v0, "INTEGER_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$static$2(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "i"    # Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 103
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "STRING_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method static synthetic blacklist lambda$static$3(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .registers 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 110
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v0, "STRING_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist minimizeBundle(Landroid/os/PersistableBundle;[Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 9
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 394
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 396
    .local v0, "minimized":Landroid/os/PersistableBundle;
    if-nez p0, :cond_8

    .line 397
    return-object v0

    .line 400
    :cond_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_aa

    aget-object v3, p1, v2

    .line 401
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 402
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 403
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_1c

    .line 404
    goto/16 :goto_a6

    .line 407
    :cond_1c
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2c

    .line 408
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_a6

    .line 409
    :cond_2c
    instance-of v5, v4, [Z

    if-eqz v5, :cond_38

    .line 410
    move-object v5, v4

    check-cast v5, [Z

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_a6

    .line 411
    :cond_38
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_47

    .line 412
    move-object v5, v4

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_a6

    .line 413
    :cond_47
    instance-of v5, v4, [D

    if-eqz v5, :cond_52

    .line 414
    move-object v5, v4

    check-cast v5, [D

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_a6

    .line 415
    :cond_52
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_61

    .line 416
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a6

    .line 417
    :cond_61
    instance-of v5, v4, [I

    if-eqz v5, :cond_6c

    .line 418
    move-object v5, v4

    check-cast v5, [I

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_a6

    .line 419
    :cond_6c
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_7b

    .line 420
    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_a6

    .line 421
    :cond_7b
    instance-of v5, v4, [J

    if-eqz v5, :cond_86

    .line 422
    move-object v5, v4

    check-cast v5, [J

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_a6

    .line 423
    :cond_86
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_91

    .line 424
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    .line 425
    :cond_91
    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_9c

    .line 426
    move-object v5, v4

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_a6

    .line 427
    :cond_9c
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_a6

    .line 428
    move-object v5, v4

    check-cast v5, Landroid/os/PersistableBundle;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 400
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a6
    :goto_a6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 435
    :cond_aa
    return-object v0
.end method

.method public static blacklist toByteArray(Landroid/os/PersistableBundle;)[B
    .registers 4
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 215
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v0, "BYTE_ARRAY_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "hex":Ljava/lang/String;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1a

    .line 222
    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/utils/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 219
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PersistableBundle contains invalid byte array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toDiskStableBytes(Landroid/os/PersistableBundle;)[B
    .registers 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;
    .registers 8
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 176
    .local p1, "deserializer":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;, "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<TT;>;"
    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "listLength":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_2a

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "LIST_ITEM_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 183
    .local v4, "item":Landroid/os/PersistableBundle;
    invoke-interface {p1, v4}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "item":Landroid/os/PersistableBundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 185
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method public static blacklist toMap(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;
    .registers 12
    .param p0, "in"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/PersistableBundle;",
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "TK;>;",
            "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<",
            "TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 284
    .local p1, "keyDeserializer":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;, "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<TK;>;"
    .local p2, "valueDeserializer":Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;, "Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer<TV;>;"
    const-string v0, "COLLECTION_LENGTH"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "mapSize":I
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 287
    .local v1, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_40

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MAP_KEY_%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "keyKey":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "MAP_VALUE_%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "valueKey":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 291
    .local v5, "keyBundle":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 293
    .local v6, "valueBundle":Landroid/os/PersistableBundle;
    invoke-interface {p1, v5}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v7

    .line 294
    .local v7, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p2, v6}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;->fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;

    move-result-object v8

    .line 295
    .local v8, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v3    # "keyKey":Ljava/lang/String;
    .end local v4    # "valueKey":Ljava/lang/String;
    .end local v5    # "keyBundle":Landroid/os/PersistableBundle;
    .end local v6    # "valueBundle":Landroid/os/PersistableBundle;
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 297
    .end local v2    # "i":I
    :cond_40
    return-object v1
.end method

.method public static blacklist toParcelUuid(Landroid/os/PersistableBundle;)Landroid/os/ParcelUuid;
    .registers 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 138
    const-string v0, "PARCEL_UUID"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

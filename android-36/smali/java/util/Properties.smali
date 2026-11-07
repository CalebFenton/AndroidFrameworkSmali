.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Properties$LineReader;,
        Ljava/util/Properties$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist UNSAFE:Ljdk/internal/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected volatile whitelist test-api defaults:Ljava/util/Properties;

.field private volatile transient blacklist map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/Properties;->UNSAFE:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 174
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;I)V

    .line 175
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;I)V

    .line 189
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Properties;)V
    .registers 3
    .param p1, "defaults"    # Ljava/util/Properties;

    .line 200
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;I)V

    .line 201
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Properties;I)V
    .registers 5
    .param p1, "defaults"    # Ljava/util/Properties;
    .param p2, "initialCapacity"    # I

    .line 206
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Void;

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(Ljava/lang/Void;)V

    .line 207
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    .line 211
    sget-object v0, Ljava/util/Properties;->UNSAFE:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0}, Ljdk/internal/misc/Unsafe;->storeFence()V

    .line 212
    return-void
.end method

.method private blacklist enumerate(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1251
    .local p1, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_9

    .line 1252
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;->enumerate(Ljava/util/Map;)V

    .line 1254
    :cond_9
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1255
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1256
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_11

    .line 1258
    :cond_2b
    return-void
.end method

.method private blacklist enumerateStringProperties(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1266
    .local p1, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    if-eqz v0, :cond_9

    .line 1267
    iget-object v0, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Map;)V

    .line 1269
    :cond_9
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1270
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 1271
    .local v2, "k":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1272
    .local v3, "v":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_36

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 1273
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_36
    goto :goto_11

    .line 1276
    :cond_37
    return-void
.end method

.method private greylist-max-o load0(Ljava/util/Properties$LineReader;)V
    .registers 13
    .param p1, "lr"    # Ljava/util/Properties$LineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v0, "outBuffer":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p1}, Ljava/util/Properties$LineReader;->readLine()I

    move-result v1

    move v2, v1

    .local v2, "limit":I
    if-ltz v1, :cond_67

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "keyLen":I
    move v3, v2

    .line 421
    .local v3, "valueStart":I
    const/4 v4, 0x0

    .line 424
    .local v4, "hasSep":Z
    const/4 v5, 0x0

    .line 425
    .local v5, "precedingBackslash":Z
    :goto_10
    const/16 v6, 0x3a

    const/4 v7, 0x0

    const/16 v8, 0x3d

    if-ge v1, v2, :cond_3e

    .line 426
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v9, v9, v1

    .line 428
    .local v9, "c":C
    if-eq v9, v8, :cond_1f

    if-ne v9, v6, :cond_25

    :cond_1f
    if-nez v5, :cond_25

    .line 429
    add-int/lit8 v3, v1, 0x1

    .line 430
    const/4 v4, 0x1

    .line 431
    goto :goto_3e

    .line 434
    :cond_25
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_30

    if-nez v5, :cond_30

    .line 435
    add-int/lit8 v3, v1, 0x1

    .line 436
    goto :goto_3e

    .line 438
    :cond_30
    const/16 v6, 0x5c

    if-ne v9, v6, :cond_39

    .line 439
    if-nez v5, :cond_37

    const/4 v7, 0x1

    :cond_37
    move v5, v7

    .end local v5    # "precedingBackslash":Z
    .local v7, "precedingBackslash":Z
    goto :goto_3a

    .line 441
    .end local v7    # "precedingBackslash":Z
    .restart local v5    # "precedingBackslash":Z
    :cond_39
    const/4 v5, 0x0

    .line 443
    :goto_3a
    nop

    .end local v9    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 444
    goto :goto_10

    .line 445
    :cond_3e
    :goto_3e
    if-ge v3, v2, :cond_55

    .line 446
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    aget-char v9, v9, v3

    .line 449
    .restart local v9    # "c":C
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_51

    .line 450
    if-nez v4, :cond_55

    if-eq v9, v8, :cond_50

    if-ne v9, v6, :cond_55

    .line 451
    :cond_50
    const/4 v4, 0x1

    .line 456
    :cond_51
    nop

    .end local v9    # "c":C
    add-int/lit8 v3, v3, 0x1

    .line 457
    goto :goto_3e

    .line 458
    :cond_55
    iget-object v6, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    invoke-direct {p0, v6, v7, v1, v0}, Ljava/util/Properties;->loadConvert([CIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    sub-int v8, v2, v3

    invoke-direct {p0, v7, v3, v8, v0}, Ljava/util/Properties;->loadConvert([CIILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_5

    .line 462
    .end local v1    # "keyLen":I
    .end local v3    # "valueStart":I
    .end local v4    # "hasSep":Z
    .end local v5    # "precedingBackslash":Z
    :cond_67
    return-void
.end method

.method private blacklist loadConvert([CIILjava/lang/StringBuilder;)Ljava/lang/String;
    .registers 13
    .param p1, "in"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;

    .line 632
    add-int v0, p2, p3

    .line 633
    .local v0, "end":I
    move v1, p2

    .line 634
    .local v1, "start":I
    :goto_3
    const/16 v2, 0x5c

    if-ge p2, v0, :cond_11

    .line 635
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    .line 636
    .local p2, "aChar":C
    if-ne p2, v2, :cond_f

    .line 637
    move p2, v3

    goto :goto_11

    .line 636
    :cond_f
    move p2, v3

    goto :goto_3

    .line 640
    .end local v3    # "off":I
    .local p2, "off":I
    :cond_11
    :goto_11
    if-ne p2, v0, :cond_19

    .line 641
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 645
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 646
    add-int/lit8 p2, p2, -0x1

    .line 647
    sub-int v3, p2, v1

    invoke-virtual {p4, p1, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 649
    :goto_24
    if-ge p2, v0, :cond_97

    .line 650
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aget-char p2, p1, p2

    .line 651
    .local p2, "aChar":C
    if-ne p2, v2, :cond_92

    .line 654
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "off":I
    .local v4, "off":I
    aget-char p2, p1, v3

    .line 655
    const/16 v3, 0x75

    if-ne p2, v3, :cond_72

    .line 657
    add-int/lit8 v3, v0, -0x4

    const-string v5, "Malformed \\uxxxx encoding."

    if-gt v4, v3, :cond_6c

    .line 660
    const/4 v3, 0x0

    .line 661
    .local v3, "value":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3c
    const/4 v7, 0x4

    if-ge v6, v7, :cond_66

    .line 662
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "off":I
    .local v7, "off":I
    aget-char p2, p1, v4

    .line 663
    sparse-switch p2, :sswitch_data_9c

    .line 667
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 665
    :sswitch_4c
    shl-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x61

    goto :goto_61

    .line 666
    :sswitch_54
    shl-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x41

    goto :goto_61

    .line 664
    :sswitch_5c
    shl-int/lit8 v4, v3, 0x4

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x30

    .line 667
    :goto_61
    move v3, v4

    .line 661
    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_3c

    .line 670
    .end local v6    # "i":I
    .end local v7    # "off":I
    .restart local v4    # "off":I
    :cond_66
    int-to-char v5, v3

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    .end local v3    # "value":I
    move p2, v4

    goto :goto_24

    .line 658
    :cond_6c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_72
    const/16 v3, 0x74

    if-ne p2, v3, :cond_79

    const/16 p2, 0x9

    goto :goto_8d

    .line 673
    :cond_79
    const/16 v3, 0x72

    if-ne p2, v3, :cond_80

    const/16 p2, 0xd

    goto :goto_8d

    .line 674
    :cond_80
    const/16 v3, 0x6e

    if-ne p2, v3, :cond_87

    const/16 p2, 0xa

    goto :goto_8d

    .line 675
    :cond_87
    const/16 v3, 0x66

    if-ne p2, v3, :cond_8d

    const/16 p2, 0xc

    .line 676
    :cond_8d
    :goto_8d
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p2, v4

    goto :goto_24

    .line 679
    .end local v4    # "off":I
    .local v3, "off":I
    :cond_92
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p2, v3

    goto :goto_24

    .line 682
    .end local v3    # "off":I
    .local p2, "off":I
    :cond_97
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_9c
    .sparse-switch
        0x30 -> :sswitch_5c
        0x31 -> :sswitch_5c
        0x32 -> :sswitch_5c
        0x33 -> :sswitch_5c
        0x34 -> :sswitch_5c
        0x35 -> :sswitch_5c
        0x36 -> :sswitch_5c
        0x37 -> :sswitch_5c
        0x38 -> :sswitch_5c
        0x39 -> :sswitch_5c
        0x41 -> :sswitch_54
        0x42 -> :sswitch_54
        0x43 -> :sswitch_54
        0x44 -> :sswitch_54
        0x45 -> :sswitch_54
        0x46 -> :sswitch_54
        0x61 -> :sswitch_4c
        0x62 -> :sswitch_4c
        0x63 -> :sswitch_4c
        0x64 -> :sswitch_4c
        0x65 -> :sswitch_4c
        0x66 -> :sswitch_4c
    .end sparse-switch
.end method

.method private greylist saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 12
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    .line 692
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 693
    .local v0, "len":I
    mul-int/lit8 v1, v0, 0x2

    .line 694
    .local v1, "bufLen":I
    if-gez v1, :cond_b

    .line 695
    const v1, 0x7fffffff

    .line 697
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 698
    .local v2, "outBuffer":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HexFormat;->withUpperCase()Ljava/util/HexFormat;

    move-result-object v3

    .line 699
    .local v3, "hex":Ljava/util/HexFormat;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_19
    if-ge v4, v0, :cond_91

    .line 700
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 703
    .local v5, "aChar":C
    const/16 v6, 0x3d

    const/16 v7, 0x5c

    if-le v5, v6, :cond_36

    const/16 v6, 0x7f

    if-ge v5, v6, :cond_36

    .line 704
    if-ne v5, v7, :cond_32

    .line 705
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    goto :goto_8e

    .line 708
    :cond_32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    goto :goto_8e

    .line 711
    :cond_36
    const/16 v6, 0x20

    sparse-switch v5, :sswitch_data_96

    .line 732
    if-lt v5, v6, :cond_7a

    const/16 v6, 0x7e

    if-le v5, v6, :cond_78

    goto :goto_7a

    .line 729
    :sswitch_42
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    goto :goto_8e

    .line 713
    :sswitch_49
    if-eqz v4, :cond_4d

    if-eqz p2, :cond_50

    .line 714
    :cond_4d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    :cond_50
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    goto :goto_8e

    .line 721
    :sswitch_54
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x72

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    goto :goto_8e

    .line 723
    :sswitch_5d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x66

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    goto :goto_8e

    .line 719
    :sswitch_66
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x6e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    goto :goto_8e

    .line 717
    :sswitch_6f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x74

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    goto :goto_8e

    .line 732
    :cond_78
    const/4 v6, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v6, 0x1

    :goto_7b
    and-int/2addr v6, p3

    if-eqz v6, :cond_8b

    .line 733
    const-string v6, "\\u"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v3, v5}, Ljava/util/HexFormat;->toHexDigits(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 736
    :cond_8b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    .end local v5    # "aChar":C
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 740
    .end local v4    # "x":I
    :cond_91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :sswitch_data_96
    .sparse-switch
        0x9 -> :sswitch_6f
        0xa -> :sswitch_66
        0xc -> :sswitch_5d
        0xd -> :sswitch_54
        0x20 -> :sswitch_49
        0x21 -> :sswitch_42
        0x23 -> :sswitch_42
        0x3a -> :sswitch_42
        0x3d -> :sswitch_42
    .end sparse-switch
.end method

.method private greylist-max-o store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "comments"    # Ljava/lang/String;
    .param p3, "escUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    if-eqz p2, :cond_5

    .line 911
    invoke-static {p1, p2}, Ljava/util/Properties;->writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    .line 913
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 915
    monitor-enter p0

    .line 916
    :try_start_28
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 917
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 918
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 919
    .local v3, "val":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 923
    .end local v2    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 924
    .end local v3    # "val":Ljava/lang/String;
    .local v2, "val":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 926
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "val":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_30

    .line 927
    :cond_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_28 .. :try_end_71} :catchall_75

    .line 928
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 929
    return-void

    .line 927
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0
.end method

.method private static greylist-max-o writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .registers 12
    .param p0, "bw"    # Ljava/io/BufferedWriter;
    .param p1, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HexFormat;->withUpperCase()Ljava/util/HexFormat;

    move-result-object v0

    .line 746
    .local v0, "hex":Ljava/util/HexFormat;
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 748
    .local v2, "len":I
    const/4 v3, 0x0

    .line 749
    .local v3, "current":I
    const/4 v4, 0x0

    .line 750
    .local v4, "last":I
    :goto_13
    if-ge v3, v2, :cond_71

    .line 751
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 752
    .local v5, "c":C
    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0xff

    if-gt v5, v8, :cond_25

    if-eq v5, v7, :cond_25

    if-ne v5, v6, :cond_6d

    .line 753
    :cond_25
    if-eq v4, v3, :cond_2e

    .line 754
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 755
    :cond_2e
    if-le v5, v8, :cond_3d

    .line 756
    const-string v6, "\\u"

    invoke-virtual {p0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0, v5}, Ljava/util/HexFormat;->toHexDigits(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_6b

    .line 759
    :cond_3d
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 760
    if-ne v5, v6, :cond_50

    add-int/lit8 v6, v2, -0x1

    if-eq v3, v6, :cond_50

    add-int/lit8 v6, v3, 0x1

    .line 762
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_50

    .line 763
    add-int/lit8 v3, v3, 0x1

    .line 765
    :cond_50
    add-int/lit8 v6, v2, -0x1

    if-eq v3, v6, :cond_68

    add-int/lit8 v6, v3, 0x1

    .line 766
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_6b

    add-int/lit8 v6, v3, 0x1

    .line 767
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-eq v6, v7, :cond_6b

    .line 768
    :cond_68
    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 770
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v3, 0x1

    .line 772
    :cond_6d
    nop

    .end local v5    # "c":C
    add-int/lit8 v3, v3, 0x1

    .line 773
    goto :goto_13

    .line 774
    :cond_71
    if-eq v4, v3, :cond_7a

    .line 775
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 776
    :cond_7a
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 777
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api clear()V
    .registers 2

    monitor-enter p0

    .line 1340
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1341
    monitor-exit p0

    return-void

    .line 1339
    .end local p0    # "this":Ljava/util/Properties;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    .line 1506
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Properties;->cloneHashtable()Ljava/util/Hashtable;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    .line 1507
    .local v0, "clone":Ljava/util/Properties;
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 1508
    monitor-exit p0

    return-object v0

    .line 1505
    .end local v0    # "clone":Ljava/util/Properties;
    .end local p0    # "this":Ljava/util/Properties;
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public declared-synchronized whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 1489
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1489
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 1477
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1477
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;*>;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 1483
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1483
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 1305
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1315
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 1310
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1300
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/util/Properties$EntrySet;

    iget-object v1, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Properties$EntrySet;-><init>(Ljava/util/Set;Ljava/util/Properties-IA;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1431
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1431
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "o":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1446
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1447
    monitor-exit p0

    return-void

    .line 1445
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1320
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1441
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1127
    .local v0, "oval":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1129
    .local v1, "sval":Ljava/lang/String;
    :goto_f
    if-nez v1, :cond_1b

    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    move-object v3, v2

    .local v3, "defaults":Ljava/util/Properties;
    if-eqz v2, :cond_1b

    invoke-virtual {v3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .end local v3    # "defaults":Ljava/util/Properties;
    :cond_1b
    move-object v2, v1

    :goto_1c
    return-object v2
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1146
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 2

    monitor-enter p0

    .line 1436
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1436
    .end local p0    # "this":Ljava/util/Properties;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1288
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1294
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api list(Ljava/io/PrintStream;)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 1203
    const-string v0, "-- listing properties --"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1205
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Map;)V

    .line 1206
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1207
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1208
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1209
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_4f

    .line 1210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x25

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1212
    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1213
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_15

    .line 1214
    :cond_6a
    return-void
.end method

.method public whitelist test-api list(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1231
    const-string v0, "-- listing properties --"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1233
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Map;)V

    .line 1234
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1235
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1236
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1237
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_4f

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x25

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1240
    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_15

    .line 1242
    :cond_6a
    return-void
.end method

.method public declared-synchronized whitelist test-api load(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 406
    :try_start_1
    const-string v0, "inStream parameter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 408
    monitor-exit p0

    return-void

    .line 405
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "inStream":Ljava/io/InputStream;
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api load(Ljava/io/Reader;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_1
    const-string v0, "reader parameter is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    new-instance v0, Ljava/util/Properties$LineReader;

    invoke-direct {v0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 382
    monitor-exit p0

    return-void

    .line 379
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "reader":Ljava/io/Reader;
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized whitelist test-api loadFromXML(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    monitor-enter p0

    .line 973
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p0, v0}, Ljava/util/XMLUtils;->load(Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 974
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 975
    monitor-exit p0

    return-void

    .line 972
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "in":Ljava/io/InputStream;
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 1495
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1495
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api propertyNames()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .line 1165
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1166
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Map;)V

    .line 1167
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1325
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1325
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    .line 1335
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1336
    monitor-exit p0

    return-void

    .line 1334
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1456
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1456
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method blacklist readHashtable(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1550
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1553
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1554
    .local v0, "origlength":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1557
    .local v1, "elements":I
    if-ltz v1, :cond_37

    .line 1568
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;

    move-result-object v2

    const-class v3, [Ljava/util/Map$Entry;

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    div-double/2addr v4, v6

    double-to-int v4, v4

    .line 1569
    invoke-static {v4}, Ljava/util/HashMap;->tableSizeFor(I)I

    move-result v4

    invoke-interface {v2, p1, v3, v4}, Ljdk/internal/access/JavaObjectInputStreamAccess;->checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V

    .line 1572
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1575
    .local v2, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_24
    if-lez v1, :cond_34

    .line 1576
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1577
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1578
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 1580
    :cond_34
    iput-object v2, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1581
    return-void

    .line 1558
    .end local v2    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_37
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal # of Elements: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api rehash()V
    .registers 1

    .line 1502
    return-void
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1330
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1330
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1461
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1461
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1471
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1471
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1466
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 1466
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "oldValue":Ljava/lang/Object;
    .end local p3    # "newValue":Ljava/lang/Object;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "*>;)V"
        }
    .end annotation

    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    monitor-enter p0

    .line 1451
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->replaceAll(Ljava/util/function/BiFunction;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1452
    monitor-exit p0

    return-void

    .line 1450
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;*>;"
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public whitelist test-api save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 800
    goto :goto_5

    .line 799
    :catch_4
    move-exception v0

    .line 801
    :goto_5
    return-void
.end method

.method public declared-synchronized whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 228
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 228
    .end local p0    # "this":Ljava/util/Properties;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1283
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 905
    return-void
.end method

.method public whitelist test-api store(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 853
    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/io/BufferedWriter;

    goto :goto_d

    .line 854
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :goto_d
    nop

    .line 853
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    .line 857
    return-void
.end method

.method public whitelist test-api storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 1002
    return-void
.end method

.method public whitelist test-api storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 1065
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1064
    invoke-static {p0, v0, p2, v1}, Ljava/util/XMLUtils;->save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method public whitelist test-api storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    const-string v0, "OutputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1107
    const-string v0, "Charset"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1111
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    return-void
.end method

.method public whitelist test-api stringPropertyNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Map;)V

    .line 1191
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 1345
    :try_start_1
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 1345
    .end local p0    # "this":Ljava/util/Properties;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method blacklist writeHashtable(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Ljava/util/Properties;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1518
    .local v0, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1520
    .local v1, "entryStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1521
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_15

    .line 1526
    :cond_30
    const/high16 v2, 0x3f400000    # 0.75f

    .line 1527
    .local v2, "loadFactor":F
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1528
    .local v3, "count":I
    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v4, v4

    div-int/lit8 v5, v3, 0x14

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    .line 1529
    .local v4, "length":I
    if-le v4, v3, :cond_48

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_48

    .line 1530
    add-int/lit8 v4, v4, -0x1

    .line 1532
    :cond_48
    monitor-enter v0

    .line 1533
    :try_start_49
    invoke-virtual {p0, p1, v4, v2}, Ljava/util/Properties;->defaultWriteHashtable(Ljava/io/ObjectOutputStream;IF)V

    .line 1534
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_66

    .line 1537
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1538
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1541
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_59
    if-ltz v5, :cond_65

    .line 1542
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1541
    add-int/lit8 v5, v5, -0x1

    goto :goto_59

    .line 1544
    .end local v5    # "i":I
    :cond_65
    return-void

    .line 1534
    :catchall_66
    move-exception v5

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v5
.end method

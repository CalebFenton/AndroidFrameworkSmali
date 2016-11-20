.class public Ljava/util/Properties;
.super Ljava/util/Hashtable;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Properties$LineReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final hexDigit:[C

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1112
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/util/Properties;->hexDigit:[C

    #@9
    .line 118
    return-void

    #@a
    .line 1112
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@4
    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "defaults"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    #@3
    .line 145
    iput-object p1, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@5
    .line 144
    return-void
.end method

.method private declared-synchronized enumerate(Ljava/util/Hashtable;)V
    .locals 3
    .param p1, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1076
    :try_start_0
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1077
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@7
    invoke-direct {v2, p1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    #@a
    .line 1079
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@d
    move-result-object v0

    #@e
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 1080
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    .line 1081
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    goto :goto_0

    #@22
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0

    #@24
    throw v2

    #@25
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    monitor-exit p0

    #@26
    .line 1075
    return-void
.end method

.method private declared-synchronized enumerateStringProperties(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    #@1
    .line 1091
    :try_start_0
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1092
    iget-object v3, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@7
    invoke-direct {v3, p1}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    #@a
    .line 1094
    :cond_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@d
    move-result-object v0

    #@e
    .local v0, "e":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 1095
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .line 1096
    .local v1, "k":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 1097
    .local v2, "v":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    #@1e
    if-eqz v3, :cond_1

    #@20
    instance-of v3, v2, Ljava/lang/String;

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 1098
    check-cast v1, Ljava/lang/String;

    #@26
    .end local v1    # "k":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    #@28
    .end local v2    # "v":Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .end local v0    # "e":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    #@2d
    monitor-exit p0

    #@2e
    throw v3

    #@2f
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_2
    monitor-exit p0

    #@30
    .line 1090
    return-void
.end method

.method private load0(Ljava/util/Properties$LineReader;)V
    .locals 14
    .param p1, "lr"    # Ljava/util/Properties$LineReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x3d

    #@2
    const/16 v12, 0x3a

    #@4
    const/4 v11, 0x0

    #@5
    .line 346
    const/16 v9, 0x400

    #@7
    new-array v1, v9, [C

    #@9
    .line 354
    .local v1, "convtBuf":[C
    :goto_0
    invoke-virtual {p1}, Ljava/util/Properties$LineReader;->readLine()I

    #@c
    move-result v5

    #@d
    .local v5, "limit":I
    if-ltz v5, :cond_b

    #@f
    .line 355
    const/4 v0, 0x0

    #@10
    .line 356
    .local v0, "c":C
    const/4 v4, 0x0

    #@11
    .line 357
    .local v4, "keyLen":I
    move v8, v5

    #@12
    .line 358
    .local v8, "valueStart":I
    const/4 v2, 0x0

    #@13
    .line 361
    .local v2, "hasSep":Z
    const/4 v6, 0x0

    #@14
    .line 362
    .end local v0    # "c":C
    .local v6, "precedingBackslash":Z
    :goto_1
    if-ge v4, v5, :cond_4

    #@16
    .line 363
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@18
    aget-char v0, v9, v4

    #@1a
    .line 365
    .local v0, "c":C
    if-eq v0, v13, :cond_0

    #@1c
    if-ne v0, v12, :cond_1

    #@1e
    :cond_0
    if-eqz v6, :cond_3

    #@20
    .line 369
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@23
    move-result v9

    #@24
    if-eqz v9, :cond_2

    #@26
    if-eqz v6, :cond_7

    #@28
    .line 373
    :cond_2
    const/16 v9, 0x5c

    #@2a
    if-ne v0, v9, :cond_9

    #@2c
    .line 374
    if-eqz v6, :cond_8

    #@2e
    const/4 v6, 0x0

    #@2f
    .line 378
    :goto_2
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_1

    #@32
    .line 366
    :cond_3
    add-int/lit8 v8, v4, 0x1

    #@34
    .line 367
    const/4 v2, 0x1

    #@35
    .line 380
    .end local v0    # "c":C
    :cond_4
    :goto_3
    if-ge v8, v5, :cond_a

    #@37
    .line 381
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@39
    aget-char v0, v9, v8

    #@3b
    .line 382
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@3e
    move-result v9

    #@3f
    if-nez v9, :cond_6

    #@41
    .line 383
    if-nez v2, :cond_a

    #@43
    if-eq v0, v13, :cond_5

    #@45
    if-ne v0, v12, :cond_a

    #@47
    .line 384
    :cond_5
    const/4 v2, 0x1

    #@48
    .line 389
    :cond_6
    add-int/lit8 v8, v8, 0x1

    #@4a
    goto :goto_3

    #@4b
    .line 370
    :cond_7
    add-int/lit8 v8, v4, 0x1

    #@4d
    .line 371
    goto :goto_3

    #@4e
    .line 374
    :cond_8
    const/4 v6, 0x1

    #@4f
    goto :goto_2

    #@50
    .line 376
    :cond_9
    const/4 v6, 0x0

    #@51
    goto :goto_2

    #@52
    .line 391
    .end local v0    # "c":C
    :cond_a
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@54
    invoke-direct {p0, v9, v11, v4, v1}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 392
    .local v3, "key":Ljava/lang/String;
    iget-object v9, p1, Ljava/util/Properties$LineReader;->lineBuf:[C

    #@5a
    sub-int v10, v5, v8

    #@5c
    invoke-direct {p0, v9, v8, v10, v1}, Ljava/util/Properties;->loadConvert([CII[C)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    .line 393
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p0, v3, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_0

    #@64
    .line 345
    .end local v2    # "hasSep":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyLen":I
    .end local v6    # "precedingBackslash":Z
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "valueStart":I
    :cond_b
    return-void
.end method

.method private loadConvert([CII[C)Ljava/lang/String;
    .locals 11
    .param p1, "in"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "convtBuf"    # [C

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 534
    array-length v9, p4

    #@2
    if-ge v9, p3, :cond_1

    #@4
    .line 535
    mul-int/lit8 v3, p3, 0x2

    #@6
    .line 536
    .local v3, "newLen":I
    if-gez v3, :cond_0

    #@8
    .line 537
    const v3, 0x7fffffff

    #@b
    .line 539
    :cond_0
    new-array p4, v3, [C

    #@d
    .line 542
    .end local v3    # "newLen":I
    :cond_1
    move-object v5, p4

    #@e
    .line 543
    .local v5, "out":[C
    const/4 v6, 0x0

    #@f
    .line 544
    .local v6, "outLen":I
    add-int v1, p2, p3

    #@11
    .local v1, "end":I
    move v7, v6

    #@12
    .end local v6    # "outLen":I
    .local v7, "outLen":I
    move v4, p2

    #@13
    .line 546
    .end local p2    # "off":I
    .local v4, "off":I
    :goto_0
    if-ge v4, v1, :cond_9

    #@15
    .line 547
    add-int/lit8 p2, v4, 0x1

    #@17
    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v4

    #@19
    .line 548
    .local v0, "aChar":C
    const/16 v9, 0x5c

    #@1b
    if-ne v0, v9, :cond_8

    #@1d
    .line 549
    add-int/lit8 v4, p2, 0x1

    #@1f
    .end local p2    # "off":I
    .restart local v4    # "off":I
    aget-char v0, p1, p2

    #@21
    .line 550
    const/16 v9, 0x75

    #@23
    if-ne v0, v9, :cond_3

    #@25
    .line 552
    const/4 v8, 0x0

    #@26
    .line 553
    .local v8, "value":I
    const/4 v2, 0x0

    #@27
    .local v2, "i":I
    :goto_1
    const/4 v9, 0x4

    #@28
    if-ge v2, v9, :cond_2

    #@2a
    .line 554
    add-int/lit8 p2, v4, 0x1

    #@2c
    .end local v4    # "off":I
    .restart local p2    # "off":I
    aget-char v0, p1, v4

    #@2e
    .line 555
    sparse-switch v0, :sswitch_data_0

    #@31
    .line 569
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@33
    .line 570
    const-string/jumbo v10, "Malformed \\uxxxx encoding."

    #@36
    .line 569
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v9

    #@3a
    .line 558
    :sswitch_0
    shl-int/lit8 v9, v8, 0x4

    #@3c
    add-int/2addr v9, v0

    #@3d
    add-int/lit8 v8, v9, -0x30

    #@3f
    .line 553
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@41
    move v4, p2

    #@42
    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_1

    #@43
    .line 562
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :sswitch_1
    shl-int/lit8 v9, v8, 0x4

    #@45
    add-int/lit8 v9, v9, 0xa

    #@47
    add-int/2addr v9, v0

    #@48
    add-int/lit8 v8, v9, -0x61

    #@4a
    .line 563
    goto :goto_2

    #@4b
    .line 566
    :sswitch_2
    shl-int/lit8 v9, v8, 0x4

    #@4d
    add-int/lit8 v9, v9, 0xa

    #@4f
    add-int/2addr v9, v0

    #@50
    add-int/lit8 v8, v9, -0x41

    #@52
    .line 567
    goto :goto_2

    #@53
    .line 573
    .end local p2    # "off":I
    .restart local v4    # "off":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    #@55
    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    int-to-char v9, v8

    #@56
    aput-char v9, v5, v7

    #@58
    move p2, v4

    #@59
    .end local v0    # "aChar":C
    .end local v2    # "i":I
    .end local v4    # "off":I
    .end local v8    # "value":I
    .restart local p2    # "off":I
    :goto_3
    move v7, v6

    #@5a
    .end local v6    # "outLen":I
    .restart local v7    # "outLen":I
    move v4, p2

    #@5b
    .end local p2    # "off":I
    .restart local v4    # "off":I
    goto :goto_0

    #@5c
    .line 575
    .restart local v0    # "aChar":C
    :cond_3
    const/16 v9, 0x74

    #@5e
    if-ne v0, v9, :cond_5

    #@60
    const/16 v0, 0x9

    #@62
    .line 579
    .end local v0    # "aChar":C
    :cond_4
    :goto_4
    add-int/lit8 v6, v7, 0x1

    #@64
    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    #@66
    move p2, v4

    #@67
    .end local v4    # "off":I
    .restart local p2    # "off":I
    goto :goto_3

    #@68
    .line 576
    .end local v6    # "outLen":I
    .end local p2    # "off":I
    .restart local v0    # "aChar":C
    .restart local v4    # "off":I
    .restart local v7    # "outLen":I
    :cond_5
    const/16 v9, 0x72

    #@6a
    if-ne v0, v9, :cond_6

    #@6c
    const/16 v0, 0xd

    #@6e
    .local v0, "aChar":C
    goto :goto_4

    #@6f
    .line 577
    .local v0, "aChar":C
    :cond_6
    const/16 v9, 0x6e

    #@71
    if-ne v0, v9, :cond_7

    #@73
    const/16 v0, 0xa

    #@75
    .local v0, "aChar":C
    goto :goto_4

    #@76
    .line 578
    .local v0, "aChar":C
    :cond_7
    const/16 v9, 0x66

    #@78
    if-ne v0, v9, :cond_4

    #@7a
    const/16 v0, 0xc

    #@7c
    .local v0, "aChar":C
    goto :goto_4

    #@7d
    .line 582
    .end local v4    # "off":I
    .local v0, "aChar":C
    .restart local p2    # "off":I
    :cond_8
    add-int/lit8 v6, v7, 0x1

    #@7f
    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    #@81
    goto :goto_3

    #@82
    .line 585
    .end local v0    # "aChar":C
    .end local v6    # "outLen":I
    .end local p2    # "off":I
    .restart local v4    # "off":I
    .restart local v7    # "outLen":I
    :cond_9
    new-instance v9, Ljava/lang/String;

    #@84
    invoke-direct {v9, v5, v10, v7}, Ljava/lang/String;-><init>([CII)V

    #@87
    return-object v9

    #@88
    .line 555
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 10
    .param p1, "theString"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    #@0
    .prologue
    const/16 v9, 0x20

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/16 v8, 0x5c

    #@6
    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .line 596
    .local v2, "len":I
    mul-int/lit8 v1, v2, 0x2

    #@c
    .line 597
    .local v1, "bufLen":I
    if-gez v1, :cond_0

    #@e
    .line 598
    const v1, 0x7fffffff

    #@11
    .line 600
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@16
    .line 602
    .local v3, "outBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@17
    .local v4, "x":I
    :goto_0
    if-ge v4, v2, :cond_8

    #@19
    .line 603
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 606
    .local v0, "aChar":C
    const/16 v5, 0x3d

    #@1f
    if-le v0, v5, :cond_2

    #@21
    const/16 v5, 0x7f

    #@23
    if-ge v0, v5, :cond_2

    #@25
    .line 607
    if-ne v0, v8, :cond_1

    #@27
    .line 608
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2d
    .line 602
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 611
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@33
    goto :goto_1

    #@34
    .line 614
    :cond_2
    sparse-switch v0, :sswitch_data_0

    #@37
    .line 635
    if-lt v0, v9, :cond_3

    #@39
    const/16 v5, 0x7e

    #@3b
    if-le v0, v5, :cond_6

    #@3d
    :cond_3
    move v5, v6

    #@3e
    :goto_2
    and-int/2addr v5, p3

    #@3f
    if-eqz v5, :cond_7

    #@41
    .line 636
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@44
    .line 637
    const/16 v5, 0x75

    #@46
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@49
    .line 638
    shr-int/lit8 v5, v0, 0xc

    #@4b
    and-int/lit8 v5, v5, 0xf

    #@4d
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@50
    move-result v5

    #@51
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 639
    shr-int/lit8 v5, v0, 0x8

    #@56
    and-int/lit8 v5, v5, 0xf

    #@58
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@5b
    move-result v5

    #@5c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@5f
    .line 640
    shr-int/lit8 v5, v0, 0x4

    #@61
    and-int/lit8 v5, v5, 0xf

    #@63
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@66
    move-result v5

    #@67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6a
    .line 641
    and-int/lit8 v5, v0, 0xf

    #@6c
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@6f
    move-result v5

    #@70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@73
    goto :goto_1

    #@74
    .line 616
    :sswitch_0
    if-eqz v4, :cond_4

    #@76
    if-eqz p2, :cond_5

    #@78
    .line 617
    :cond_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7b
    .line 618
    :cond_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7e
    goto :goto_1

    #@7f
    .line 620
    :sswitch_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@82
    const/16 v5, 0x74

    #@84
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@87
    goto :goto_1

    #@88
    .line 622
    :sswitch_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8b
    const/16 v5, 0x6e

    #@8d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@90
    goto :goto_1

    #@91
    .line 624
    :sswitch_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@94
    const/16 v5, 0x72

    #@96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@99
    goto :goto_1

    #@9a
    .line 626
    :sswitch_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@9d
    const/16 v5, 0x66

    #@9f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a2
    goto :goto_1

    #@a3
    .line 632
    :sswitch_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a9
    goto :goto_1

    #@aa
    :cond_6
    move v5, v7

    #@ab
    .line 635
    goto :goto_2

    #@ac
    .line 643
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@af
    goto/16 :goto_1

    #@b1
    .line 647
    .end local v0    # "aChar":C
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    return-object v5

    #@b6
    .line 614
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x20 -> :sswitch_0
        0x21 -> :sswitch_5
        0x23 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3d -> :sswitch_5
    .end sparse-switch
.end method

.method private store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "bw"    # Ljava/io/BufferedWriter;
    .param p2, "comments"    # Ljava/lang/String;
    .param p3, "escUnicode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    if-eqz p2, :cond_0

    #@2
    .line 822
    invoke-static {p1, p2}, Ljava/util/Properties;->writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V

    #@5
    .line 824
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "#"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    new-instance v4, Ljava/util/Date;

    #@13
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    #@16
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@25
    .line 825
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    #@28
    .line 826
    monitor-enter p0

    #@29
    .line 827
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@2c
    move-result-object v0

    #@2d
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_1

    #@33
    .line 828
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/lang/String;

    #@39
    .line 829
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/String;

    #@3f
    .line 830
    .local v2, "val":Ljava/lang/String;
    const/4 v3, 0x1

    #@40
    invoke-direct {p0, v1, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    .line 834
    const/4 v3, 0x0

    #@45
    invoke-direct {p0, v2, v3, p3}, Ljava/util/Properties;->saveConvert(Ljava/lang/String;ZZ)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    const-string/jumbo v4, "="

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {p1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@64
    .line 836
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    goto :goto_0

    #@68
    .line 826
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@69
    monitor-exit p0

    #@6a
    throw v3

    #@6b
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    monitor-exit p0

    #@6c
    .line 839
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    #@6f
    .line 819
    return-void
.end method

.method private static toHex(I)C
    .locals 2
    .param p0, "nibble"    # I

    #@0
    .prologue
    .line 1108
    sget-object v0, Ljava/util/Properties;->hexDigit:[C

    #@2
    and-int/lit8 v1, p0, 0xf

    #@4
    aget-char v0, v0, v1

    #@6
    return v0
.end method

.method private static writeComments(Ljava/io/BufferedWriter;Ljava/lang/String;)V
    .locals 10
    .param p0, "bw"    # Ljava/io/BufferedWriter;
    .param p1, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xff

    #@2
    const/16 v8, 0xd

    #@4
    const/16 v7, 0xa

    #@6
    .line 652
    const-string/jumbo v5, "#"

    #@9
    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@c
    .line 653
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    .line 654
    .local v3, "len":I
    const/4 v1, 0x0

    #@11
    .line 655
    .local v1, "current":I
    const/4 v2, 0x0

    #@12
    .line 656
    .local v2, "last":I
    const/4 v5, 0x6

    #@13
    new-array v4, v5, [C

    #@15
    .line 657
    .local v4, "uu":[C
    const/16 v5, 0x5c

    #@17
    const/4 v6, 0x0

    #@18
    aput-char v5, v4, v6

    #@1a
    .line 658
    const/16 v5, 0x75

    #@1c
    const/4 v6, 0x1

    #@1d
    aput-char v5, v4, v6

    #@1f
    .line 659
    :goto_0
    if-ge v1, v3, :cond_8

    #@21
    .line 660
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v0

    #@25
    .line 661
    .local v0, "c":C
    if-gt v0, v9, :cond_0

    #@27
    if-ne v0, v7, :cond_4

    #@29
    .line 662
    :cond_0
    :goto_1
    if-eq v2, v1, :cond_1

    #@2b
    .line 663
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@32
    .line 664
    :cond_1
    if-le v0, v9, :cond_5

    #@34
    .line 665
    shr-int/lit8 v5, v0, 0xc

    #@36
    and-int/lit8 v5, v5, 0xf

    #@38
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@3b
    move-result v5

    #@3c
    const/4 v6, 0x2

    #@3d
    aput-char v5, v4, v6

    #@3f
    .line 666
    shr-int/lit8 v5, v0, 0x8

    #@41
    and-int/lit8 v5, v5, 0xf

    #@43
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@46
    move-result v5

    #@47
    const/4 v6, 0x3

    #@48
    aput-char v5, v4, v6

    #@4a
    .line 667
    shr-int/lit8 v5, v0, 0x4

    #@4c
    and-int/lit8 v5, v5, 0xf

    #@4e
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@51
    move-result v5

    #@52
    const/4 v6, 0x4

    #@53
    aput-char v5, v4, v6

    #@55
    .line 668
    and-int/lit8 v5, v0, 0xf

    #@57
    invoke-static {v5}, Ljava/util/Properties;->toHex(I)C

    #@5a
    move-result v5

    #@5b
    const/4 v6, 0x5

    #@5c
    aput-char v5, v4, v6

    #@5e
    .line 669
    new-instance v5, Ljava/lang/String;

    #@60
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    #@63
    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@66
    .line 682
    :cond_2
    :goto_2
    add-int/lit8 v2, v1, 0x1

    #@68
    .line 684
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 661
    :cond_4
    if-ne v0, v8, :cond_3

    #@6d
    goto :goto_1

    #@6e
    .line 671
    :cond_5
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@71
    .line 672
    if-ne v0, v8, :cond_6

    #@73
    .line 673
    add-int/lit8 v5, v3, -0x1

    #@75
    if-eq v1, v5, :cond_6

    #@77
    .line 674
    add-int/lit8 v5, v1, 0x1

    #@79
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@7c
    move-result v5

    #@7d
    if-ne v5, v7, :cond_6

    #@7f
    .line 675
    add-int/lit8 v1, v1, 0x1

    #@81
    .line 677
    :cond_6
    add-int/lit8 v5, v3, -0x1

    #@83
    if-eq v1, v5, :cond_7

    #@85
    .line 678
    add-int/lit8 v5, v1, 0x1

    #@87
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v5

    #@8b
    const/16 v6, 0x23

    #@8d
    if-eq v5, v6, :cond_2

    #@8f
    .line 679
    add-int/lit8 v5, v1, 0x1

    #@91
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@94
    move-result v5

    #@95
    const/16 v6, 0x21

    #@97
    if-eq v5, v6, :cond_2

    #@99
    .line 680
    :cond_7
    const-string/jumbo v5, "#"

    #@9c
    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@9f
    goto :goto_2

    #@a0
    .line 686
    .end local v0    # "c":C
    :cond_8
    if-eq v2, v1, :cond_9

    #@a2
    .line 687
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {p0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@a9
    .line 688
    :cond_9
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    #@ac
    .line 651
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 952
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 953
    .local v0, "oval":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    #@7
    if-eqz v2, :cond_0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    move-object v1, v0

    #@c
    .line 954
    .end local v0    # "oval":Ljava/lang/Object;
    .local v1, "sval":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    #@e
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@10
    if-eqz v2, :cond_1

    #@12
    iget-object v2, p0, Ljava/util/Properties;->defaults:Ljava/util/Properties;

    #@14
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .end local v1    # "sval":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 971
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 972
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    #@7
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    #@8
    goto :goto_0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 1028
    const-string/jumbo v4, "-- listing properties --"

    #@3
    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 1029
    new-instance v1, Ljava/util/Hashtable;

    #@8
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@b
    .line 1030
    .local v1, "h":Ljava/util/Hashtable;
    invoke-direct {p0, v1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    #@e
    .line 1031
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@11
    move-result-object v0

    #@12
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 1032
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 1033
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    .line 1034
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@27
    move-result v4

    #@28
    const/16 v5, 0x28

    #@2a
    if-le v4, v5, :cond_0

    #@2c
    .line 1035
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const/4 v5, 0x0

    #@32
    const/16 v6, 0x25

    #@34
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, "..."

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 1037
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "="

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 1027
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 1056
    const-string/jumbo v4, "-- listing properties --"

    #@3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 1057
    new-instance v1, Ljava/util/Hashtable;

    #@8
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    #@b
    .line 1058
    .local v1, "h":Ljava/util/Hashtable;
    invoke-direct {p0, v1}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    #@e
    .line 1059
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@11
    move-result-object v0

    #@12
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 1060
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 1061
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Ljava/lang/String;

    #@24
    .line 1062
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@27
    move-result v4

    #@28
    const/16 v5, 0x28

    #@2a
    if-le v4, v5, :cond_0

    #@2c
    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const/4 v5, 0x0

    #@32
    const/16 v6, 0x25

    #@34
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, "..."

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    .line 1065
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    const-string/jumbo v5, "="

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 1055
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 342
    :try_start_0
    new-instance v0, Ljava/util/Properties$LineReader;

    #@3
    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/InputStream;)V

    #@6
    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 341
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 318
    :try_start_0
    new-instance v0, Ljava/util/Properties$LineReader;

    #@3
    invoke-direct {v0, p0, p1}, Ljava/util/Properties$LineReader;-><init>(Ljava/util/Properties;Ljava/io/Reader;)V

    #@6
    invoke-direct {p0, v0}, Ljava/util/Properties;->load0(Ljava/util/Properties$LineReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 317
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized loadFromXML(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/InvalidPropertiesFormatException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 867
    if-nez p1, :cond_0

    #@3
    .line 868
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 869
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/util/XMLUtils;->load(Ljava/util/Properties;Ljava/io/InputStream;)V

    #@f
    .line 870
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 865
    return-void
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 990
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 991
    .local v0, "h":Ljava/util/Hashtable;
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerate(Ljava/util/Hashtable;)V

    #@8
    .line 992
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 710
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 708
    :goto_0
    return-void

    #@4
    .line 711
    :catch_0
    move-exception v0

    #@5
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 162
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v0

    #@5
    monitor-exit p0

    #@6
    return-object v0

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 813
    new-instance v0, Ljava/io/BufferedWriter;

    #@2
    new-instance v1, Ljava/io/OutputStreamWriter;

    #@4
    const-string/jumbo v2, "8859_1"

    #@7
    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@a
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@d
    .line 815
    const/4 v1, 0x1

    #@e
    .line 813
    invoke-direct {p0, v0, p2, v1}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    #@11
    .line 811
    return-void
.end method

.method public store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 766
    instance-of v0, p1, Ljava/io/BufferedWriter;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Ljava/io/BufferedWriter;

    #@6
    .line 769
    .end local p1    # "writer":Ljava/io/Writer;
    :goto_0
    const/4 v0, 0x0

    #@7
    .line 766
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Properties;->store0(Ljava/io/BufferedWriter;Ljava/lang/String;Z)V

    #@a
    .line 764
    return-void

    #@b
    .line 767
    .restart local p1    # "writer":Ljava/io/Writer;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    #@d
    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    #@10
    move-object p1, v0

    #@11
    goto :goto_0
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 896
    if-nez p1, :cond_0

    #@2
    .line 897
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 898
    :cond_0
    const-string/jumbo v0, "UTF-8"

    #@b
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 894
    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 935
    if-nez p1, :cond_0

    #@2
    .line 936
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 937
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/util/XMLUtils;->save(Ljava/util/Properties;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 933
    return-void
.end method

.method public stringPropertyNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1014
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 1015
    .local v0, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Ljava/util/Properties;->enumerateStringProperties(Ljava/util/Hashtable;)V

    #@8
    .line 1016
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

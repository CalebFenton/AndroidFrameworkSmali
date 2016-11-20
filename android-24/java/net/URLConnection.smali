.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# static fields
.field private static final contentClassPrefix:Ljava/lang/String; = "sun.net.www.content"

.field private static final contentPathProp:Ljava/lang/String; = "java.content.handler.pkgs"

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field static factory:Ljava/net/ContentHandlerFactory;

.field private static fileNameMap:Ljava/net/FileNameMap;

.field private static handlers:Ljava/util/Hashtable;


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private readTimeout:I

.field private requests:Lsun/net/www/MessageHeader;

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 217
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@3
    .line 238
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@6
    .line 1228
    new-instance v0, Ljava/util/Hashtable;

    #@8
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@b
    sput-object v0, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    #@d
    .line 170
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 200
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    #@7
    .line 215
    iput-boolean v2, p0, Ljava/net/URLConnection;->doOutput:Z

    #@9
    .line 236
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@b
    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    #@d
    .line 255
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@f
    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    #@11
    .line 275
    const-wide/16 v0, 0x0

    #@13
    iput-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    #@15
    .line 282
    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    #@17
    .line 457
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@19
    .line 456
    return-void
.end method

.method private static checkfpx(Ljava/io/InputStream;)Z
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1610
    const/16 v10, 0x100

    #@2
    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    #@5
    .line 1614
    const-wide/16 v8, 0x1c

    #@7
    .line 1617
    .local v8, "toSkip":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    #@a
    move-result-wide v2

    #@b
    .line 1614
    .local v2, "posn":J
    const-wide/16 v10, 0x1c

    #@d
    .line 1617
    cmp-long v10, v2, v10

    #@f
    if-gez v10, :cond_0

    #@11
    .line 1618
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@14
    .line 1619
    const/4 v10, 0x0

    #@15
    return v10

    #@16
    .line 1622
    :cond_0
    const/16 v10, 0x10

    #@18
    new-array v1, v10, [I

    #@1a
    .line 1623
    .local v1, "c":[I
    const/4 v10, 0x2

    #@1b
    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    #@1e
    move-result v10

    #@1f
    if-gez v10, :cond_1

    #@21
    .line 1624
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@24
    .line 1625
    const/4 v10, 0x0

    #@25
    return v10

    #@26
    .line 1628
    :cond_1
    const/4 v10, 0x0

    #@27
    aget v0, v1, v10

    #@29
    .line 1630
    .local v0, "byteOrder":I
    const-wide/16 v10, 0x2

    #@2b
    add-long/2addr v2, v10

    #@2c
    .line 1632
    const/4 v10, 0x2

    #@2d
    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    #@30
    move-result v10

    #@31
    if-gez v10, :cond_2

    #@33
    .line 1633
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@36
    .line 1634
    const/4 v10, 0x0

    #@37
    return v10

    #@38
    .line 1637
    :cond_2
    const/16 v10, 0xfe

    #@3a
    if-ne v0, v10, :cond_3

    #@3c
    .line 1638
    const/4 v10, 0x0

    #@3d
    aget v5, v1, v10

    #@3f
    .line 1639
    .local v5, "uSectorShift":I
    const/4 v10, 0x1

    #@40
    aget v10, v1, v10

    #@42
    shl-int/lit8 v10, v10, 0x8

    #@44
    add-int/2addr v5, v10

    #@45
    .line 1646
    :goto_0
    const-wide/16 v10, 0x2

    #@47
    add-long/2addr v2, v10

    #@48
    .line 1647
    const-wide/16 v10, 0x30

    #@4a
    sub-long v8, v10, v2

    #@4c
    .line 1648
    const-wide/16 v6, 0x0

    #@4e
    .line 1649
    .local v6, "skipped":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    #@51
    move-result-wide v6

    #@52
    cmp-long v10, v6, v8

    #@54
    if-gez v10, :cond_4

    #@56
    .line 1650
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@59
    .line 1651
    const/4 v10, 0x0

    #@5a
    return v10

    #@5b
    .line 1642
    .end local v5    # "uSectorShift":I
    .end local v6    # "skipped":J
    :cond_3
    const/4 v10, 0x0

    #@5c
    aget v10, v1, v10

    #@5e
    shl-int/lit8 v5, v10, 0x8

    #@60
    .line 1643
    .restart local v5    # "uSectorShift":I
    const/4 v10, 0x1

    #@61
    aget v10, v1, v10

    #@63
    add-int/2addr v5, v10

    #@64
    goto :goto_0

    #@65
    .line 1653
    .restart local v6    # "skipped":J
    :cond_4
    add-long/2addr v2, v6

    #@66
    .line 1655
    const/4 v10, 0x4

    #@67
    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    #@6a
    move-result v10

    #@6b
    if-gez v10, :cond_5

    #@6d
    .line 1656
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@70
    .line 1657
    const/4 v10, 0x0

    #@71
    return v10

    #@72
    .line 1661
    :cond_5
    const/16 v10, 0xfe

    #@74
    if-ne v0, v10, :cond_6

    #@76
    .line 1662
    const/4 v10, 0x0

    #@77
    aget v4, v1, v10

    #@79
    .line 1663
    .local v4, "sectDirStart":I
    const/4 v10, 0x1

    #@7a
    aget v10, v1, v10

    #@7c
    shl-int/lit8 v10, v10, 0x8

    #@7e
    add-int/2addr v4, v10

    #@7f
    .line 1664
    const/4 v10, 0x2

    #@80
    aget v10, v1, v10

    #@82
    shl-int/lit8 v10, v10, 0x10

    #@84
    add-int/2addr v4, v10

    #@85
    .line 1665
    const/4 v10, 0x3

    #@86
    aget v10, v1, v10

    #@88
    shl-int/lit8 v10, v10, 0x18

    #@8a
    add-int/2addr v4, v10

    #@8b
    .line 1672
    :goto_1
    const-wide/16 v10, 0x4

    #@8d
    add-long/2addr v2, v10

    #@8e
    .line 1673
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@91
    .line 1675
    const/4 v10, 0x1

    #@92
    shl-int/2addr v10, v5

    #@93
    int-to-long v10, v10

    #@94
    int-to-long v12, v4

    #@95
    mul-long/2addr v10, v12

    #@96
    const-wide/16 v12, 0x200

    #@98
    add-long/2addr v10, v12

    #@99
    const-wide/16 v12, 0x50

    #@9b
    add-long v8, v10, v12

    #@9d
    .line 1678
    const-wide/16 v10, 0x0

    #@9f
    cmp-long v10, v8, v10

    #@a1
    if-gez v10, :cond_7

    #@a3
    .line 1679
    const/4 v10, 0x0

    #@a4
    return v10

    #@a5
    .line 1667
    .end local v4    # "sectDirStart":I
    :cond_6
    const/4 v10, 0x0

    #@a6
    aget v10, v1, v10

    #@a8
    shl-int/lit8 v4, v10, 0x18

    #@aa
    .line 1668
    .restart local v4    # "sectDirStart":I
    const/4 v10, 0x1

    #@ab
    aget v10, v1, v10

    #@ad
    shl-int/lit8 v10, v10, 0x10

    #@af
    add-int/2addr v4, v10

    #@b0
    .line 1669
    const/4 v10, 0x2

    #@b1
    aget v10, v1, v10

    #@b3
    shl-int/lit8 v10, v10, 0x8

    #@b5
    add-int/2addr v4, v10

    #@b6
    .line 1670
    const/4 v10, 0x3

    #@b7
    aget v10, v1, v10

    #@b9
    add-int/2addr v4, v10

    #@ba
    goto :goto_1

    #@bb
    .line 1688
    :cond_7
    long-to-int v10, v8

    #@bc
    add-int/lit8 v10, v10, 0x30

    #@be
    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    #@c1
    .line 1690
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    #@c4
    move-result-wide v10

    #@c5
    cmp-long v10, v10, v8

    #@c7
    if-gez v10, :cond_8

    #@c9
    .line 1691
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@cc
    .line 1692
    const/4 v10, 0x0

    #@cd
    return v10

    #@ce
    .line 1707
    :cond_8
    const/16 v10, 0x10

    #@d0
    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    #@d3
    move-result v10

    #@d4
    if-gez v10, :cond_9

    #@d6
    .line 1708
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@d9
    .line 1709
    const/4 v10, 0x0

    #@da
    return v10

    #@db
    .line 1713
    :cond_9
    const/16 v10, 0xfe

    #@dd
    if-ne v0, v10, :cond_a

    #@df
    .line 1714
    const/4 v10, 0x0

    #@e0
    aget v10, v1, v10

    #@e2
    if-nez v10, :cond_a

    #@e4
    const/4 v10, 0x2

    #@e5
    aget v10, v1, v10

    #@e7
    const/16 v11, 0x61

    #@e9
    if-ne v10, v11, :cond_a

    #@eb
    const/4 v10, 0x3

    #@ec
    aget v10, v1, v10

    #@ee
    const/16 v11, 0x56

    #@f0
    if-ne v10, v11, :cond_a

    #@f2
    .line 1715
    const/4 v10, 0x4

    #@f3
    aget v10, v1, v10

    #@f5
    const/16 v11, 0x54

    #@f7
    if-ne v10, v11, :cond_a

    #@f9
    const/4 v10, 0x5

    #@fa
    aget v10, v1, v10

    #@fc
    const/16 v11, 0xc1

    #@fe
    if-ne v10, v11, :cond_a

    #@100
    const/4 v10, 0x6

    #@101
    aget v10, v1, v10

    #@103
    const/16 v11, 0xce

    #@105
    if-ne v10, v11, :cond_a

    #@107
    .line 1716
    const/4 v10, 0x7

    #@108
    aget v10, v1, v10

    #@10a
    const/16 v11, 0x11

    #@10c
    if-ne v10, v11, :cond_a

    #@10e
    const/16 v10, 0x8

    #@110
    aget v10, v1, v10

    #@112
    const/16 v11, 0x85

    #@114
    if-ne v10, v11, :cond_a

    #@116
    const/16 v10, 0x9

    #@118
    aget v10, v1, v10

    #@11a
    const/16 v11, 0x53

    #@11c
    if-ne v10, v11, :cond_a

    #@11e
    .line 1717
    const/16 v10, 0xa

    #@120
    aget v10, v1, v10

    #@122
    if-nez v10, :cond_a

    #@124
    const/16 v10, 0xb

    #@126
    aget v10, v1, v10

    #@128
    const/16 v11, 0xaa

    #@12a
    if-ne v10, v11, :cond_a

    #@12c
    const/16 v10, 0xc

    #@12e
    aget v10, v1, v10

    #@130
    if-nez v10, :cond_a

    #@132
    .line 1718
    const/16 v10, 0xd

    #@134
    aget v10, v1, v10

    #@136
    const/16 v11, 0xa1

    #@138
    if-ne v10, v11, :cond_a

    #@13a
    const/16 v10, 0xe

    #@13c
    aget v10, v1, v10

    #@13e
    const/16 v11, 0xf9

    #@140
    if-ne v10, v11, :cond_a

    #@142
    const/16 v10, 0xf

    #@144
    aget v10, v1, v10

    #@146
    const/16 v11, 0x5b

    #@148
    if-ne v10, v11, :cond_a

    #@14a
    .line 1719
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@14d
    .line 1720
    const/4 v10, 0x1

    #@14e
    return v10

    #@14f
    .line 1724
    :cond_a
    const/4 v10, 0x3

    #@150
    aget v10, v1, v10

    #@152
    if-nez v10, :cond_b

    #@154
    const/4 v10, 0x1

    #@155
    aget v10, v1, v10

    #@157
    const/16 v11, 0x61

    #@159
    if-ne v10, v11, :cond_b

    #@15b
    const/4 v10, 0x0

    #@15c
    aget v10, v1, v10

    #@15e
    const/16 v11, 0x56

    #@160
    if-ne v10, v11, :cond_b

    #@162
    .line 1725
    const/4 v10, 0x5

    #@163
    aget v10, v1, v10

    #@165
    const/16 v11, 0x54

    #@167
    if-ne v10, v11, :cond_b

    #@169
    const/4 v10, 0x4

    #@16a
    aget v10, v1, v10

    #@16c
    const/16 v11, 0xc1

    #@16e
    if-ne v10, v11, :cond_b

    #@170
    const/4 v10, 0x7

    #@171
    aget v10, v1, v10

    #@173
    const/16 v11, 0xce

    #@175
    if-ne v10, v11, :cond_b

    #@177
    .line 1726
    const/4 v10, 0x6

    #@178
    aget v10, v1, v10

    #@17a
    const/16 v11, 0x11

    #@17c
    if-ne v10, v11, :cond_b

    #@17e
    const/16 v10, 0x8

    #@180
    aget v10, v1, v10

    #@182
    const/16 v11, 0x85

    #@184
    if-ne v10, v11, :cond_b

    #@186
    const/16 v10, 0x9

    #@188
    aget v10, v1, v10

    #@18a
    const/16 v11, 0x53

    #@18c
    if-ne v10, v11, :cond_b

    #@18e
    .line 1727
    const/16 v10, 0xa

    #@190
    aget v10, v1, v10

    #@192
    if-nez v10, :cond_b

    #@194
    const/16 v10, 0xb

    #@196
    aget v10, v1, v10

    #@198
    const/16 v11, 0xaa

    #@19a
    if-ne v10, v11, :cond_b

    #@19c
    const/16 v10, 0xc

    #@19e
    aget v10, v1, v10

    #@1a0
    if-nez v10, :cond_b

    #@1a2
    .line 1728
    const/16 v10, 0xd

    #@1a4
    aget v10, v1, v10

    #@1a6
    const/16 v11, 0xa1

    #@1a8
    if-ne v10, v11, :cond_b

    #@1aa
    const/16 v10, 0xe

    #@1ac
    aget v10, v1, v10

    #@1ae
    const/16 v11, 0xf9

    #@1b0
    if-ne v10, v11, :cond_b

    #@1b2
    const/16 v10, 0xf

    #@1b4
    aget v10, v1, v10

    #@1b6
    const/16 v11, 0x5b

    #@1b8
    if-ne v10, v11, :cond_b

    #@1ba
    .line 1729
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@1bd
    .line 1730
    const/4 v10, 0x1

    #@1be
    return v10

    #@1bf
    .line 1732
    :cond_b
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    #@1c2
    .line 1733
    const/4 v10, 0x0

    #@1c3
    return v10
.end method

.method private getContentHandlerPkgPrefixes()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1370
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v2, "java.content.handler.pkgs"

    #@5
    const-string/jumbo v3, ""

    #@8
    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 1369
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    .line 1372
    .local v0, "packagePrefixList":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@14
    if-eq v0, v1, :cond_0

    #@16
    .line 1373
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "|"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 1376
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "sun.net.www.content"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    return-object v1
.end method

.method public static getDefaultAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 965
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@2
    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1189
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static declared-synchronized getFileNameMap()Ljava/net/FileNameMap;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/net/URLConnection;

    #@2
    monitor-enter v1

    #@3
    .line 312
    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 313
    new-instance v0, Ljava/net/DefaultFileNameMap;

    #@9
    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    #@c
    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    #@e
    .line 315
    :cond_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1391
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 19
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1418
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    #@3
    move-result v18

    #@4
    if-nez v18, :cond_0

    #@6
    .line 1419
    const/16 v18, 0x0

    #@8
    return-object v18

    #@9
    .line 1421
    :cond_0
    const/16 v18, 0x10

    #@b
    move-object/from16 v0, p0

    #@d
    move/from16 v1, v18

    #@f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    #@12
    .line 1422
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@15
    move-result v2

    #@16
    .line 1423
    .local v2, "c1":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@19
    move-result v10

    #@1a
    .line 1424
    .local v10, "c2":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@1d
    move-result v11

    #@1e
    .line 1425
    .local v11, "c3":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@21
    move-result v12

    #@22
    .line 1426
    .local v12, "c4":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@25
    move-result v13

    #@26
    .line 1427
    .local v13, "c5":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@29
    move-result v14

    #@2a
    .line 1428
    .local v14, "c6":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@2d
    move-result v15

    #@2e
    .line 1429
    .local v15, "c7":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@31
    move-result v16

    #@32
    .line 1430
    .local v16, "c8":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@35
    move-result v17

    #@36
    .line 1431
    .local v17, "c9":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@39
    move-result v3

    #@3a
    .line 1432
    .local v3, "c10":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@3d
    move-result v4

    #@3e
    .line 1433
    .local v4, "c11":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@41
    move-result v5

    #@42
    .line 1434
    .local v5, "c12":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@45
    move-result v6

    #@46
    .line 1435
    .local v6, "c13":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@49
    move-result v7

    #@4a
    .line 1436
    .local v7, "c14":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@4d
    move-result v8

    #@4e
    .line 1437
    .local v8, "c15":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    #@51
    move-result v9

    #@52
    .line 1438
    .local v9, "c16":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    #@55
    .line 1440
    const/16 v18, 0xca

    #@57
    move/from16 v0, v18

    #@59
    if-ne v2, v0, :cond_1

    #@5b
    const/16 v18, 0xfe

    #@5d
    move/from16 v0, v18

    #@5f
    if-ne v10, v0, :cond_1

    #@61
    const/16 v18, 0xba

    #@63
    move/from16 v0, v18

    #@65
    if-ne v11, v0, :cond_1

    #@67
    const/16 v18, 0xbe

    #@69
    move/from16 v0, v18

    #@6b
    if-ne v12, v0, :cond_1

    #@6d
    .line 1441
    const-string/jumbo v18, "application/java-vm"

    #@70
    return-object v18

    #@71
    .line 1444
    :cond_1
    const/16 v18, 0xac

    #@73
    move/from16 v0, v18

    #@75
    if-ne v2, v0, :cond_2

    #@77
    const/16 v18, 0xed

    #@79
    move/from16 v0, v18

    #@7b
    if-ne v10, v0, :cond_2

    #@7d
    .line 1446
    const-string/jumbo v18, "application/x-java-serialized-object"

    #@80
    return-object v18

    #@81
    .line 1449
    :cond_2
    const/16 v18, 0x3c

    #@83
    move/from16 v0, v18

    #@85
    if-ne v2, v0, :cond_a

    #@87
    .line 1450
    const/16 v18, 0x21

    #@89
    move/from16 v0, v18

    #@8b
    if-eq v10, v0, :cond_3

    #@8d
    .line 1451
    const/16 v18, 0x68

    #@8f
    move/from16 v0, v18

    #@91
    if-ne v10, v0, :cond_5

    #@93
    const/16 v18, 0x74

    #@95
    move/from16 v0, v18

    #@97
    if-ne v11, v0, :cond_4

    #@99
    const/16 v18, 0x6d

    #@9b
    move/from16 v0, v18

    #@9d
    if-ne v12, v0, :cond_4

    #@9f
    const/16 v18, 0x6c

    #@a1
    move/from16 v0, v18

    #@a3
    if-ne v13, v0, :cond_4

    #@a5
    .line 1457
    :cond_3
    const-string/jumbo v18, "text/html"

    #@a8
    return-object v18

    #@a9
    .line 1452
    :cond_4
    const/16 v18, 0x65

    #@ab
    move/from16 v0, v18

    #@ad
    if-ne v11, v0, :cond_5

    #@af
    const/16 v18, 0x61

    #@b1
    move/from16 v0, v18

    #@b3
    if-ne v12, v0, :cond_5

    #@b5
    const/16 v18, 0x64

    #@b7
    move/from16 v0, v18

    #@b9
    if-eq v13, v0, :cond_3

    #@bb
    .line 1453
    :cond_5
    const/16 v18, 0x62

    #@bd
    move/from16 v0, v18

    #@bf
    if-ne v10, v0, :cond_6

    #@c1
    const/16 v18, 0x6f

    #@c3
    move/from16 v0, v18

    #@c5
    if-ne v11, v0, :cond_6

    #@c7
    const/16 v18, 0x64

    #@c9
    move/from16 v0, v18

    #@cb
    if-ne v12, v0, :cond_6

    #@cd
    const/16 v18, 0x79

    #@cf
    move/from16 v0, v18

    #@d1
    if-eq v13, v0, :cond_3

    #@d3
    .line 1454
    :cond_6
    const/16 v18, 0x48

    #@d5
    move/from16 v0, v18

    #@d7
    if-ne v10, v0, :cond_8

    #@d9
    const/16 v18, 0x54

    #@db
    move/from16 v0, v18

    #@dd
    if-ne v11, v0, :cond_7

    #@df
    const/16 v18, 0x4d

    #@e1
    move/from16 v0, v18

    #@e3
    if-ne v12, v0, :cond_7

    #@e5
    const/16 v18, 0x4c

    #@e7
    move/from16 v0, v18

    #@e9
    if-eq v13, v0, :cond_3

    #@eb
    .line 1455
    :cond_7
    const/16 v18, 0x45

    #@ed
    move/from16 v0, v18

    #@ef
    if-ne v11, v0, :cond_8

    #@f1
    const/16 v18, 0x41

    #@f3
    move/from16 v0, v18

    #@f5
    if-ne v12, v0, :cond_8

    #@f7
    const/16 v18, 0x44

    #@f9
    move/from16 v0, v18

    #@fb
    if-eq v13, v0, :cond_3

    #@fd
    .line 1456
    :cond_8
    const/16 v18, 0x42

    #@ff
    move/from16 v0, v18

    #@101
    if-ne v10, v0, :cond_9

    #@103
    const/16 v18, 0x4f

    #@105
    move/from16 v0, v18

    #@107
    if-ne v11, v0, :cond_9

    #@109
    const/16 v18, 0x44

    #@10b
    move/from16 v0, v18

    #@10d
    if-ne v12, v0, :cond_9

    #@10f
    const/16 v18, 0x59

    #@111
    move/from16 v0, v18

    #@113
    if-eq v13, v0, :cond_3

    #@115
    .line 1460
    :cond_9
    const/16 v18, 0x3f

    #@117
    move/from16 v0, v18

    #@119
    if-ne v10, v0, :cond_a

    #@11b
    const/16 v18, 0x78

    #@11d
    move/from16 v0, v18

    #@11f
    if-ne v11, v0, :cond_a

    #@121
    const/16 v18, 0x6d

    #@123
    move/from16 v0, v18

    #@125
    if-ne v12, v0, :cond_a

    #@127
    const/16 v18, 0x6c

    #@129
    move/from16 v0, v18

    #@12b
    if-ne v13, v0, :cond_a

    #@12d
    const/16 v18, 0x20

    #@12f
    move/from16 v0, v18

    #@131
    if-ne v14, v0, :cond_a

    #@133
    .line 1461
    const-string/jumbo v18, "application/xml"

    #@136
    return-object v18

    #@137
    .line 1466
    :cond_a
    const/16 v18, 0xef

    #@139
    move/from16 v0, v18

    #@13b
    if-ne v2, v0, :cond_b

    #@13d
    const/16 v18, 0xbb

    #@13f
    move/from16 v0, v18

    #@141
    if-ne v10, v0, :cond_b

    #@143
    const/16 v18, 0xbf

    #@145
    move/from16 v0, v18

    #@147
    if-ne v11, v0, :cond_b

    #@149
    .line 1467
    const/16 v18, 0x3c

    #@14b
    move/from16 v0, v18

    #@14d
    if-ne v12, v0, :cond_b

    #@14f
    const/16 v18, 0x3f

    #@151
    move/from16 v0, v18

    #@153
    if-ne v13, v0, :cond_b

    #@155
    const/16 v18, 0x78

    #@157
    move/from16 v0, v18

    #@159
    if-ne v14, v0, :cond_b

    #@15b
    .line 1468
    const-string/jumbo v18, "application/xml"

    #@15e
    return-object v18

    #@15f
    .line 1473
    :cond_b
    const/16 v18, 0xfe

    #@161
    move/from16 v0, v18

    #@163
    if-ne v2, v0, :cond_c

    #@165
    const/16 v18, 0xff

    #@167
    move/from16 v0, v18

    #@169
    if-ne v10, v0, :cond_c

    #@16b
    .line 1474
    if-nez v11, :cond_c

    #@16d
    const/16 v18, 0x3c

    #@16f
    move/from16 v0, v18

    #@171
    if-ne v12, v0, :cond_c

    #@173
    if-nez v13, :cond_c

    #@175
    const/16 v18, 0x3f

    #@177
    move/from16 v0, v18

    #@179
    if-ne v14, v0, :cond_c

    #@17b
    .line 1475
    if-nez v15, :cond_c

    #@17d
    const/16 v18, 0x78

    #@17f
    move/from16 v0, v16

    #@181
    move/from16 v1, v18

    #@183
    if-ne v0, v1, :cond_c

    #@185
    .line 1476
    const-string/jumbo v18, "application/xml"

    #@188
    return-object v18

    #@189
    .line 1480
    :cond_c
    const/16 v18, 0xff

    #@18b
    move/from16 v0, v18

    #@18d
    if-ne v2, v0, :cond_d

    #@18f
    const/16 v18, 0xfe

    #@191
    move/from16 v0, v18

    #@193
    if-ne v10, v0, :cond_d

    #@195
    .line 1481
    const/16 v18, 0x3c

    #@197
    move/from16 v0, v18

    #@199
    if-ne v11, v0, :cond_d

    #@19b
    if-nez v12, :cond_d

    #@19d
    const/16 v18, 0x3f

    #@19f
    move/from16 v0, v18

    #@1a1
    if-ne v13, v0, :cond_d

    #@1a3
    if-nez v14, :cond_d

    #@1a5
    .line 1482
    const/16 v18, 0x78

    #@1a7
    move/from16 v0, v18

    #@1a9
    if-ne v15, v0, :cond_d

    #@1ab
    if-nez v16, :cond_d

    #@1ad
    .line 1483
    const-string/jumbo v18, "application/xml"

    #@1b0
    return-object v18

    #@1b1
    .line 1488
    :cond_d
    if-nez v2, :cond_e

    #@1b3
    if-nez v10, :cond_e

    #@1b5
    const/16 v18, 0xfe

    #@1b7
    move/from16 v0, v18

    #@1b9
    if-ne v11, v0, :cond_e

    #@1bb
    const/16 v18, 0xff

    #@1bd
    move/from16 v0, v18

    #@1bf
    if-ne v12, v0, :cond_e

    #@1c1
    .line 1489
    if-nez v13, :cond_e

    #@1c3
    if-nez v14, :cond_e

    #@1c5
    if-nez v15, :cond_e

    #@1c7
    const/16 v18, 0x3c

    #@1c9
    move/from16 v0, v16

    #@1cb
    move/from16 v1, v18

    #@1cd
    if-ne v0, v1, :cond_e

    #@1cf
    .line 1490
    if-nez v17, :cond_e

    #@1d1
    if-nez v3, :cond_e

    #@1d3
    if-nez v4, :cond_e

    #@1d5
    const/16 v18, 0x3f

    #@1d7
    move/from16 v0, v18

    #@1d9
    if-ne v5, v0, :cond_e

    #@1db
    .line 1491
    if-nez v6, :cond_e

    #@1dd
    if-nez v7, :cond_e

    #@1df
    if-nez v8, :cond_e

    #@1e1
    const/16 v18, 0x78

    #@1e3
    move/from16 v0, v18

    #@1e5
    if-ne v9, v0, :cond_e

    #@1e7
    .line 1492
    const-string/jumbo v18, "application/xml"

    #@1ea
    return-object v18

    #@1eb
    .line 1496
    :cond_e
    const/16 v18, 0xff

    #@1ed
    move/from16 v0, v18

    #@1ef
    if-ne v2, v0, :cond_f

    #@1f1
    const/16 v18, 0xfe

    #@1f3
    move/from16 v0, v18

    #@1f5
    if-ne v10, v0, :cond_f

    #@1f7
    if-nez v11, :cond_f

    #@1f9
    if-nez v12, :cond_f

    #@1fb
    .line 1497
    const/16 v18, 0x3c

    #@1fd
    move/from16 v0, v18

    #@1ff
    if-ne v13, v0, :cond_f

    #@201
    if-nez v14, :cond_f

    #@203
    if-nez v15, :cond_f

    #@205
    if-nez v16, :cond_f

    #@207
    .line 1498
    const/16 v18, 0x3f

    #@209
    move/from16 v0, v17

    #@20b
    move/from16 v1, v18

    #@20d
    if-ne v0, v1, :cond_f

    #@20f
    if-nez v3, :cond_f

    #@211
    if-nez v4, :cond_f

    #@213
    if-nez v5, :cond_f

    #@215
    .line 1499
    const/16 v18, 0x78

    #@217
    move/from16 v0, v18

    #@219
    if-ne v6, v0, :cond_f

    #@21b
    if-nez v7, :cond_f

    #@21d
    if-nez v8, :cond_f

    #@21f
    if-nez v9, :cond_f

    #@221
    .line 1500
    const-string/jumbo v18, "application/xml"

    #@224
    return-object v18

    #@225
    .line 1504
    :cond_f
    const/16 v18, 0x47

    #@227
    move/from16 v0, v18

    #@229
    if-ne v2, v0, :cond_10

    #@22b
    const/16 v18, 0x49

    #@22d
    move/from16 v0, v18

    #@22f
    if-ne v10, v0, :cond_10

    #@231
    const/16 v18, 0x46

    #@233
    move/from16 v0, v18

    #@235
    if-ne v11, v0, :cond_10

    #@237
    const/16 v18, 0x38

    #@239
    move/from16 v0, v18

    #@23b
    if-ne v12, v0, :cond_10

    #@23d
    .line 1505
    const-string/jumbo v18, "image/gif"

    #@240
    return-object v18

    #@241
    .line 1508
    :cond_10
    const/16 v18, 0x23

    #@243
    move/from16 v0, v18

    #@245
    if-ne v2, v0, :cond_11

    #@247
    const/16 v18, 0x64

    #@249
    move/from16 v0, v18

    #@24b
    if-ne v10, v0, :cond_11

    #@24d
    const/16 v18, 0x65

    #@24f
    move/from16 v0, v18

    #@251
    if-ne v11, v0, :cond_11

    #@253
    const/16 v18, 0x66

    #@255
    move/from16 v0, v18

    #@257
    if-ne v12, v0, :cond_11

    #@259
    .line 1509
    const-string/jumbo v18, "image/x-bitmap"

    #@25c
    return-object v18

    #@25d
    .line 1512
    :cond_11
    const/16 v18, 0x21

    #@25f
    move/from16 v0, v18

    #@261
    if-ne v2, v0, :cond_12

    #@263
    const/16 v18, 0x20

    #@265
    move/from16 v0, v18

    #@267
    if-ne v10, v0, :cond_12

    #@269
    const/16 v18, 0x58

    #@26b
    move/from16 v0, v18

    #@26d
    if-ne v11, v0, :cond_12

    #@26f
    const/16 v18, 0x50

    #@271
    move/from16 v0, v18

    #@273
    if-ne v12, v0, :cond_12

    #@275
    .line 1513
    const/16 v18, 0x4d

    #@277
    move/from16 v0, v18

    #@279
    if-ne v13, v0, :cond_12

    #@27b
    const/16 v18, 0x32

    #@27d
    move/from16 v0, v18

    #@27f
    if-ne v14, v0, :cond_12

    #@281
    .line 1514
    const-string/jumbo v18, "image/x-pixmap"

    #@284
    return-object v18

    #@285
    .line 1517
    :cond_12
    const/16 v18, 0x89

    #@287
    move/from16 v0, v18

    #@289
    if-ne v2, v0, :cond_13

    #@28b
    const/16 v18, 0x50

    #@28d
    move/from16 v0, v18

    #@28f
    if-ne v10, v0, :cond_13

    #@291
    const/16 v18, 0x4e

    #@293
    move/from16 v0, v18

    #@295
    if-ne v11, v0, :cond_13

    #@297
    .line 1518
    const/16 v18, 0x47

    #@299
    move/from16 v0, v18

    #@29b
    if-ne v12, v0, :cond_13

    #@29d
    const/16 v18, 0xd

    #@29f
    move/from16 v0, v18

    #@2a1
    if-ne v13, v0, :cond_13

    #@2a3
    const/16 v18, 0xa

    #@2a5
    move/from16 v0, v18

    #@2a7
    if-ne v14, v0, :cond_13

    #@2a9
    .line 1519
    const/16 v18, 0x1a

    #@2ab
    move/from16 v0, v18

    #@2ad
    if-ne v15, v0, :cond_13

    #@2af
    const/16 v18, 0xa

    #@2b1
    move/from16 v0, v16

    #@2b3
    move/from16 v1, v18

    #@2b5
    if-ne v0, v1, :cond_13

    #@2b7
    .line 1520
    const-string/jumbo v18, "image/png"

    #@2ba
    return-object v18

    #@2bb
    .line 1523
    :cond_13
    const/16 v18, 0xff

    #@2bd
    move/from16 v0, v18

    #@2bf
    if-ne v2, v0, :cond_16

    #@2c1
    const/16 v18, 0xd8

    #@2c3
    move/from16 v0, v18

    #@2c5
    if-ne v10, v0, :cond_16

    #@2c7
    const/16 v18, 0xff

    #@2c9
    move/from16 v0, v18

    #@2cb
    if-ne v11, v0, :cond_16

    #@2cd
    .line 1524
    const/16 v18, 0xe0

    #@2cf
    move/from16 v0, v18

    #@2d1
    if-ne v12, v0, :cond_14

    #@2d3
    .line 1525
    const-string/jumbo v18, "image/jpeg"

    #@2d6
    return-object v18

    #@2d7
    .line 1534
    :cond_14
    const/16 v18, 0xe1

    #@2d9
    move/from16 v0, v18

    #@2db
    if-ne v12, v0, :cond_15

    #@2dd
    .line 1535
    const/16 v18, 0x45

    #@2df
    move/from16 v0, v18

    #@2e1
    if-ne v15, v0, :cond_15

    #@2e3
    const/16 v18, 0x78

    #@2e5
    move/from16 v0, v16

    #@2e7
    move/from16 v1, v18

    #@2e9
    if-ne v0, v1, :cond_15

    #@2eb
    const/16 v18, 0x69

    #@2ed
    move/from16 v0, v17

    #@2ef
    move/from16 v1, v18

    #@2f1
    if-ne v0, v1, :cond_15

    #@2f3
    const/16 v18, 0x66

    #@2f5
    move/from16 v0, v18

    #@2f7
    if-ne v3, v0, :cond_15

    #@2f9
    .line 1536
    if-nez v4, :cond_15

    #@2fb
    .line 1537
    const-string/jumbo v18, "image/jpeg"

    #@2fe
    return-object v18

    #@2ff
    .line 1540
    :cond_15
    const/16 v18, 0xee

    #@301
    move/from16 v0, v18

    #@303
    if-ne v12, v0, :cond_16

    #@305
    .line 1541
    const-string/jumbo v18, "image/jpg"

    #@308
    return-object v18

    #@309
    .line 1545
    :cond_16
    const/16 v18, 0xd0

    #@30b
    move/from16 v0, v18

    #@30d
    if-ne v2, v0, :cond_17

    #@30f
    const/16 v18, 0xcf

    #@311
    move/from16 v0, v18

    #@313
    if-ne v10, v0, :cond_17

    #@315
    const/16 v18, 0x11

    #@317
    move/from16 v0, v18

    #@319
    if-ne v11, v0, :cond_17

    #@31b
    const/16 v18, 0xe0

    #@31d
    move/from16 v0, v18

    #@31f
    if-ne v12, v0, :cond_17

    #@321
    .line 1546
    const/16 v18, 0xa1

    #@323
    move/from16 v0, v18

    #@325
    if-ne v13, v0, :cond_17

    #@327
    const/16 v18, 0xb1

    #@329
    move/from16 v0, v18

    #@32b
    if-ne v14, v0, :cond_17

    #@32d
    const/16 v18, 0x1a

    #@32f
    move/from16 v0, v18

    #@331
    if-ne v15, v0, :cond_17

    #@333
    const/16 v18, 0xe1

    #@335
    move/from16 v0, v16

    #@337
    move/from16 v1, v18

    #@339
    if-ne v0, v1, :cond_17

    #@33b
    .line 1552
    invoke-static/range {p0 .. p0}, Ljava/net/URLConnection;->checkfpx(Ljava/io/InputStream;)Z

    #@33e
    move-result v18

    #@33f
    if-eqz v18, :cond_17

    #@341
    .line 1553
    const-string/jumbo v18, "image/vnd.fpx"

    #@344
    return-object v18

    #@345
    .line 1557
    :cond_17
    const/16 v18, 0x2e

    #@347
    move/from16 v0, v18

    #@349
    if-ne v2, v0, :cond_18

    #@34b
    const/16 v18, 0x73

    #@34d
    move/from16 v0, v18

    #@34f
    if-ne v10, v0, :cond_18

    #@351
    const/16 v18, 0x6e

    #@353
    move/from16 v0, v18

    #@355
    if-ne v11, v0, :cond_18

    #@357
    const/16 v18, 0x64

    #@359
    move/from16 v0, v18

    #@35b
    if-ne v12, v0, :cond_18

    #@35d
    .line 1558
    const-string/jumbo v18, "audio/basic"

    #@360
    return-object v18

    #@361
    .line 1561
    :cond_18
    const/16 v18, 0x64

    #@363
    move/from16 v0, v18

    #@365
    if-ne v2, v0, :cond_19

    #@367
    const/16 v18, 0x6e

    #@369
    move/from16 v0, v18

    #@36b
    if-ne v10, v0, :cond_19

    #@36d
    const/16 v18, 0x73

    #@36f
    move/from16 v0, v18

    #@371
    if-ne v11, v0, :cond_19

    #@373
    const/16 v18, 0x2e

    #@375
    move/from16 v0, v18

    #@377
    if-ne v12, v0, :cond_19

    #@379
    .line 1562
    const-string/jumbo v18, "audio/basic"

    #@37c
    return-object v18

    #@37d
    .line 1565
    :cond_19
    const/16 v18, 0x52

    #@37f
    move/from16 v0, v18

    #@381
    if-ne v2, v0, :cond_1a

    #@383
    const/16 v18, 0x49

    #@385
    move/from16 v0, v18

    #@387
    if-ne v10, v0, :cond_1a

    #@389
    const/16 v18, 0x46

    #@38b
    move/from16 v0, v18

    #@38d
    if-ne v11, v0, :cond_1a

    #@38f
    const/16 v18, 0x46

    #@391
    move/from16 v0, v18

    #@393
    if-ne v12, v0, :cond_1a

    #@395
    .line 1569
    const-string/jumbo v18, "audio/x-wav"

    #@398
    return-object v18

    #@399
    .line 1571
    :cond_1a
    const/16 v18, 0x0

    #@39b
    return-object v18
.end method

.method private lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    .locals 12
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1303
    invoke-direct {p0, p1}, Ljava/net/URLConnection;->typeToPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 1305
    .local v3, "contentHandlerClassName":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/URLConnection;->getContentHandlerPkgPrefixes()Ljava/lang/String;

    #@7
    move-result-object v4

    #@8
    .line 1308
    .local v4, "contentHandlerPkgPrefixes":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    #@a
    const-string/jumbo v10, "|"

    #@d
    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1310
    .local v9, "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_2

    #@16
    .line 1311
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@19
    move-result-object v10

    #@1a
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    .line 1314
    .local v8, "packagePrefix":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v10

    #@27
    const-string/jumbo v11, "."

    #@2a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v10

    #@2e
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v10

    #@32
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@35
    move-result-object v2

    #@36
    .line 1315
    .local v2, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    #@37
    .line 1317
    .local v1, "cls":Ljava/lang/Class;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3a
    move-result-object v1

    #@3b
    .line 1324
    .end local v1    # "cls":Ljava/lang/Class;
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    #@3d
    .line 1326
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    check-cast v7, Ljava/net/ContentHandler;

    #@43
    .line 1327
    .local v7, "handler":Ljava/net/ContentHandler;
    return-object v7

    #@44
    .line 1318
    .end local v7    # "handler":Ljava/net/ContentHandler;
    .restart local v1    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v5

    #@45
    .line 1319
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@48
    move-result-object v0

    #@49
    .line 1320
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    #@4b
    .line 1321
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@4e
    move-result-object v1

    #@4f
    .local v1, "cls":Ljava/lang/Class;
    goto :goto_1

    #@50
    .line 1333
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "packagePrefix":Ljava/lang/String;
    :cond_2
    sget-object v10, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    #@52
    return-object v10

    #@53
    .line 1329
    .restart local v8    # "packagePrefix":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@54
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static readBytes([IILjava/io/InputStream;)I
    .locals 4
    .param p0, "c"    # [I
    .param p1, "len"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1744
    new-array v0, p1, [B

    #@3
    .line 1745
    .local v0, "buf":[B
    invoke-virtual {p2, v0, v3, p1}, Ljava/io/InputStream;->read([BII)I

    #@6
    move-result v2

    #@7
    if-ge v2, p1, :cond_0

    #@9
    .line 1746
    const/4 v2, -0x1

    #@a
    return v2

    #@b
    .line 1750
    :cond_0
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    #@e
    .line 1751
    aget-byte v2, v0, v1

    #@10
    and-int/lit16 v2, v2, 0xff

    #@12
    aput v2, p0, v1

    #@14
    .line 1750
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1753
    :cond_1
    return v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/ContentHandlerFactory;

    #@0
    .prologue
    const-class v2, Ljava/net/URLConnection;

    #@2
    monitor-enter v2

    #@3
    .line 1218
    :try_start_0
    sget-object v1, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1219
    new-instance v1, Ljava/lang/Error;

    #@9
    const-string/jumbo v3, "factory already defined"

    #@c
    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1

    #@13
    .line 1221
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@16
    move-result-object v0

    #@17
    .line 1222
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    #@19
    .line 1223
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@1c
    .line 1225
    :cond_1
    sput-object p0, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 1217
    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .locals 0
    .param p0, "defaultallowuserinteraction"    # Z

    #@0
    .prologue
    .line 949
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    #@2
    .line 948
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1168
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .locals 1
    .param p0, "map"    # Ljava/net/FileNameMap;

    #@0
    .prologue
    .line 334
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 335
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    #@9
    .line 336
    :cond_0
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    #@b
    .line 333
    return-void
.end method

.method private static skipForward(Ljava/io/InputStream;J)J
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1765
    const-wide/16 v0, 0x0

    #@2
    .line 1766
    .local v0, "eachSkip":J
    const-wide/16 v2, 0x0

    #@4
    .line 1768
    .local v2, "skipped":J
    :goto_0
    cmp-long v4, v2, p1

    #@6
    if-eqz v4, :cond_2

    #@8
    .line 1769
    sub-long v4, p1, v2

    #@a
    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    #@d
    move-result-wide v0

    #@e
    .line 1772
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v0, v4

    #@12
    if-gtz v4, :cond_1

    #@14
    .line 1773
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@17
    move-result v4

    #@18
    const/4 v5, -0x1

    #@19
    if-ne v4, v5, :cond_0

    #@1b
    .line 1774
    return-wide v2

    #@1c
    .line 1776
    :cond_0
    const-wide/16 v4, 0x1

    #@1e
    add-long/2addr v2, v4

    #@1f
    .line 1779
    :cond_1
    add-long/2addr v2, v0

    #@20
    goto :goto_0

    #@21
    .line 1781
    :cond_2
    return-wide v2
.end method

.method private stripOffParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1276
    if-nez p1, :cond_0

    #@4
    .line 1277
    return-object v1

    #@5
    .line 1278
    :cond_0
    const/16 v1, 0x3b

    #@7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    .line 1280
    .local v0, "index":I
    if-lez v0, :cond_1

    #@d
    .line 1281
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 1283
    :cond_1
    return-object p1
.end method

.method private typeToPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1343
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object p1

    #@5
    .line 1344
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    .line 1345
    .local v2, "len":I
    new-array v3, v2, [C

    #@b
    .line 1346
    .local v3, "nm":[C
    invoke-virtual {p1, v4, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@e
    .line 1347
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@11
    .line 1348
    aget-char v0, v3, v1

    #@13
    .line 1349
    .local v0, "c":C
    const/16 v4, 0x2f

    #@15
    if-ne v0, v4, :cond_1

    #@17
    .line 1350
    const/16 v4, 0x2e

    #@19
    aput-char v4, v3, v1

    #@1b
    .line 1347
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1351
    :cond_1
    const/16 v4, 0x41

    #@20
    if-gt v4, v0, :cond_2

    #@22
    const/16 v4, 0x5a

    #@24
    if-le v0, v4, :cond_0

    #@26
    .line 1352
    :cond_2
    const/16 v4, 0x61

    #@28
    if-gt v4, v0, :cond_3

    #@2a
    const/16 v4, 0x7a

    #@2c
    if-le v0, v4, :cond_0

    #@2e
    .line 1353
    :cond_3
    const/16 v4, 0x30

    #@30
    if-gt v4, v0, :cond_4

    #@32
    const/16 v4, 0x39

    #@34
    if-le v0, v4, :cond_0

    #@36
    .line 1354
    :cond_4
    const/16 v4, 0x5f

    #@38
    aput-char v4, v3, v1

    #@3a
    goto :goto_1

    #@3b
    .line 1357
    .end local v0    # "c":C
    :cond_5
    new-instance v4, Ljava/lang/String;

    #@3d
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    #@40
    return-object v4
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1096
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1097
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1098
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 1099
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "key is null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1101
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 1102
    new-instance v0, Lsun/net/www/MessageHeader;

    #@1e
    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    #@21
    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@23
    .line 1104
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@25
    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 1095
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 937
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    #@2
    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    #@0
    .prologue
    .line 405
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    #@2
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@3
    .line 738
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 765
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@3
    .line 766
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 522
    const-string/jumbo v0, "content-encoding"

    #@3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method declared-synchronized getContentHandler()Ljava/net/ContentHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1237
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@4
    move-result-object v4

    #@5
    invoke-direct {p0, v4}, Ljava/net/URLConnection;->stripOffParameters(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1238
    .local v1, "contentType":Ljava/lang/String;
    const/4 v3, 0x0

    #@a
    .line 1239
    .local v3, "handler":Ljava/net/ContentHandler;
    if-nez v1, :cond_0

    #@c
    .line 1240
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@e
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1241
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 1245
    :cond_0
    if-nez v1, :cond_1

    #@22
    .line 1246
    sget-object v4, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    return-object v4

    #@26
    .line 1249
    :cond_1
    :try_start_1
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    #@28
    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    move-object v0, v4

    #@2d
    check-cast v0, Ljava/net/ContentHandler;

    #@2f
    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    .line 1250
    .local v3, "handler":Ljava/net/ContentHandler;
    if-eqz v3, :cond_2

    #@32
    monitor-exit p0

    #@33
    .line 1251
    return-object v3

    #@34
    .line 1252
    .local v3, "handler":Ljava/net/ContentHandler;
    :catch_0
    move-exception v2

    #@35
    .line 1255
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_2
    :try_start_2
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    #@37
    if-eqz v4, :cond_3

    #@39
    .line 1256
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    #@3b
    invoke-interface {v4, v1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    move-result-object v3

    #@3f
    .line 1257
    :cond_3
    if-nez v3, :cond_4

    #@41
    .line 1259
    :try_start_3
    invoke-direct {p0, v1}, Ljava/net/URLConnection;->lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    move-result-object v3

    #@45
    .line 1264
    .local v3, "handler":Ljava/net/ContentHandler;
    :goto_0
    :try_start_4
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    #@47
    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4a
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_4
    monitor-exit p0

    #@4b
    .line 1266
    return-object v3

    #@4c
    .line 1260
    :catch_1
    move-exception v2

    #@4d
    .line 1261
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    #@50
    .line 1262
    sget-object v3, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@52
    .restart local v3    # "handler":Ljava/net/ContentHandler;
    goto :goto_0

    #@53
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :catchall_0
    move-exception v4

    #@54
    monitor-exit p0

    #@55
    throw v4
.end method

.method public getContentLength()I
    .locals 4

    #@0
    .prologue
    .line 484
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    #@3
    move-result-wide v0

    #@4
    .line 485
    .local v0, "l":J
    const-wide/32 v2, 0x7fffffff

    #@7
    cmp-long v2, v0, v2

    #@9
    if-lez v2, :cond_0

    #@b
    .line 486
    const/4 v2, -0x1

    #@c
    return v2

    #@d
    .line 487
    :cond_0
    long-to-int v2, v0

    #@e
    return v2
.end method

.method public getContentLengthLong()J
    .locals 4

    #@0
    .prologue
    .line 500
    const-string/jumbo v0, "content-length"

    #@3
    const-wide/16 v2, -0x1

    #@5
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 511
    const-string/jumbo v0, "content-type"

    #@3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getDate()J
    .locals 4

    #@0
    .prologue
    .line 546
    const-string/jumbo v0, "date"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 1040
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@2
    return v0
.end method

.method public getDoInput()Z
    .locals 1

    #@0
    .prologue
    .line 881
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    #@2
    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    #@0
    .prologue
    .line 911
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    #@2
    return v0
.end method

.method public getExpiration()J
    .locals 4

    #@0
    .prologue
    .line 534
    const-string/jumbo v0, "expires"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 687
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 573
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    #@0
    .prologue
    .line 652
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 654
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 655
    :catch_0
    move-exception v0

    #@a
    .line 656
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    #@0
    .prologue
    .line 605
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 607
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v2

    #@8
    return v2

    #@9
    .line 608
    :catch_0
    move-exception v0

    #@a
    .line 609
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 669
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    #@0
    .prologue
    .line 628
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 630
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 631
    :catch_0
    move-exception v0

    #@a
    .line 632
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 587
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    #@0
    .prologue
    .line 1024
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    #@2
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 828
    new-instance v0, Ljava/net/UnknownServiceException;

    #@2
    const-string/jumbo v1, "protocol doesn\'t support input"

    #@5
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getLastModified()J
    .locals 4

    #@0
    .prologue
    .line 558
    const-string/jumbo v0, "last-modified"

    #@3
    const-wide/16 v2, 0x0

    #@5
    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 841
    new-instance v0, Ljava/net/UnknownServiceException;

    #@2
    const-string/jumbo v1, "protocol doesn\'t support output"

    #@5
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 809
    sget-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    #@2
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    #@0
    .prologue
    .line 447
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    #@2
    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1141
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1142
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Already connected"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1144
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1145
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@14
    return-object v0

    #@15
    .line 1147
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@17
    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1119
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1120
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Already connected"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 1122
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 1123
    return-object v1

    #@13
    .line 1125
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@15
    invoke-virtual {v0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@2
    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    #@0
    .prologue
    .line 1000
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    #@2
    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 2
    .param p1, "allowuserinteraction"    # Z

    #@0
    .prologue
    .line 923
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 925
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    #@f
    .line 922
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 386
    if-gez p1, :cond_0

    #@2
    .line 387
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeout can not be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 389
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    #@d
    .line 385
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "defaultusecaches"    # Z

    #@0
    .prologue
    .line 1051
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    #@2
    .line 1050
    return-void
.end method

.method public setDoInput(Z)V
    .locals 2
    .param p1, "doinput"    # Z

    #@0
    .prologue
    .line 867
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 869
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    #@f
    .line 866
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 2
    .param p1, "dooutput"    # Z

    #@0
    .prologue
    .line 897
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 898
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 899
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    #@f
    .line 896
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 3
    .param p1, "ifmodifiedsince"    # J

    #@0
    .prologue
    .line 1012
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1013
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1014
    :cond_0
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    #@f
    .line 1011
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 429
    if-gez p1, :cond_0

    #@2
    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "timeout can not be negative"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 432
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    #@d
    .line 428
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1071
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1072
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1073
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 1074
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "key is null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 1076
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 1077
    new-instance v0, Lsun/net/www/MessageHeader;

    #@1e
    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    #@21
    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@23
    .line 1079
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    #@25
    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 1070
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 2
    .param p1, "usecaches"    # Z

    #@0
    .prologue
    .line 986
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Already connected"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 988
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    #@f
    .line 985
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/net/URLConnection;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, ":"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

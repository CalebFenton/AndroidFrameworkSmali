.class public Lorg/apache/xml/utils/res/XResources_he;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_he.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xml/utils/res/XResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/16 v7, 0x9

    #@4
    const/4 v4, 0x2

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v5, 0x1

    #@7
    .line 42
    const/16 v0, 0xb

    #@9
    new-array v0, v0, [[Ljava/lang/Object;

    #@b
    .line 43
    new-array v1, v4, [Ljava/lang/Object;

    #@d
    const-string/jumbo v2, "ui_language"

    #@10
    aput-object v2, v1, v6

    #@12
    const-string/jumbo v2, "he"

    #@15
    aput-object v2, v1, v5

    #@17
    aput-object v1, v0, v6

    #@19
    new-array v1, v4, [Ljava/lang/Object;

    #@1b
    const-string/jumbo v2, "help_language"

    #@1e
    aput-object v2, v1, v6

    #@20
    const-string/jumbo v2, "he"

    #@23
    aput-object v2, v1, v5

    #@25
    aput-object v1, v0, v5

    #@27
    new-array v1, v4, [Ljava/lang/Object;

    #@29
    const-string/jumbo v2, "language"

    #@2c
    aput-object v2, v1, v6

    #@2e
    const-string/jumbo v2, "he"

    #@31
    aput-object v2, v1, v5

    #@33
    aput-object v1, v0, v4

    #@35
    .line 44
    new-array v1, v4, [Ljava/lang/Object;

    #@37
    const-string/jumbo v2, "alphabet"

    #@3a
    aput-object v2, v1, v6

    #@3c
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3e
    .line 45
    const/16 v3, 0x12

    #@40
    new-array v3, v3, [C

    #@42
    fill-array-data v3, :array_0

    #@45
    .line 44
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@48
    aput-object v2, v1, v5

    #@4a
    const/4 v2, 0x3

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 48
    new-array v1, v4, [Ljava/lang/Object;

    #@4f
    const-string/jumbo v2, "tradAlphabet"

    #@52
    aput-object v2, v1, v6

    #@54
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@56
    .line 49
    const/16 v3, 0x1a

    #@58
    new-array v3, v3, [C

    #@5a
    fill-array-data v3, :array_1

    #@5d
    .line 48
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@60
    aput-object v2, v1, v5

    #@62
    const/4 v2, 0x4

    #@63
    aput-object v1, v0, v2

    #@65
    .line 54
    new-array v1, v4, [Ljava/lang/Object;

    #@67
    const-string/jumbo v2, "orientation"

    #@6a
    aput-object v2, v1, v6

    #@6c
    const-string/jumbo v2, "RightToLeft"

    #@6f
    aput-object v2, v1, v5

    #@71
    const/4 v2, 0x5

    #@72
    aput-object v1, v0, v2

    #@74
    .line 57
    new-array v1, v4, [Ljava/lang/Object;

    #@76
    const-string/jumbo v2, "numbering"

    #@79
    aput-object v2, v1, v6

    #@7b
    const-string/jumbo v2, "additive"

    #@7e
    aput-object v2, v1, v5

    #@80
    const/4 v2, 0x6

    #@81
    aput-object v1, v0, v2

    #@83
    .line 62
    new-array v1, v4, [Ljava/lang/Object;

    #@85
    const-string/jumbo v2, "numberGroups"

    #@88
    aput-object v2, v1, v6

    #@8a
    new-instance v2, Lorg/apache/xml/utils/res/IntArrayWrapper;

    #@8c
    filled-new-array {v8, v5}, [I

    #@8f
    move-result-object v3

    #@90
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/IntArrayWrapper;-><init>([I)V

    #@93
    aput-object v2, v1, v5

    #@95
    const/4 v2, 0x7

    #@96
    aput-object v1, v0, v2

    #@98
    .line 68
    new-array v1, v4, [Ljava/lang/Object;

    #@9a
    const-string/jumbo v2, "digits"

    #@9d
    aput-object v2, v1, v6

    #@9f
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@a1
    .line 69
    new-array v3, v7, [C

    #@a3
    fill-array-data v3, :array_2

    #@a6
    .line 68
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@a9
    aput-object v2, v1, v5

    #@ab
    const/16 v2, 0x8

    #@ad
    aput-object v1, v0, v2

    #@af
    .line 71
    new-array v1, v4, [Ljava/lang/Object;

    #@b1
    const-string/jumbo v2, "tens"

    #@b4
    aput-object v2, v1, v6

    #@b6
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@b8
    .line 72
    new-array v3, v7, [C

    #@ba
    fill-array-data v3, :array_3

    #@bd
    .line 71
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@c0
    aput-object v2, v1, v5

    #@c2
    aput-object v1, v0, v7

    #@c4
    .line 76
    new-array v1, v4, [Ljava/lang/Object;

    #@c6
    const-string/jumbo v2, "tables"

    #@c9
    aput-object v2, v1, v6

    #@cb
    new-instance v2, Lorg/apache/xml/utils/res/StringArrayWrapper;

    #@cd
    new-array v3, v4, [Ljava/lang/String;

    #@cf
    const-string/jumbo v4, "tens"

    #@d2
    aput-object v4, v3, v6

    #@d4
    const-string/jumbo v4, "digits"

    #@d7
    aput-object v4, v3, v5

    #@d9
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/StringArrayWrapper;-><init>([Ljava/lang/String;)V

    #@dc
    aput-object v2, v1, v5

    #@de
    aput-object v1, v0, v8

    #@e0
    .line 41
    return-object v0

    #@e1
    .line 45
    nop

    #@e2
    :array_0
    .array-data 2
        0x5d0s
        0x5d1s
        0x5d2s
        0x5d3s
        0x5d4s
        0x5d5s
        0x5d6s
        0x5d7s
        0x5d8s
        0x5d9s
        0x5das
        0x5dbs
        0x5dcs
        0x5dds
        0x5des
        0x5dfs
        0x5e0s
        0x5e1s
    .end array-data

    #@f8
    .line 49
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data

    #@116
    .line 69
    :array_2
    .array-data 2
        0x5d0s
        0x5d1s
        0x5d2s
        0x5d3s
        0x5d4s
        0x5d5s
        0x5d6s
        0x5d7s
        0x5d8s
    .end array-data

    #@123
    .line 72
    nop

    #@124
    :array_3
    .array-data 2
        0x5d9s
        0x5das
        0x5dbs
        0x5dcs
        0x5dds
        0x5des
        0x5dfs
        0x5e0s
        0x5e1s
    .end array-data
.end method

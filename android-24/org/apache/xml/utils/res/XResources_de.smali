.class public Lorg/apache/xml/utils/res/XResources_de;
.super Lorg/apache/xml/utils/res/XResourceBundle;
.source "XResources_de.java"


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
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x1a

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 42
    const/4 v0, 0x7

    #@6
    new-array v0, v0, [[Ljava/lang/Object;

    #@8
    .line 43
    new-array v1, v6, [Ljava/lang/Object;

    #@a
    const-string/jumbo v2, "ui_language"

    #@d
    aput-object v2, v1, v4

    #@f
    const-string/jumbo v2, "de"

    #@12
    aput-object v2, v1, v5

    #@14
    aput-object v1, v0, v4

    #@16
    new-array v1, v6, [Ljava/lang/Object;

    #@18
    const-string/jumbo v2, "help_language"

    #@1b
    aput-object v2, v1, v4

    #@1d
    const-string/jumbo v2, "de"

    #@20
    aput-object v2, v1, v5

    #@22
    aput-object v1, v0, v5

    #@24
    new-array v1, v6, [Ljava/lang/Object;

    #@26
    const-string/jumbo v2, "language"

    #@29
    aput-object v2, v1, v4

    #@2b
    const-string/jumbo v2, "de"

    #@2e
    aput-object v2, v1, v5

    #@30
    aput-object v1, v0, v6

    #@32
    .line 44
    new-array v1, v6, [Ljava/lang/Object;

    #@34
    const-string/jumbo v2, "alphabet"

    #@37
    aput-object v2, v1, v4

    #@39
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3b
    .line 45
    new-array v3, v7, [C

    #@3d
    fill-array-data v3, :array_0

    #@40
    .line 44
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@43
    aput-object v2, v1, v5

    #@45
    const/4 v2, 0x3

    #@46
    aput-object v1, v0, v2

    #@48
    .line 48
    new-array v1, v6, [Ljava/lang/Object;

    #@4a
    const-string/jumbo v2, "tradAlphabet"

    #@4d
    aput-object v2, v1, v4

    #@4f
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@51
    .line 49
    new-array v3, v7, [C

    #@53
    fill-array-data v3, :array_1

    #@56
    .line 48
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@59
    aput-object v2, v1, v5

    #@5b
    const/4 v2, 0x4

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 54
    new-array v1, v6, [Ljava/lang/Object;

    #@60
    const-string/jumbo v2, "orientation"

    #@63
    aput-object v2, v1, v4

    #@65
    const-string/jumbo v2, "LeftToRight"

    #@68
    aput-object v2, v1, v5

    #@6a
    const/4 v2, 0x5

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 57
    new-array v1, v6, [Ljava/lang/Object;

    #@6f
    const-string/jumbo v2, "numbering"

    #@72
    aput-object v2, v1, v4

    #@74
    const-string/jumbo v2, "additive"

    #@77
    aput-object v2, v1, v5

    #@79
    const/4 v2, 0x6

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 41
    return-object v0

    #@7d
    .line 45
    nop

    #@7e
    :array_0
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

    #@9c
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
.end method

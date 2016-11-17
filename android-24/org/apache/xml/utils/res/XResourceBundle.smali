.class public Lorg/apache/xml/utils/res/XResourceBundle;
.super Ljava/util/ListResourceBundle;
.source "XResourceBundle.java"


# static fields
.field public static final ERROR_RESOURCES:Ljava/lang/String; = "org.apache.xalan.res.XSLTErrorResources"

.field public static final LANG_ADDITIVE:Ljava/lang/String; = "additive"

.field public static final LANG_ALPHABET:Ljava/lang/String; = "alphabet"

.field public static final LANG_BUNDLE_NAME:Ljava/lang/String; = "org.apache.xml.utils.res.XResources"

.field public static final LANG_LEFTTORIGHT:Ljava/lang/String; = "leftToRight"

.field public static final LANG_MULTIPLIER:Ljava/lang/String; = "multiplier"

.field public static final LANG_MULTIPLIER_CHAR:Ljava/lang/String; = "multiplierChar"

.field public static final LANG_MULT_ADD:Ljava/lang/String; = "multiplicative-additive"

.field public static final LANG_NUMBERGROUPS:Ljava/lang/String; = "numberGroups"

.field public static final LANG_NUMBERING:Ljava/lang/String; = "numbering"

.field public static final LANG_NUM_TABLES:Ljava/lang/String; = "tables"

.field public static final LANG_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final LANG_RIGHTTOLEFT:Ljava/lang/String; = "rightToLeft"

.field public static final LANG_TRAD_ALPHABET:Ljava/lang/String; = "tradAlphabet"

.field public static final MULT_FOLLOWS:Ljava/lang/String; = "follows"

.field public static final MULT_ORDER:Ljava/lang/String; = "multiplierOrder"

.field public static final MULT_PRECEDES:Ljava/lang/String; = "precedes"

.field public static final XSLT_RESOURCE:Ljava/lang/String; = "org.apache.xml.utils.res.XResourceBundle"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method

.method private static final getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 103
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 104
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 105
    .local v3, "variant":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "_"

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 107
    .local v2, "suffix":Ljava/lang/String;
    const-string/jumbo v4, "zh"

    #@27
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_0

    #@2d
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    const-string/jumbo v5, "_"

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 110
    :cond_0
    const-string/jumbo v4, "JP"

    #@48
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v4

    #@4c
    if-eqz v4, :cond_1

    #@4e
    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    const-string/jumbo v5, "_"

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    const-string/jumbo v5, "_"

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    .line 113
    :cond_1
    return-object v2
.end method

.method public static final loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    invoke-static {p1}, Lorg/apache/xml/utils/res/XResourceBundle;->getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 67
    .local v3, "suffix":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 68
    .local v2, "resourceName":Ljava/lang/String;
    invoke-static {v2, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lorg/apache/xml/utils/res/XResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    return-object v4

    #@1c
    .line 71
    .end local v2    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1d
    .line 78
    .local v0, "e":Ljava/util/MissingResourceException;
    :try_start_1
    const-string/jumbo v4, "org.apache.xml.utils.res.XResourceBundle"

    #@20
    new-instance v5, Ljava/util/Locale;

    #@22
    const-string/jumbo v6, "en"

    #@25
    const-string/jumbo v7, "US"

    #@28
    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    .line 77
    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Lorg/apache/xml/utils/res/XResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@31
    return-object v4

    #@32
    .line 81
    :catch_1
    move-exception v1

    #@33
    .line 85
    .local v1, "e2":Ljava/util/MissingResourceException;
    new-instance v4, Ljava/util/MissingResourceException;

    #@35
    .line 86
    const-string/jumbo v5, "Could not load any resource bundles."

    #@38
    const-string/jumbo v6, ""

    #@3b
    .line 85
    invoke-direct {v4, v5, p0, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    throw v4
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
    .line 124
    const/4 v0, 0x7

    #@6
    new-array v0, v0, [[Ljava/lang/Object;

    #@8
    .line 125
    new-array v1, v6, [Ljava/lang/Object;

    #@a
    const-string/jumbo v2, "ui_language"

    #@d
    aput-object v2, v1, v4

    #@f
    const-string/jumbo v2, "en"

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
    const-string/jumbo v2, "en"

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
    const-string/jumbo v2, "en"

    #@2e
    aput-object v2, v1, v5

    #@30
    aput-object v1, v0, v6

    #@32
    .line 126
    new-array v1, v6, [Ljava/lang/Object;

    #@34
    const-string/jumbo v2, "alphabet"

    #@37
    aput-object v2, v1, v4

    #@39
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@3b
    new-array v3, v7, [C

    #@3d
    fill-array-data v3, :array_0

    #@40
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@43
    aput-object v2, v1, v5

    #@45
    const/4 v2, 0x3

    #@46
    aput-object v1, v0, v2

    #@48
    .line 129
    new-array v1, v6, [Ljava/lang/Object;

    #@4a
    const-string/jumbo v2, "tradAlphabet"

    #@4d
    aput-object v2, v1, v4

    #@4f
    new-instance v2, Lorg/apache/xml/utils/res/CharArrayWrapper;

    #@51
    new-array v3, v7, [C

    #@53
    fill-array-data v3, :array_1

    #@56
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    #@59
    aput-object v2, v1, v5

    #@5b
    const/4 v2, 0x4

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 134
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
    .line 137
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
    .line 123
    return-object v0

    #@7d
    .line 126
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
    .line 129
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

.class public Lorg/apache/xml/utils/res/XResourceBundle;
.super Ljava/util/ListResourceBundle;
.source "XResourceBundle.java"


# static fields
.field public static final greylist ERROR_RESOURCES:Ljava/lang/String; = "org.apache.xalan.res.XSLTErrorResources"

.field public static final greylist LANG_ADDITIVE:Ljava/lang/String; = "additive"

.field public static final greylist LANG_ALPHABET:Ljava/lang/String; = "alphabet"

.field public static final greylist LANG_BUNDLE_NAME:Ljava/lang/String; = "org.apache.xml.utils.res.XResources"

.field public static final greylist LANG_LEFTTORIGHT:Ljava/lang/String; = "leftToRight"

.field public static final greylist LANG_MULTIPLIER:Ljava/lang/String; = "multiplier"

.field public static final greylist LANG_MULTIPLIER_CHAR:Ljava/lang/String; = "multiplierChar"

.field public static final greylist LANG_MULT_ADD:Ljava/lang/String; = "multiplicative-additive"

.field public static final greylist LANG_NUMBERGROUPS:Ljava/lang/String; = "numberGroups"

.field public static final greylist LANG_NUMBERING:Ljava/lang/String; = "numbering"

.field public static final greylist LANG_NUM_TABLES:Ljava/lang/String; = "tables"

.field public static final greylist LANG_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final greylist LANG_RIGHTTOLEFT:Ljava/lang/String; = "rightToLeft"

.field public static final greylist LANG_TRAD_ALPHABET:Ljava/lang/String; = "tradAlphabet"

.field public static final greylist MULT_FOLLOWS:Ljava/lang/String; = "follows"

.field public static final greylist MULT_ORDER:Ljava/lang/String; = "multiplierOrder"

.field public static final greylist MULT_PRECEDES:Ljava/lang/String; = "precedes"

.field public static final greylist XSLT_RESOURCE:Ljava/lang/String; = "org.apache.xml.utils.res.XResourceBundle"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method

.method private static final greylist getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 102
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    :cond_3b
    const-string v0, "JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5b
    return-object p0
.end method

.method public static final greylist loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lorg/apache/xml/utils/res/XResourceBundle;->getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/XResourceBundle;
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_19} :catch_1a

    return-object p1

    .line 77
    :catch_1a
    :try_start_1a
    const-string p1, "org.apache.xml.utils.res.XResourceBundle"

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/res/XResourceBundle;
    :try_end_2b
    .catch Ljava/util/MissingResourceException; {:try_start_1a .. :try_end_2b} :catch_2c

    return-object p1

    .line 85
    :catch_2c
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v0, "Could not load any resource bundles."

    const-string v1, ""

    invoke-direct {p1, v0, p0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 9

    .line 123
    const-string p0, "ui_language"

    const-string v0, "en"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v1

    const-string p0, "help_language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string p0, "language"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v3

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_4e

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "alphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v4

    new-instance p0, Lorg/apache/xml/utils/res/CharArrayWrapper;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_6c

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    const-string v0, "tradAlphabet"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-string p0, "orientation"

    const-string v0, "LeftToRight"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-string p0, "numbering"

    const-string v0, "additive"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :array_4e
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

    :array_6c
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

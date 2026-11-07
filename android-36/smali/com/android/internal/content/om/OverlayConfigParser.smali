.class public final Lcom/android/internal/content/om/OverlayConfigParser;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;,
        Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_DEFAULT_FILENAME:Ljava/lang/String; = "config/config.xml"

.field private static final blacklist CONFIG_DIRECTORY:Ljava/lang/String; = "config"

.field static final blacklist DEFAULT_ENABLED_STATE:Z = false

.field static final blacklist DEFAULT_MUTABILITY:Z = true

.field private static final blacklist MAXIMUM_MERGE_DEPTH:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist currentParserContextToString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 586
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 591
    .end local v1    # "i":I
    :cond_35
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist expandProperty(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;)Ljava/lang/String;
    .registers 10
    .param p0, "configPath"    # Ljava/lang/String;
    .param p1, "sysPropWrapper"    # Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;

    .line 358
    if-nez p0, :cond_4

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_4
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, "propStartPos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 365
    return-object p0

    .line 368
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v4, "}"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 373
    .local v4, "propEndPos":I
    if-eq v4, v2, :cond_b6

    .line 379
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9d

    .line 384
    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "propertyName":Ljava/lang/String;
    const-string/jumbo v2, "ro."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 389
    invoke-interface {p1, v0}, Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "propertyValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 393
    const-string v5, "Using property in overlay config path: \"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OverlayConfig"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_66

    .line 400
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 391
    :cond_6b
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Property is empty or doesn\'t exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 386
    .end local v2    # "propertyValue":Ljava/lang/String;
    :cond_84
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Only read only properties can be used when merging RRO config files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only a single property supported in path: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed property, unmatched braces, in: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "partition"    # Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .param p1, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation

    .line 272
    .local p2, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    .local p3, "activeApexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_41

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 276
    :cond_f
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    .local v1, "apex":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/apex/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/overlay/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 278
    .end local v1    # "apex":Ljava/lang/String;
    goto :goto_13

    .line 281
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_49

    .line 282
    return-object v1

    .line 285
    :cond_49
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config/config.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 287
    return-object v1

    .line 290
    :cond_5b
    new-instance v2, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser-IA;)V

    .line 291
    .local v2, "parsingContext":Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    invoke-static {v0, p1, p2, v2}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 292
    invoke-static {v2}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$parseMerge$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "p"    # Ljava/lang/String;

    .line 422
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 11
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .param p4, "parsingContext"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 421
    .local p3, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    :try_start_0
    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayConfigParser$$ExternalSyntheticLambda0;-><init>()V

    .line 424
    .local v0, "sysPropWrapper":Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;
    const-string v1, "path"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/content/om/OverlayConfigParser;->expandProperty(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_10} :catch_da

    .line 428
    .end local v0    # "sysPropWrapper":Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;
    .local v1, "path":Ljava/lang/String;
    nop

    .line 430
    if-eqz v1, :cond_c6

    .line 435
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 442
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-static {p4, v2}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9e

    .line 451
    :try_start_27
    new-instance v0, Ljava/io/File;

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 453
    .local v0, "configDirectory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_43} :catch_89

    .line 458
    .local v2, "includedConfigFile":Ljava/io/File;
    nop

    .line 460
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 466
    invoke-static {v0, v2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 474
    invoke-static {v2, p2, p3, p4}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 475
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p4, v3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    .line 476
    return-void

    .line 467
    :cond_5d
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 470
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v2, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 468
    const-string v5, "Merged file %s outside of configuration directory in %s at %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_75
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 463
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, p0, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 462
    const-string v5, "Merged configuration file %s does not exist in %s at %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 454
    .end local v0    # "configDirectory":Ljava/io/File;
    .end local v2    # "includedConfigFile":Ljava/io/File;
    :catch_89
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 457
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 456
    const-string v4, "Couldn\'t find or open merged configuration file %s in %s at %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 443
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 443
    const-string v3, "Maximum <merge> depth exceeded in %s at %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_b2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 439
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 436
    const-string v3, "Path %s must be relative to the directory containing overlay configurations  files in %s at %s "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_c6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 432
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 431
    const-string v3, "<merge> without path in %s at %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    .end local v1    # "path":Ljava/lang/String;
    :catch_da
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 427
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 426
    const-string v3, "<merge> path expand error in %s at %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 21
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .param p4, "parsingContext"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 503
    .local p3, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_e

    move v6, v5

    goto :goto_f

    :cond_e
    move v6, v4

    :goto_f
    if-nez v3, :cond_13

    move v7, v5

    goto :goto_14

    :cond_13
    move v7, v4

    :goto_14
    if-eq v6, v7, :cond_17

    move v4, v5

    :cond_17
    const-string/jumbo v6, "scanner and packageManagerOverlayInfos cannot be both null or both non-null"

    invoke-static {v4, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 506
    const-string v4, "package"

    const/4 v6, 0x0

    invoke-interface {v1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 507
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_181

    .line 514
    const/4 v4, 0x0

    .line 515
    .local v4, "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    const-string v7, " is ignored."

    const-string v9, " in partition "

    const-string v10, "overlay "

    const-string v11, "OverlayConfig"

    if-eqz v2, :cond_96

    .line 516
    invoke-virtual {v2, v8}, Lcom/android/internal/content/om/OverlayScanner;->getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object v4

    .line 517
    if-nez v4, :cond_6a

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v12

    .line 518
    invoke-virtual {v2, v8, v12}, Lcom/android/internal/content/om/OverlayScanner;->isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    .line 520
    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 522
    :cond_6a
    if-eqz v4, :cond_7a

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v7

    iget-object v9, v4, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v7, v9}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_7a

    move-object v12, v4

    goto :goto_c6

    .line 523
    :cond_7a
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    .line 525
    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    .line 526
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v8, v6, v0, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 524
    const-string v7, "overlay %s not present in partition %s in %s at %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 532
    :cond_96
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_c5

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v6

    .line 534
    invoke-virtual {v6}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 532
    :cond_c5
    move-object v12, v4

    .line 539
    .end local v4    # "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .local v12, "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :goto_c6
    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16b

    .line 546
    const/4 v4, 0x0

    .line 547
    .local v4, "isEnabled":Z
    const-string v7, "enabled"

    invoke-interface {v1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 548
    .local v14, "enabled":Ljava/lang/String;
    const-string v7, "false"

    if-eqz v14, :cond_e2

    .line 549
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    move v4, v9

    goto :goto_e3

    .line 548
    :cond_e2
    move v9, v4

    .line 552
    .end local v4    # "isEnabled":Z
    .local v9, "isEnabled":Z
    :goto_e3
    const/4 v4, 0x1

    .line 553
    .local v4, "isMutable":Z
    const-string v10, "mutable"

    invoke-interface {v1, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 554
    .local v15, "mutable":Ljava/lang/String;
    if-eqz v15, :cond_111

    .line 555
    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v5

    move v4, v7

    .line 556
    if-nez v4, :cond_10f

    invoke-static/range {p4 .. p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z

    move-result v7

    if-nez v7, :cond_fb

    goto :goto_10f

    .line 557
    :cond_fb
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 560
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 557
    const-string v7, "immutable overlays must precede mutable overlays: found in %s at %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 564
    :cond_10f
    :goto_10f
    move v10, v4

    goto :goto_112

    .line 554
    :cond_111
    move v10, v4

    .line 564
    .end local v4    # "isMutable":Z
    .local v10, "isMutable":Z
    :goto_112
    if-eqz v10, :cond_11a

    .line 565
    move-object/from16 v4, p4

    invoke-static {v4, v5}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)V

    goto :goto_134

    .line 566
    :cond_11a
    move-object/from16 v4, p4

    if-nez v9, :cond_134

    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found default-disabled immutable overlay "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_134
    :goto_134
    new-instance v13, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    .line 574
    sget-boolean v11, Landroid/os/Build;->IS_ENG:Z

    if-nez v11, :cond_14a

    sget-boolean v11, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v11, :cond_14e

    :cond_14a
    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfigParser;->currentParserContextToString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    :cond_14e
    invoke-direct {v13, v5, v7, v6}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    .local v13, "parsedConfigFile":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;
    new-instance v7, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-static {v4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v5

    iget-object v11, v5, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;)V

    .line 577
    .local v7, "config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    invoke-static {v4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-static {v4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    return-void

    .line 540
    .end local v7    # "config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    .end local v9    # "isEnabled":Z
    .end local v10    # "isMutable":Z
    .end local v13    # "parsedConfigFile":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;
    .end local v14    # "enabled":Ljava/lang/String;
    .end local v15    # "mutable":Ljava/lang/String;
    :cond_16b
    move-object/from16 v4, p4

    new-instance v5, Ljava/lang/IllegalStateException;

    .line 543
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v8, v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 541
    const-string v7, "overlay %s configured multiple times in a single partition in %s at %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 508
    .end local v12    # "info":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :cond_181
    move-object/from16 v4, p4

    new-instance v5, Ljava/lang/IllegalStateException;

    .line 509
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 508
    const-string v7, "\"<overlay> without package in %s at %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static blacklist readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 11
    .param p0, "configFile"    # Ljava/io/File;
    .param p1, "scanner"    # Lcom/android/internal/content/om/OverlayScanner;
    .param p3, "parsingContext"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 300
    .local p2, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    const-string v0, "OverlayConfig"

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_70

    .line 304
    .local v1, "configReader":Ljava/io/FileReader;
    nop

    .line 307
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 308
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 309
    const-string v3, "config"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 311
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 312
    .local v3, "depth":I
    :goto_18
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 313
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_88

    :cond_29
    goto :goto_3e

    :sswitch_2a
    const-string v5, "merge"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    goto :goto_3f

    :sswitch_34
    const-string v5, "overlay"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_3f

    :goto_3e
    const/4 v5, -0x1

    :goto_3f
    packed-switch v5, :pswitch_data_92

    .line 324
    goto :goto_4b

    .line 320
    :pswitch_43
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 322
    goto :goto_5c

    .line 316
    :pswitch_47
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 318
    goto :goto_5c

    .line 324
    :goto_4b
    const-string v5, "Tag %s is unknown in %s at %s"

    .line 325
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, p0, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 324
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_5c} :catch_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_5c} :catch_60
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5e

    .line 328
    .end local v4    # "name":Ljava/lang/String;
    :goto_5c
    goto :goto_18

    .line 332
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "depth":I
    :cond_5d
    goto :goto_67

    :catchall_5e
    move-exception v0

    goto :goto_6c

    .line 329
    :catch_60
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v3, "Got exception parsing overlay configuration."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    .line 332
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_67
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 333
    nop

    .line 334
    return-void

    .line 332
    :goto_6c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 333
    throw v0

    .line 301
    .end local v1    # "configReader":Ljava/io/FileReader;
    :catch_70
    move-exception v1

    .line 302
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find or open overlay configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x410bbbb0 -> :sswitch_34
        0x62fa438 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_47
        :pswitch_43
    .end packed-switch
.end method

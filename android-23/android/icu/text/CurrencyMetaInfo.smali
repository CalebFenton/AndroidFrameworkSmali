.class public Landroid/icu/text/CurrencyMetaInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;,
        Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;,
        Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;
    }
.end annotation


# static fields
.field protected static final defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final hasData:Z

.field private static final impl:Landroid/icu/text/CurrencyMetaInfo;


# direct methods
.method static synthetic -wrap0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->debugString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 562
    new-instance v4, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v6, 0x0

    #@4
    invoke-direct {v4, v5, v6}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    #@7
    sput-object v4, Landroid/icu/text/CurrencyMetaInfo;->defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@9
    .line 565
    const/4 v2, 0x0

    #@a
    .line 566
    .local v2, "temp":Landroid/icu/text/CurrencyMetaInfo;
    const/4 v3, 0x0

    #@b
    .line 568
    .local v3, "tempHasData":Z
    :try_start_0
    const-string/jumbo v4, "android.icu.impl.ICUCurrencyMetaInfo"

    #@e
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 569
    .local v0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    .end local v2    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    check-cast v2, Landroid/icu/text/CurrencyMetaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 570
    .local v2, "temp":Landroid/icu/text/CurrencyMetaInfo;
    const/4 v3, 0x1

    #@19
    .line 574
    .end local v0    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sput-object v2, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    #@1b
    .line 575
    sput-boolean v3, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    #@1d
    .line 30
    return-void

    #@1e
    .line 571
    .end local v2    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    :catch_0
    move-exception v1

    #@1f
    .line 572
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/icu/text/CurrencyMetaInfo;

    #@21
    invoke-direct {v2}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    #@24
    .restart local v2    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static dateString(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    #@0
    .prologue
    .line 579
    const-wide v0, 0x7fffffffffffffffL

    #@5
    cmp-long v0, p0, v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const-wide/high16 v0, -0x8000000000000000L

    #@b
    cmp-long v0, p0, v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 580
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0

    #@11
    .line 582
    :cond_1
    invoke-static {p0, p1}, Landroid/icu/impl/Grego;->timeToString(J)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method private static debugString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 588
    .local v2, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@d
    move-result-object v7

    #@e
    array-length v8, v7

    #@f
    move v5, v6

    #@10
    :goto_0
    if-ge v5, v8, :cond_5

    #@12
    aget-object v0, v7, v5

    #@14
    .line 589
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    .line 590
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@1a
    .line 592
    instance-of v9, v4, Ljava/util/Date;

    #@1c
    if-eqz v9, :cond_1

    #@1e
    .line 593
    check-cast v4, Ljava/util/Date;

    #@20
    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    #@23
    move-result-wide v10

    #@24
    invoke-static {v10, v11}, Landroid/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 599
    .local v1, "s":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_3

    #@2a
    .line 588
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 594
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v9, v4, Ljava/lang/Long;

    #@2f
    if-eqz v9, :cond_2

    #@31
    .line 595
    check-cast v4, Ljava/lang/Long;

    #@33
    .end local v4    # "v":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@36
    move-result-wide v10

    #@37
    invoke-static {v10, v11}, Landroid/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1

    #@3c
    .line 597
    .end local v1    # "s":Ljava/lang/String;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1

    #@41
    .line 602
    .end local v4    # "v":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@44
    move-result v9

    #@45
    if-lez v9, :cond_4

    #@47
    .line 603
    const-string/jumbo v9, ","

    #@4a
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 605
    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    .line 606
    const-string/jumbo v10, "=\'"

    #@58
    .line 605
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    .line 608
    const-string/jumbo v10, "\'"

    #@63
    .line 605
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    goto :goto_2

    #@67
    .line 611
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@68
    .line 613
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    const-string/jumbo v7, "("

    #@7c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v2, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 614
    const-string/jumbo v5, ")"

    #@8a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    return-object v5
.end method

.method public static getInstance()Landroid/icu/text/CurrencyMetaInfo;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    #@2
    return-object v0
.end method

.method public static getInstance(Z)Landroid/icu/text/CurrencyMetaInfo;
    .locals 1
    .param p0, "noSubstitute"    # Z

    #@0
    .prologue
    .line 51
    sget-boolean v0, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static hasData()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 62
    sget-boolean v0, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    #@2
    return v0
.end method


# virtual methods
.method public currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 542
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyUsage"    # Landroid/icu/util/Currency$CurrencyUsage;

    #@0
    .prologue
    .line 554
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    #@2
    return-object v0
.end method

.method public currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 504
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

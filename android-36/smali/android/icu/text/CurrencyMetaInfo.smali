.class public Landroid/icu/text/CurrencyMetaInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;,
        Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;,
        Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    }
.end annotation


# static fields
.field protected static final greylist-max-o defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o hasData:Z

.field private static final greylist-max-o impl:Landroid/icu/text/CurrencyMetaInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdebugString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo;->debugString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 523
    new-instance v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    sput-object v0, Landroid/icu/text/CurrencyMetaInfo;->defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "temp":Landroid/icu/text/CurrencyMetaInfo;
    const/4 v1, 0x0

    .line 529
    .local v1, "tempHasData":Z
    :try_start_b
    const-string v2, "android.icu.impl.ICUCurrencyMetaInfo"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 530
    .local v2, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/CurrencyMetaInfo;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    .line 531
    .end local v0    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    .local v3, "temp":Landroid/icu/text/CurrencyMetaInfo;
    const/4 v1, 0x1

    .line 534
    .end local v2    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1f

    .line 532
    .end local v3    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    .restart local v0    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    :catchall_19
    move-exception v2

    .line 533
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Landroid/icu/text/CurrencyMetaInfo;

    invoke-direct {v3}, Landroid/icu/text/CurrencyMetaInfo;-><init>()V

    .line 535
    .end local v0    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v3    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    :goto_1f
    sput-object v3, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    .line 536
    sput-boolean v1, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    .line 537
    .end local v1    # "tempHasData":Z
    .end local v3    # "temp":Landroid/icu/text/CurrencyMetaInfo;
    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static greylist-max-o dateString(J)Ljava/lang/String;
    .registers 4
    .param p0, "date"    # J

    .line 540
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_15

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_10

    goto :goto_15

    .line 543
    :cond_10
    invoke-static {p0, p1}, Landroid/icu/impl/Grego;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 541
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o debugString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .param p0, "o"    # Ljava/lang/Object;

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_10
    if-ge v4, v3, :cond_66

    aget-object v5, v2, v4

    .line 550
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 551
    .local v6, "v":Ljava/lang/Object;
    if-eqz v6, :cond_63

    .line 553
    instance-of v7, v6, Ljava/util/Date;

    if-eqz v7, :cond_2a

    .line 554
    move-object v7, v6

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    move-result-object v7

    .local v7, "s":Ljava/lang/String;
    goto :goto_3e

    .line 555
    .end local v7    # "s":Ljava/lang/String;
    :cond_2a
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_3a

    .line 556
    move-object v7, v6

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "s":Ljava/lang/String;
    goto :goto_3e

    .line 558
    .end local v7    # "s":Ljava/lang/String;
    :cond_3a
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 560
    .restart local v7    # "s":Ljava/lang/String;
    :goto_3e
    if-nez v7, :cond_41

    .line 561
    goto :goto_63

    .line 563
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4c

    .line 564
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_4c
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\'"

    .line 567
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 568
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    .line 569
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_67

    .line 549
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "v":Ljava/lang/Object;
    .end local v7    # "s":Ljava/lang/String;
    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 573
    :cond_66
    goto :goto_68

    .line 572
    :catchall_67
    move-exception v2

    .line 574
    :goto_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getInstance()Landroid/icu/text/CurrencyMetaInfo;
    .registers 1

    .line 43
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    return-object v0
.end method

.method public static greylist-max-o getInstance(Z)Landroid/icu/text/CurrencyMetaInfo;
    .registers 2
    .param p0, "noSubstitute"    # Z

    .line 53
    sget-boolean v0, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->impl:Landroid/icu/text/CurrencyMetaInfo;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public static greylist-max-o hasData()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    sget-boolean v0, Landroid/icu/text/CurrencyMetaInfo;->hasData:Z

    return v0
.end method


# virtual methods
.method public greylist-max-o currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 3
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o currencyDigits(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 505
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyUsage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 515
    sget-object v0, Landroid/icu/text/CurrencyMetaInfo;->defaultDigits:Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    return-object v0
.end method

.method public greylist-max-o currencyInfo(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 3
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    .line 470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o regions(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .registers 3
    .param p1, "filter"    # Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class Landroid/icu/util/LocaleMatcher$ScoreData;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoreData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/LocaleMatcher$ScoreData;",
        ">;"
    }
.end annotation


# static fields
.field private static final maxUnequal_changeD_sameS:D = 0.5

.field private static final maxUnequal_changeEqual:D = 0.75


# instance fields
.field private volatile frozen:Z

.field final level:Landroid/icu/util/LocaleMatcher$Level;

.field scores:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/util/LocaleMatcher$Level;)V
    .locals 1
    .param p1, "level"    # Landroid/icu/util/LocaleMatcher$Level;

    #@0
    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 429
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@a
    .line 560
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    #@d
    .line 433
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@f
    .line 432
    return-void
.end method

.method private getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 6
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "supportedLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 520
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->-get0()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 521
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "\t\t\t"

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, " Raw Score:\t"

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, ";\t"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 523
    :cond_0
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v1

    #@3d
    .local v1, "datum$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_3

    #@43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/icu/impl/Row$R3;

    #@49
    .line 524
    .local v0, "datum":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    invoke-virtual {v0}, Landroid/icu/impl/Row$R3;->get0()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@4f
    invoke-virtual {v2, p1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_1

    #@55
    .line 525
    invoke-virtual {v0}, Landroid/icu/impl/Row$R3;->get1()Ljava/lang/Object;

    #@58
    move-result-object v2

    #@59
    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@5b
    invoke-virtual {v2, p2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    #@5e
    move-result v2

    #@5f
    .line 524
    if-eqz v2, :cond_1

    #@61
    .line 526
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->-get0()Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_2

    #@67
    .line 527
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@69
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "\t\t\t\tFOUND\t"

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@80
    .line 529
    :cond_2
    invoke-virtual {v0}, Landroid/icu/impl/Row$R3;->get2()Ljava/lang/Object;

    #@83
    move-result-object v2

    #@84
    check-cast v2, Ljava/lang/Double;

    #@86
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@89
    move-result-wide v2

    #@8a
    return-wide v2

    #@8b
    .line 532
    .end local v0    # "datum":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    :cond_3
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->-get0()Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_4

    #@91
    .line 533
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@93
    new-instance v3, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v4, "\t\t\t\tNOTFOUND\t"

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    iget-object v4, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@a1
    iget-wide v4, v4, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    #@a3
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ae
    .line 535
    :cond_4
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@b0
    iget-wide v2, v2, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    #@b2
    return-wide v2
.end method


# virtual methods
.method addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V
    .locals 4
    .param p1, "desired"    # Ljava/lang/String;
    .param p2, "supported"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 446
    .local p3, "data":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 447
    .local v0, "added":Z
    if-nez v0, :cond_0

    #@8
    .line 448
    new-instance v1, Landroid/icu/util/ICUException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "trying to add duplicate data: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 436
    :cond_0
    return-void
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 3

    #@0
    .prologue
    .line 550
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@6
    .line 551
    .local v1, "result":Landroid/icu/util/LocaleMatcher$ScoreData;
    iget-object v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@8
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/LinkedHashSet;

    #@e
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@10
    .line 552
    const/4 v2, 0x0

    #@11
    iput-boolean v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 553
    return-object v1

    #@14
    .line 554
    .end local v1    # "result":Landroid/icu/util/LocaleMatcher$ScoreData;
    :catch_0
    move-exception v0

    #@15
    .line 555
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@17
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 0

    #@0
    .prologue
    .line 563
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D
    .locals 3
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "dMax"    # Landroid/icu/util/ULocale;
    .param p3, "desiredRaw"    # Ljava/lang/String;
    .param p4, "desiredMax"    # Ljava/lang/String;
    .param p5, "supportedLocale"    # Landroid/icu/util/ULocale;
    .param p6, "sMax"    # Landroid/icu/util/ULocale;
    .param p7, "supportedRaw"    # Ljava/lang/String;
    .param p8, "supportedMax"    # Ljava/lang/String;

    #@0
    .prologue
    .line 477
    const-wide/16 v0, 0x0

    #@2
    .line 478
    .local v0, "distance":D
    invoke-virtual {p4, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 488
    invoke-direct {p0, p2, p6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    #@b
    move-result-wide v0

    #@c
    .line 516
    :cond_0
    :goto_0
    return-wide v0

    #@d
    .line 505
    :cond_1
    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 506
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    #@18
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v4, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    .line 540
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "score$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/icu/impl/Row$R3;

    #@1d
    .line 541
    .local v1, "score":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    const-string/jumbo v3, "\n\t\t"

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 543
    .end local v1    # "score":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

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
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 491
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@a
    .line 566
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    #@d
    .line 495
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@f
    .line 494
    return-void
.end method

.method private getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 4
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "supportedLocale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 529
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "datum$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/icu/impl/Row$R3;

    #@12
    .line 530
    .local v0, "datum":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    invoke-virtual {v0}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@18
    invoke-virtual {v2, p1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 531
    invoke-virtual {v0}, Landroid/icu/impl/Row;->get1()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@24
    invoke-virtual {v2, p2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    #@27
    move-result v2

    #@28
    .line 530
    if-eqz v2, :cond_0

    #@2a
    .line 535
    invoke-virtual {v0}, Landroid/icu/impl/Row;->get2()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Ljava/lang/Double;

    #@30
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@33
    move-result-wide v2

    #@34
    return-wide v2

    #@35
    .line 541
    .end local v0    # "datum":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    :cond_1
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    #@37
    iget-wide v2, v2, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    #@39
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
    .line 508
    .local p3, "data":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 509
    .local v0, "added":Z
    if-nez v0, :cond_0

    #@8
    .line 510
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
    .line 498
    :cond_0
    return-void
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 3

    #@0
    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@6
    .line 557
    .local v1, "result":Landroid/icu/util/LocaleMatcher$ScoreData;
    iget-object v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@8
    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/LinkedHashSet;

    #@e
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@10
    .line 558
    const/4 v2, 0x0

    #@11
    iput-boolean v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 559
    return-object v1

    #@14
    .line 560
    .end local v1    # "result":Landroid/icu/util/LocaleMatcher$ScoreData;
    :catch_0
    move-exception v0

    #@15
    .line 561
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
    .line 554
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
    .line 569
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getMatchingLanguages()Landroid/icu/impl/Relation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 577
    new-instance v5, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    const-class v6, Ljava/util/HashSet;

    #@7
    invoke-static {v5, v6}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    #@a
    move-result-object v1

    #@b
    .line 578
    .local v1, "desiredToSupported":Landroid/icu/impl/Relation;, "Landroid/icu/impl/Relation<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    #@d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    .local v3, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/icu/impl/Row$R3;

    #@1d
    .line 579
    .local v2, "item":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    invoke-virtual {v2}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@23
    .line 580
    .local v0, "desired":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    invoke-virtual {v2}, Landroid/icu/impl/Row;->get1()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@29
    .line 581
    .local v4, "supported":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    invoke-static {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    if-eqz v5, :cond_0

    #@2f
    invoke-static {v4}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 582
    invoke-static {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-static {v4}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v1, v5, v6}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    goto :goto_0

    #@41
    .line 585
    .end local v0    # "desired":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    .end local v2    # "item":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    .end local v4    # "supported":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    :cond_1
    invoke-virtual {v1}, Landroid/icu/impl/Relation;->freeze()Landroid/icu/impl/Relation;

    #@44
    .line 586
    return-object v1
.end method

.method getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D
    .locals 3
    .param p1, "dMax"    # Landroid/icu/util/ULocale;
    .param p2, "desiredRaw"    # Ljava/lang/String;
    .param p3, "desiredMax"    # Ljava/lang/String;
    .param p4, "sMax"    # Landroid/icu/util/ULocale;
    .param p5, "supportedRaw"    # Ljava/lang/String;
    .param p6, "supportedMax"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    const-wide/16 v0, 0x0

    #@2
    .line 517
    .local v0, "distance":D
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    .line 518
    invoke-direct {p0, p1, p4}, Landroid/icu/util/LocaleMatcher$ScoreData;->getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    #@b
    move-result-wide v0

    #@c
    .line 522
    :cond_0
    :goto_0
    return-wide v0

    #@d
    .line 519
    :cond_1
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 520
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    #@18
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 573
    iget-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 545
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
    .line 546
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
    .line 547
    .local v1, "score":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
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
    .line 549
    .end local v1    # "score":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3
.end method

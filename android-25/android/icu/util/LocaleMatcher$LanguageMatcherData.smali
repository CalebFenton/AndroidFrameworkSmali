.class public Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageMatcherData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/LocaleMatcher$LanguageMatcherData;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic -android-icu-util-LocaleMatcher$LevelSwitchesValues:[I


# instance fields
.field private volatile frozen:Z

.field private languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field private matchingLanguages:Landroid/icu/impl/Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/Relation",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field private scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;


# direct methods
.method private static synthetic -getandroid-icu-util-LocaleMatcher$LevelSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android-icu-util-LocaleMatcher$LevelSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android-icu-util-LocaleMatcher$LevelSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/LocaleMatcher$Level;->values()[Landroid/icu/util/LocaleMatcher$Level;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android-icu-util-LocaleMatcher$LevelSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 597
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@5
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@7
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    #@a
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@c
    .line 598
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@e
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@10
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    #@13
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@15
    .line 599
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@17
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    #@19
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    #@1c
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1e
    .line 601
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    #@21
    .line 609
    return-void
.end method

.method private addDistance(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .param p1, "desired"    # Ljava/lang/String;
    .param p2, "supported"    # Ljava/lang/String;
    .param p3, "percent"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 671
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 22
    .param p1, "desired"    # Ljava/lang/String;
    .param p2, "supported"    # Ljava/lang/String;
    .param p3, "percent"    # I
    .param p4, "oneway"    # Z
    .param p5, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 708
    move/from16 v0, p3

    #@2
    int-to-double v0, v0

    #@3
    move-wide/from16 v18, v0

    #@5
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    #@7
    div-double v18, v18, v20

    #@9
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    #@b
    sub-double v10, v20, v18

    #@d
    .line 709
    .local v10, "score":D
    new-instance v6, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-direct {v6, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    #@14
    .line 710
    .local v6, "desiredMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    #@17
    move-result-object v5

    #@18
    .line 711
    .local v5, "desiredLen":Landroid/icu/util/LocaleMatcher$Level;
    new-instance v16, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@1a
    move-object/from16 v0, v16

    #@1c
    move-object/from16 v1, p2

    #@1e
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    #@21
    .line 712
    .local v16, "supportedMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    #@24
    move-result-object v15

    #@25
    .line 713
    .local v15, "supportedLen":Landroid/icu/util/LocaleMatcher$Level;
    if-eq v5, v15, :cond_0

    #@27
    .line 714
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@29
    new-instance v18, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v19, "Lengths unequal: "

    #@31
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v18

    #@35
    move-object/from16 v0, v18

    #@37
    move-object/from16 v1, p1

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v18

    #@3d
    const-string/jumbo v19, ", "

    #@40
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v18

    #@44
    move-object/from16 v0, v18

    #@46
    move-object/from16 v1, p2

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v18

    #@4c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v18

    #@50
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v17

    #@54
    .line 716
    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@57
    move-result-object v17

    #@58
    move-object/from16 v0, v16

    #@5a
    move-object/from16 v1, v17

    #@5c
    invoke-static {v6, v0, v1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    #@5f
    move-result-object v2

    #@60
    .line 717
    .local v2, "data":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    if-eqz p4, :cond_2

    #@62
    const/4 v3, 0x0

    #@63
    .line 718
    :goto_0
    move-object/from16 v0, v16

    #@65
    invoke-virtual {v6, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v4

    #@69
    .line 719
    .local v4, "desiredEqualsSupported":Z
    invoke-static {}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-getandroid-icu-util-LocaleMatcher$LevelSwitchesValues()[I

    #@6c
    move-result-object v17

    #@6d
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    #@70
    move-result v18

    #@71
    aget v17, v17, v18

    #@73
    packed-switch v17, :pswitch_data_0

    #@76
    .line 745
    :cond_1
    :goto_1
    return-object p0

    #@77
    .line 717
    .end local v4    # "desiredEqualsSupported":Z
    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7a
    move-result-object v17

    #@7b
    move-object/from16 v0, v16

    #@7d
    move-object/from16 v1, v17

    #@7f
    invoke-static {v0, v6, v1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    #@82
    move-result-object v3

    #@83
    .local v3, "data2":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    goto :goto_0

    #@84
    .line 721
    .end local v3    # "data2":Landroid/icu/impl/Row$R3;, "Landroid/icu/impl/Row$R3<Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    .restart local v4    # "desiredEqualsSupported":Z
    :pswitch_0
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    #@87
    move-result-object v7

    #@88
    .line 722
    .local v7, "dlanguage":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    #@8b
    move-result-object v12

    #@8c
    .line 723
    .local v12, "slanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8e
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@90
    move-object/from16 v17, v0

    #@92
    move-object/from16 v0, v17

    #@94
    invoke-virtual {v0, v7, v12, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@97
    .line 724
    if-nez p4, :cond_1

    #@99
    if-nez v4, :cond_1

    #@9b
    .line 725
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@9f
    move-object/from16 v17, v0

    #@a1
    move-object/from16 v0, v17

    #@a3
    invoke-virtual {v0, v12, v7, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@a6
    goto :goto_1

    #@a7
    .line 729
    .end local v7    # "dlanguage":Ljava/lang/String;
    .end local v12    # "slanguage":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    .line 730
    .local v9, "dscript":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    #@ae
    move-result-object v14

    #@af
    .line 731
    .local v14, "sscript":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@b3
    move-object/from16 v17, v0

    #@b5
    move-object/from16 v0, v17

    #@b7
    invoke-virtual {v0, v9, v14, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@ba
    .line 732
    if-nez p4, :cond_1

    #@bc
    if-nez v4, :cond_1

    #@be
    .line 733
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@c2
    move-object/from16 v17, v0

    #@c4
    move-object/from16 v0, v17

    #@c6
    invoke-virtual {v0, v14, v9, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@c9
    goto :goto_1

    #@ca
    .line 737
    .end local v9    # "dscript":Ljava/lang/String;
    .end local v14    # "sscript":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    .line 738
    .local v8, "dregion":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    #@d1
    move-result-object v13

    #@d2
    .line 739
    .local v13, "sregion":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@d6
    move-object/from16 v17, v0

    #@d8
    move-object/from16 v0, v17

    #@da
    invoke-virtual {v0, v8, v13, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@dd
    .line 740
    if-nez p4, :cond_1

    #@df
    if-nez v4, :cond_1

    #@e1
    .line 741
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@e5
    move-object/from16 v17, v0

    #@e7
    move-object/from16 v0, v17

    #@e9
    invoke-virtual {v0, v13, v8, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@ec
    goto :goto_1

    #@ed
    .line 719
    nop

    #@ee
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDistance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .param p1, "desired"    # Ljava/lang/String;
    .param p2, "supported"    # Ljava/lang/String;
    .param p3, "percent"    # I
    .param p4, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 679
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .param p1, "desired"    # Ljava/lang/String;
    .param p2, "supported"    # Ljava/lang/String;
    .param p3, "percent"    # I
    .param p4, "oneway"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 687
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 757
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@6
    .line 758
    .local v1, "result":Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@8
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@b
    move-result-object v2

    #@c
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@e
    .line 759
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@10
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@13
    move-result-object v2

    #@14
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@16
    .line 760
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@18
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1e
    .line 761
    const/4 v2, 0x0

    #@1f
    iput-boolean v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 762
    return-object v1

    #@22
    .line 763
    .end local v1    # "result":Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    :catch_0
    move-exception v0

    #@23
    .line 764
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@25
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 754
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@5
    .line 776
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@7
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@a
    .line 777
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@c
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@f
    .line 778
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@11
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->getMatchingLanguages()Landroid/icu/impl/Relation;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages:Landroid/icu/impl/Relation;

    #@17
    .line 779
    const/4 v0, 0x1

    #@18
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    #@1a
    .line 780
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 774
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 790
    iget-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    #@2
    return v0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 10
    .param p1, "a"    # Landroid/icu/util/ULocale;
    .param p2, "aMax"    # Landroid/icu/util/ULocale;
    .param p3, "b"    # Landroid/icu/util/ULocale;
    .param p4, "bMax"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@2
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    move-object v1, p2

    #@13
    move-object v4, p4

    #@14
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    #@17
    move-result-wide v0

    #@18
    .line 636
    const-wide/16 v2, 0x0

    #@1a
    .line 637
    add-double v8, v2, v0

    #@1c
    .line 638
    .local v8, "diff":D
    const-wide v0, 0x3feff7ced916872bL    # 0.999

    #@21
    cmpl-double v0, v8, v0

    #@23
    if-lez v0, :cond_0

    #@25
    .line 639
    const-wide/16 v0, 0x0

    #@27
    return-wide v0

    #@28
    .line 641
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@2a
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    move-object v1, p2

    #@3b
    move-object v4, p4

    #@3c
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    #@3f
    move-result-wide v0

    #@40
    add-double/2addr v8, v0

    #@41
    .line 642
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@43
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    move-object v1, p2

    #@54
    move-object v4, p4

    #@55
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    #@58
    move-result-wide v0

    #@59
    add-double/2addr v8, v0

    #@5a
    .line 644
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v0

    #@66
    if-nez v0, :cond_1

    #@68
    .line 645
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    #@6d
    add-double/2addr v8, v0

    #@6e
    .line 647
    :cond_1
    const-wide/16 v0, 0x0

    #@70
    cmpg-double v0, v8, v0

    #@72
    if-gez v0, :cond_3

    #@74
    .line 648
    const-wide/16 v8, 0x0

    #@76
    .line 655
    :cond_2
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@78
    sub-double/2addr v0, v8

    #@79
    return-wide v0

    #@7a
    .line 649
    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@7c
    cmpl-double v0, v8, v0

    #@7e
    if-lez v0, :cond_2

    #@80
    .line 650
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@82
    goto :goto_0
.end method

.method public matchingLanguages()Landroid/icu/impl/Relation;
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages:Landroid/icu/impl/Relation;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "\n\t"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "\n\t"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

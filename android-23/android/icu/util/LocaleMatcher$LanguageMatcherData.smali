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
.field private static synthetic -android_icu_util_LocaleMatcher$LevelSwitchesValues:[I


# instance fields
.field private volatile frozen:Z

.field languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;


# direct methods
.method private static synthetic -getandroid_icu_util_LocaleMatcher$LevelSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android_icu_util_LocaleMatcher$LevelSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android_icu_util_LocaleMatcher$LevelSwitchesValues:[I

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
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

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
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

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
    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

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
    sput-object v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-android_icu_util_LocaleMatcher$LevelSwitchesValues:[I

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
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 578
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@5
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@7
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    #@a
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@c
    .line 579
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@e
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@10
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    #@13
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@15
    .line 580
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    #@17
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    #@19
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    #@1c
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1e
    .line 734
    const/4 v0, 0x0

    #@1f
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    #@21
    .line 587
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
    .line 637
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
    .line 657
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->-get0()Z

    #@3
    move-result v17

    #@4
    if-eqz v17, :cond_0

    #@6
    .line 658
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    new-instance v17, Ljava/lang/StringBuilder;

    #@a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v19, "\t<languageMatch desired=\""

    #@10
    move-object/from16 v0, v17

    #@12
    move-object/from16 v1, v19

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v17

    #@18
    move-object/from16 v0, v17

    #@1a
    move-object/from16 v1, p1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v17

    #@20
    const-string/jumbo v19, "\""

    #@23
    move-object/from16 v0, v17

    #@25
    move-object/from16 v1, v19

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v17

    #@2b
    .line 659
    const-string/jumbo v19, " supported=\""

    #@2e
    .line 658
    move-object/from16 v0, v17

    #@30
    move-object/from16 v1, v19

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v17

    #@36
    move-object/from16 v0, v17

    #@38
    move-object/from16 v1, p2

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v17

    #@3e
    .line 659
    const-string/jumbo v19, "\""

    #@41
    .line 658
    move-object/from16 v0, v17

    #@43
    move-object/from16 v1, v19

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v17

    #@49
    .line 660
    const-string/jumbo v19, " percent=\""

    #@4c
    .line 658
    move-object/from16 v0, v17

    #@4e
    move-object/from16 v1, v19

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v17

    #@54
    move-object/from16 v0, v17

    #@56
    move/from16 v1, p3

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v17

    #@5c
    .line 660
    const-string/jumbo v19, "\""

    #@5f
    .line 658
    move-object/from16 v0, v17

    #@61
    move-object/from16 v1, v19

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v19

    #@67
    .line 661
    if-eqz p4, :cond_1

    #@69
    const-string/jumbo v17, " oneway=\"true\""

    #@6c
    .line 658
    :goto_0
    move-object/from16 v0, v19

    #@6e
    move-object/from16 v1, v17

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v17

    #@74
    .line 662
    const-string/jumbo v19, "/>"

    #@77
    .line 658
    move-object/from16 v0, v17

    #@79
    move-object/from16 v1, v19

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v19

    #@7f
    .line 663
    if-nez p5, :cond_2

    #@81
    const-string/jumbo v17, ""

    #@84
    .line 658
    :goto_1
    move-object/from16 v0, v19

    #@86
    move-object/from16 v1, v17

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v17

    #@8c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v17

    #@90
    move-object/from16 v0, v18

    #@92
    move-object/from16 v1, v17

    #@94
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@97
    .line 674
    :cond_0
    move/from16 v0, p3

    #@99
    int-to-double v0, v0

    #@9a
    move-wide/from16 v18, v0

    #@9c
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    #@9e
    div-double v18, v18, v20

    #@a0
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    #@a2
    sub-double v10, v20, v18

    #@a4
    .line 675
    .local v10, "score":D
    new-instance v6, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@a6
    move-object/from16 v0, p1

    #@a8
    invoke-direct {v6, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    #@ab
    .line 676
    .local v6, "desiredMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    #@ae
    move-result-object v5

    #@af
    .line 677
    .local v5, "desiredLen":Landroid/icu/util/LocaleMatcher$Level;
    new-instance v16, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    #@b1
    move-object/from16 v0, v16

    #@b3
    move-object/from16 v1, p2

    #@b5
    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    #@b8
    .line 678
    .local v16, "supportedMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    #@bb
    move-result-object v15

    #@bc
    .line 679
    .local v15, "supportedLen":Landroid/icu/util/LocaleMatcher$Level;
    if-eq v5, v15, :cond_3

    #@be
    .line 680
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@c0
    new-instance v18, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v19, "Lengths unequal: "

    #@c8
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v18

    #@cc
    move-object/from16 v0, v18

    #@ce
    move-object/from16 v1, p1

    #@d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v18

    #@d4
    const-string/jumbo v19, ", "

    #@d7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v18

    #@db
    move-object/from16 v0, v18

    #@dd
    move-object/from16 v1, p2

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v18

    #@e3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v18

    #@e7
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ea
    throw v17

    #@eb
    .line 661
    .end local v5    # "desiredLen":Landroid/icu/util/LocaleMatcher$Level;
    .end local v6    # "desiredMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    .end local v10    # "score":D
    .end local v15    # "supportedLen":Landroid/icu/util/LocaleMatcher$Level;
    .end local v16    # "supportedMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    :cond_1
    const-string/jumbo v17, ""

    #@ee
    goto/16 :goto_0

    #@f0
    .line 663
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v20, "\t<!-- "

    #@f8
    move-object/from16 v0, v17

    #@fa
    move-object/from16 v1, v20

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v17

    #@100
    move-object/from16 v0, v17

    #@102
    move-object/from16 v1, p5

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v17

    #@108
    const-string/jumbo v20, " -->"

    #@10b
    move-object/from16 v0, v17

    #@10d
    move-object/from16 v1, v20

    #@10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v17

    #@113
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v17

    #@117
    goto/16 :goto_1

    #@119
    .line 682
    .restart local v5    # "desiredLen":Landroid/icu/util/LocaleMatcher$Level;
    .restart local v6    # "desiredMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    .restart local v10    # "score":D
    .restart local v15    # "supportedLen":Landroid/icu/util/LocaleMatcher$Level;
    .restart local v16    # "supportedMatcher":Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@11c
    move-result-object v17

    #@11d
    move-object/from16 v0, v16

    #@11f
    move-object/from16 v1, v17

    #@121
    invoke-static {v6, v0, v1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    #@124
    move-result-object v2

    #@125
    .line 683
    .local v2, "data":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    if-eqz p4, :cond_5

    #@127
    const/4 v3, 0x0

    #@128
    .line 684
    :goto_2
    move-object/from16 v0, v16

    #@12a
    invoke-virtual {v6, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v4

    #@12e
    .line 685
    .local v4, "desiredEqualsSupported":Z
    invoke-static {}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->-getandroid_icu_util_LocaleMatcher$LevelSwitchesValues()[I

    #@131
    move-result-object v17

    #@132
    invoke-virtual {v5}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    #@135
    move-result v18

    #@136
    aget v17, v17, v18

    #@138
    packed-switch v17, :pswitch_data_0

    #@13b
    .line 711
    :cond_4
    :goto_3
    return-object p0

    #@13c
    .line 683
    .end local v4    # "desiredEqualsSupported":Z
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@13f
    move-result-object v17

    #@140
    move-object/from16 v0, v16

    #@142
    move-object/from16 v1, v17

    #@144
    invoke-static {v0, v6, v1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    #@147
    move-result-object v3

    #@148
    .local v3, "data2":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    goto :goto_2

    #@149
    .line 687
    .end local v3    # "data2":Landroid/icu/impl/Row$R3;, "Lcom/ibm/icu/impl/Row$R3<Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Lcom/ibm/icu/util/LocaleMatcher$LocalePatternMatcher;Ljava/lang/Double;>;"
    .restart local v4    # "desiredEqualsSupported":Z
    :pswitch_0
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    #@14c
    move-result-object v7

    #@14d
    .line 688
    .local v7, "dlanguage":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    #@150
    move-result-object v12

    #@151
    .line 689
    .local v12, "slanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@155
    move-object/from16 v17, v0

    #@157
    move-object/from16 v0, v17

    #@159
    invoke-virtual {v0, v7, v12, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@15c
    .line 690
    if-nez p4, :cond_4

    #@15e
    if-nez v4, :cond_4

    #@160
    .line 691
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@164
    move-object/from16 v17, v0

    #@166
    move-object/from16 v0, v17

    #@168
    invoke-virtual {v0, v12, v7, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@16b
    goto :goto_3

    #@16c
    .line 695
    .end local v7    # "dlanguage":Ljava/lang/String;
    .end local v12    # "slanguage":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    #@16f
    move-result-object v9

    #@170
    .line 696
    .local v9, "dscript":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    #@173
    move-result-object v14

    #@174
    .line 697
    .local v14, "sscript":Ljava/lang/String;
    move-object/from16 v0, p0

    #@176
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@178
    move-object/from16 v17, v0

    #@17a
    move-object/from16 v0, v17

    #@17c
    invoke-virtual {v0, v9, v14, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@17f
    .line 698
    if-nez p4, :cond_4

    #@181
    if-nez v4, :cond_4

    #@183
    .line 699
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@187
    move-object/from16 v17, v0

    #@189
    move-object/from16 v0, v17

    #@18b
    invoke-virtual {v0, v14, v9, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@18e
    goto :goto_3

    #@18f
    .line 703
    .end local v9    # "dscript":Ljava/lang/String;
    .end local v14    # "sscript":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    #@192
    move-result-object v8

    #@193
    .line 704
    .local v8, "dregion":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    #@196
    move-result-object v13

    #@197
    .line 705
    .local v13, "sregion":Ljava/lang/String;
    move-object/from16 v0, p0

    #@199
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@19b
    move-object/from16 v17, v0

    #@19d
    move-object/from16 v0, v17

    #@19f
    invoke-virtual {v0, v8, v13, v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@1a2
    .line 706
    if-nez p4, :cond_4

    #@1a4
    if-nez v4, :cond_4

    #@1a6
    .line 707
    move-object/from16 v0, p0

    #@1a8
    iget-object v0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1aa
    move-object/from16 v17, v0

    #@1ac
    move-object/from16 v0, v17

    #@1ae
    invoke-virtual {v0, v13, v8, v3}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    #@1b1
    goto :goto_3

    #@1b2
    .line 685
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
    .line 645
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
    .line 653
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
    .line 723
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@6
    .line 724
    .local v1, "result":Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@8
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@b
    move-result-object v2

    #@c
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@e
    .line 725
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@10
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@13
    move-result-object v2

    #@14
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@16
    .line 726
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@18
    invoke-virtual {v2}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1b
    move-result-object v2

    #@1c
    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@1e
    .line 727
    const/4 v2, 0x0

    #@1f
    iput-boolean v2, v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 728
    return-object v1

    #@22
    .line 729
    .end local v1    # "result":Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    :catch_0
    move-exception v0

    #@23
    .line 730
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
    .line 720
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 743
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 742
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
    .line 753
    iget-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    #@2
    return v0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 12
    .param p1, "a"    # Landroid/icu/util/ULocale;
    .param p2, "aMax"    # Landroid/icu/util/ULocale;
    .param p3, "b"    # Landroid/icu/util/ULocale;
    .param p4, "bMax"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 606
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@2
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@11
    move-result-object v8

    #@12
    move-object v1, p1

    #@13
    move-object v2, p2

    #@14
    move-object v5, p3

    #@15
    move-object/from16 v6, p4

    #@17
    invoke-virtual/range {v0 .. v8}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    #@1a
    move-result-wide v0

    #@1b
    .line 605
    const-wide/16 v2, 0x0

    #@1d
    .line 606
    add-double v10, v2, v0

    #@1f
    .line 607
    .local v10, "diff":D
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@21
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@30
    move-result-object v8

    #@31
    move-object v1, p1

    #@32
    move-object v2, p2

    #@33
    move-object v5, p3

    #@34
    move-object/from16 v6, p4

    #@36
    invoke-virtual/range {v0 .. v8}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    #@39
    move-result-wide v0

    #@3a
    add-double/2addr v10, v0

    #@3b
    .line 608
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    #@3d
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    move-object v1, p1

    #@4e
    move-object v2, p2

    #@4f
    move-object v5, p3

    #@50
    move-object/from16 v6, p4

    #@52
    invoke-virtual/range {v0 .. v8}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    #@55
    move-result-wide v0

    #@56
    add-double/2addr v10, v0

    #@57
    .line 610
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {p3}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v0

    #@63
    if-nez v0, :cond_0

    #@65
    .line 611
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    #@6a
    add-double/2addr v10, v0

    #@6b
    .line 613
    :cond_0
    const-wide/16 v0, 0x0

    #@6d
    cmpg-double v0, v10, v0

    #@6f
    if-gez v0, :cond_3

    #@71
    .line 614
    const-wide/16 v10, 0x0

    #@73
    .line 618
    :cond_1
    :goto_0
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->-get0()Z

    #@76
    move-result v0

    #@77
    if-eqz v0, :cond_2

    #@79
    .line 619
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7b
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v2, "\t\t\tTotal Distance\t"

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@92
    .line 621
    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@94
    sub-double/2addr v0, v10

    #@95
    return-wide v0

    #@96
    .line 615
    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@98
    cmpl-double v0, v10, v0

    #@9a
    if-lez v0, :cond_1

    #@9c
    .line 616
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@9e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 596
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

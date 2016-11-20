.class public Landroid/media/audiofx/EnvironmentalReverb$Settings;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/EnvironmentalReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public decayHFRatio:S

.field public decayTime:I

.field public density:S

.field public diffusion:S

.field public reflectionsDelay:I

.field public reflectionsLevel:S

.field public reverbDelay:I

.field public reverbLevel:S

.field public roomHFLevel:S

.field public roomLevel:S


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "settings"    # Ljava/lang/String;

    #@0
    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 522
    new-instance v2, Ljava/util/StringTokenizer;

    #@5
    const-string/jumbo v4, "=;"

    #@8
    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 523
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    #@e
    move-result v3

    #@f
    .line 524
    .local v3, "tokens":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    #@12
    move-result v4

    #@13
    const/16 v5, 0x15

    #@15
    if-eq v4, v5, :cond_0

    #@17
    .line 525
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v5, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v6, "settings: "

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 527
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .line 528
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "EnvironmentalReverb"

    #@38
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v4

    #@3c
    if-nez v4, :cond_1

    #@3e
    .line 529
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@40
    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "invalid settings for EnvironmentalReverb: "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    .line 529
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v4

    #@58
    .line 534
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 535
    const-string/jumbo v4, "roomLevel"

    #@5f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v4

    #@63
    if-nez v4, :cond_2

    #@65
    .line 536
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@67
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v6, "invalid key name: "

    #@6f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7f
    .line 584
    :catch_0
    move-exception v1

    #@80
    .line 585
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@82
    new-instance v5, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v6, "invalid value for key: "

    #@8a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@99
    throw v4

    #@9a
    .line 538
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@9d
    move-result-object v4

    #@9e
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@a1
    move-result v4

    #@a2
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    #@a4
    .line 539
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    .line 540
    const-string/jumbo v4, "roomHFLevel"

    #@ab
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ae
    move-result v4

    #@af
    if-nez v4, :cond_3

    #@b1
    .line 541
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@b3
    new-instance v5, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v6, "invalid key name: "

    #@bb
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ca
    throw v4

    #@cb
    .line 543
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@ce
    move-result-object v4

    #@cf
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@d2
    move-result v4

    #@d3
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    #@d5
    .line 544
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    .line 545
    const-string/jumbo v4, "decayTime"

    #@dc
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v4

    #@e0
    if-nez v4, :cond_4

    #@e2
    .line 546
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@e4
    new-instance v5, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v6, "invalid key name: "

    #@ec
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v5

    #@f0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v5

    #@f4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v5

    #@f8
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fb
    throw v4

    #@fc
    .line 548
    :cond_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@ff
    move-result-object v4

    #@100
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@103
    move-result v4

    #@104
    iput v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    #@106
    .line 549
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    .line 550
    const-string/jumbo v4, "decayHFRatio"

    #@10d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@110
    move-result v4

    #@111
    if-nez v4, :cond_5

    #@113
    .line 551
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@115
    new-instance v5, Ljava/lang/StringBuilder;

    #@117
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11a
    const-string/jumbo v6, "invalid key name: "

    #@11d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v5

    #@121
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v5

    #@125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@128
    move-result-object v5

    #@129
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12c
    throw v4

    #@12d
    .line 553
    :cond_5
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@130
    move-result-object v4

    #@131
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@134
    move-result v4

    #@135
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    #@137
    .line 554
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@13a
    move-result-object v0

    #@13b
    .line 555
    const-string/jumbo v4, "reflectionsLevel"

    #@13e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@141
    move-result v4

    #@142
    if-nez v4, :cond_6

    #@144
    .line 556
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@146
    new-instance v5, Ljava/lang/StringBuilder;

    #@148
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14b
    const-string/jumbo v6, "invalid key name: "

    #@14e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v5

    #@152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v5

    #@156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v5

    #@15a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15d
    throw v4

    #@15e
    .line 558
    :cond_6
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@161
    move-result-object v4

    #@162
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@165
    move-result v4

    #@166
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    #@168
    .line 559
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16b
    move-result-object v0

    #@16c
    .line 560
    const-string/jumbo v4, "reflectionsDelay"

    #@16f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@172
    move-result v4

    #@173
    if-nez v4, :cond_7

    #@175
    .line 561
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@177
    new-instance v5, Ljava/lang/StringBuilder;

    #@179
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@17c
    const-string/jumbo v6, "invalid key name: "

    #@17f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v5

    #@183
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v5

    #@187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v5

    #@18b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18e
    throw v4

    #@18f
    .line 563
    :cond_7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@192
    move-result-object v4

    #@193
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@196
    move-result v4

    #@197
    iput v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    #@199
    .line 564
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@19c
    move-result-object v0

    #@19d
    .line 565
    const-string/jumbo v4, "reverbLevel"

    #@1a0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a3
    move-result v4

    #@1a4
    if-nez v4, :cond_8

    #@1a6
    .line 566
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@1aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1ad
    const-string/jumbo v6, "invalid key name: "

    #@1b0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v5

    #@1b4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v5

    #@1b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v5

    #@1bc
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1bf
    throw v4

    #@1c0
    .line 568
    :cond_8
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1c3
    move-result-object v4

    #@1c4
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@1c7
    move-result v4

    #@1c8
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    #@1ca
    .line 569
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1cd
    move-result-object v0

    #@1ce
    .line 570
    const-string/jumbo v4, "reverbDelay"

    #@1d1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d4
    move-result v4

    #@1d5
    if-nez v4, :cond_9

    #@1d7
    .line 571
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1d9
    new-instance v5, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v6, "invalid key name: "

    #@1e1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v5

    #@1e5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v5

    #@1e9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ec
    move-result-object v5

    #@1ed
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f0
    throw v4

    #@1f1
    .line 573
    :cond_9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1f4
    move-result-object v4

    #@1f5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f8
    move-result v4

    #@1f9
    iput v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    #@1fb
    .line 574
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1fe
    move-result-object v0

    #@1ff
    .line 575
    const-string/jumbo v4, "diffusion"

    #@202
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@205
    move-result v4

    #@206
    if-nez v4, :cond_a

    #@208
    .line 576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@20a
    new-instance v5, Ljava/lang/StringBuilder;

    #@20c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@20f
    const-string/jumbo v6, "invalid key name: "

    #@212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v5

    #@216
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v5

    #@21a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21d
    move-result-object v5

    #@21e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@221
    throw v4

    #@222
    .line 578
    :cond_a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@225
    move-result-object v4

    #@226
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@229
    move-result v4

    #@22a
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    #@22c
    .line 579
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@22f
    move-result-object v0

    #@230
    .line 580
    const-string/jumbo v4, "density"

    #@233
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@236
    move-result v4

    #@237
    if-nez v4, :cond_b

    #@239
    .line 581
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@23b
    new-instance v5, Ljava/lang/StringBuilder;

    #@23d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@240
    const-string/jumbo v6, "invalid key name: "

    #@243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v5

    #@247
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24a
    move-result-object v5

    #@24b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24e
    move-result-object v5

    #@24f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@252
    throw v4

    #@253
    .line 583
    :cond_b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@256
    move-result-object v4

    #@257
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@25a
    move-result v4

    #@25b
    iput-short v4, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@25d
    .line 521
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 591
    new-instance v0, Ljava/lang/String;

    #@2
    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "EnvironmentalReverb;roomLevel="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 593
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    #@10
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 594
    const-string/jumbo v2, ";roomHFLevel="

    #@1b
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 594
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    #@21
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 595
    const-string/jumbo v2, ";decayTime="

    #@2c
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 595
    iget v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    #@32
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 596
    const-string/jumbo v2, ";decayHFRatio="

    #@3d
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 596
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    #@43
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 597
    const-string/jumbo v2, ";reflectionsLevel="

    #@4e
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    .line 597
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    #@54
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 598
    const-string/jumbo v2, ";reflectionsDelay="

    #@5f
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 598
    iget v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    #@65
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 599
    const-string/jumbo v2, ";reverbLevel="

    #@70
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    .line 599
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    #@76
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 600
    const-string/jumbo v2, ";reverbDelay="

    #@81
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    .line 600
    iget v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    #@87
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 601
    const-string/jumbo v2, ";diffusion="

    #@92
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 601
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    #@98
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@9b
    move-result-object v2

    #@9c
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    .line 602
    const-string/jumbo v2, ";density="

    #@a3
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    .line 602
    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    #@a9
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    .line 591
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@b8
    return-object v0
.end method

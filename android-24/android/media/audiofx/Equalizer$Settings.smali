.class public Landroid/media/audiofx/Equalizer$Settings;
.super Ljava/lang/Object;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public bandLevels:[S

.field public curPreset:S

.field public numBands:S


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 449
    const/4 v0, 0x0

    #@4
    iput-short v0, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@6
    .line 450
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@9
    .line 452
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "settings"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 449
    const/4 v5, 0x0

    #@4
    iput-short v5, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@6
    .line 450
    const/4 v5, 0x0

    #@7
    iput-object v5, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@9
    .line 461
    new-instance v3, Ljava/util/StringTokenizer;

    #@b
    const-string/jumbo v5, "=;"

    #@e
    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 462
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@14
    move-result v4

    #@15
    .line 463
    .local v4, "tokens":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@18
    move-result v5

    #@19
    const/4 v6, 0x5

    #@1a
    if-ge v5, v6, :cond_0

    #@1c
    .line 464
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v6, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v7, "settings: "

    #@26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v5

    #@36
    .line 466
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 467
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "Equalizer"

    #@3d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v5

    #@41
    if-nez v5, :cond_1

    #@43
    .line 468
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@45
    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v7, "invalid settings for Equalizer: "

    #@4d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    .line 468
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v5

    #@5d
    .line 472
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    .line 473
    const-string/jumbo v5, "curPreset"

    #@64
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v5

    #@68
    if-nez v5, :cond_2

    #@6a
    .line 474
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@6c
    new-instance v6, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string/jumbo v7, "invalid key name: "

    #@74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@83
    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 493
    :catch_0
    move-exception v2

    #@85
    .line 494
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@87
    new-instance v6, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string/jumbo v7, "invalid value for key: "

    #@8f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v6

    #@9b
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v5

    #@9f
    .line 476
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@a6
    move-result v5

    #@a7
    iput-short v5, p0, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    #@a9
    .line 477
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    .line 478
    const-string/jumbo v5, "numBands"

    #@b0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v5

    #@b4
    if-nez v5, :cond_3

    #@b6
    .line 479
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@b8
    new-instance v6, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v7, "invalid key name: "

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v6

    #@cc
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v5

    #@d0
    .line 481
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@d3
    move-result-object v5

    #@d4
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@d7
    move-result v5

    #@d8
    iput-short v5, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@da
    .line 482
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@dd
    move-result v5

    #@de
    iget-short v6, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@e0
    mul-int/lit8 v6, v6, 0x2

    #@e2
    if-eq v5, v6, :cond_4

    #@e4
    .line 483
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@e6
    new-instance v6, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v7, "settings: "

    #@ee
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v6

    #@f2
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v6

    #@f6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v6

    #@fa
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v5

    #@fe
    .line 485
    :cond_4
    iget-short v5, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@100
    new-array v5, v5, [S

    #@102
    iput-object v5, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@104
    .line 486
    const/4 v0, 0x0

    #@105
    .local v0, "i":I
    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@107
    if-ge v0, v5, :cond_6

    #@109
    .line 487
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@10c
    move-result-object v1

    #@10d
    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v6, "band"

    #@115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    add-int/lit8 v6, v0, 0x1

    #@11b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v5

    #@11f
    const-string/jumbo v6, "Level"

    #@122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v5

    #@12a
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v5

    #@12e
    if-nez v5, :cond_5

    #@130
    .line 489
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@132
    new-instance v6, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v7, "invalid key name: "

    #@13a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v6

    #@13e
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v6

    #@142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v6

    #@146
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@149
    throw v5

    #@14a
    .line 491
    :cond_5
    iget-object v5, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@14c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@14f
    move-result-object v6

    #@150
    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@153
    move-result v6

    #@154
    aput-short v6, v5, v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@156
    .line 486
    add-int/lit8 v0, v0, 0x1

    #@158
    goto :goto_0

    #@159
    .line 460
    :cond_6
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 501
    new-instance v1, Ljava/lang/String;

    #@2
    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "Equalizer;curPreset="

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    .line 503
    iget-short v3, p0, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    #@10
    invoke-static {v3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 504
    const-string/jumbo v3, ";numBands="

    #@1b
    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 504
    iget-short v3, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@21
    invoke-static {v3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 502
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 501
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@30
    .line 506
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    #@31
    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    #@33
    if-ge v0, v2, :cond_0

    #@35
    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, ";band"

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    add-int/lit8 v3, v0, 0x1

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    const-string/jumbo v3, "Level="

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    iget-object v3, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    #@50
    aget-short v3, v3, v0

    #@52
    invoke-static {v3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 506
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_0

    #@65
    .line 509
    :cond_0
    return-object v1
.end method

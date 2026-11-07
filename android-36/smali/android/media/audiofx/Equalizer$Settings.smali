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
.field public whitelist bandLevels:[S

.field public whitelist curPreset:S

.field public whitelist numBands:S


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 452
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "settings"    # Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 460
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "=;"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 462
    .local v1, "tokens":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, "settings: "

    if-lt v2, v3, :cond_134

    .line 465
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "key":Ljava/lang/String;
    const-string v3, "Equalizer"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11b

    .line 471
    :try_start_29
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 472
    const-string v3, "curPreset"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_34} :catch_101

    const-string v5, "invalid key name: "

    if-eqz v3, :cond_ea

    .line 475
    :try_start_38
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 476
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 477
    const-string v3, "numBands"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 480
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 481
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    iget-short v6, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    mul-int/lit8 v6, v6, 0x2

    if-ne v3, v6, :cond_bc

    .line 484
    iget-short v3, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    new-array v3, v3, [S

    iput-object v3, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 485
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6a
    iget-short v4, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    if-ge v3, v4, :cond_ba

    .line 486
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Level"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 490
    iget-object v4, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    aput-short v6, v4, v3

    .line 485
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 488
    :cond_a3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v4

    .line 494
    .end local v3    # "i":I
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_ba
    nop

    .line 495
    return-void

    .line 482
    :cond_bc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 478
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_d3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 473
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_ea
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3
    :try_end_101
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_101} :catch_101

    .line 492
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/Equalizer$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :catch_101
    move-exception v3

    .line 493
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid value for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 467
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_11b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid settings for Equalizer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    .end local v2    # "key":Ljava/lang/String;
    :cond_134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 500
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Equalizer;curPreset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 502
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";numBands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 503
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget-short v2, p0, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    if-ge v1, v2, :cond_61

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";band"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v3, v3, v1

    invoke-static {v3}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 508
    .end local v1    # "i":I
    :cond_61
    return-object v0
.end method

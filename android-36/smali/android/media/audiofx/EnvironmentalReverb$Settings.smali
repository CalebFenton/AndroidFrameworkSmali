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
.field public whitelist decayHFRatio:S

.field public whitelist decayTime:I

.field public whitelist density:S

.field public whitelist diffusion:S

.field public whitelist reflectionsDelay:I

.field public whitelist reflectionsLevel:S

.field public whitelist reverbDelay:I

.field public whitelist reverbLevel:S

.field public whitelist roomHFLevel:S

.field public whitelist roomLevel:S


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "settings"    # Ljava/lang/String;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "=;"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 524
    .local v1, "tokens":I
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_225

    .line 527
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "key":Ljava/lang/String;
    const-string v3, "EnvironmentalReverb"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 534
    :try_start_22
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 535
    const-string v3, "roomLevel"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2d} :catch_1f2

    const-string v4, "invalid key name: "

    if-eqz v3, :cond_1db

    .line 538
    :try_start_31
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    .line 539
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 540
    const-string v3, "roomHFLevel"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 543
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    .line 544
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 545
    const-string v3, "decayTime"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    .line 548
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    .line 549
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 550
    const-string v3, "decayHFRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 553
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 554
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 555
    const-string v3, "reflectionsLevel"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17f

    .line 558
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    .line 559
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 560
    const-string v3, "reflectionsDelay"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_168

    .line 563
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    .line 564
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 565
    const-string v3, "reverbLevel"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 568
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    .line 569
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 570
    const-string v3, "reverbDelay"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 573
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    .line 574
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 575
    const-string v3, "diffusion"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 578
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    .line 579
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 580
    const-string v3, "density"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 583
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    iput-short v3, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    .line 586
    nop

    .line 587
    return-void

    .line 581
    :cond_10c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 576
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_123
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 571
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_13a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 566
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 561
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_168
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 556
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_17f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 551
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_196
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 546
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_1ad
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 541
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_1c4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3

    .line 536
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :cond_1db
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "st":Ljava/util/StringTokenizer;
    .end local v1    # "tokens":I
    .end local v2    # "key":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .end local p1    # "settings":Ljava/lang/String;
    throw v3
    :try_end_1f2
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_1f2} :catch_1f2

    .line 584
    .restart local v0    # "st":Ljava/util/StringTokenizer;
    .restart local v1    # "tokens":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .restart local p1    # "settings":Ljava/lang/String;
    :catch_1f2
    move-exception v3

    .line 585
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

    .line 529
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :cond_20c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid settings for EnvironmentalReverb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    .end local v2    # "key":Ljava/lang/String;
    :cond_225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings: "

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
    .registers 4

    .line 591
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnvironmentalReverb;roomLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    .line 593
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";roomHFLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    .line 594
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";decayTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    .line 595
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";decayHFRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 596
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";reflectionsLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    .line 597
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";reflectionsDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    .line 598
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";reverbLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    .line 599
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";reverbDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    .line 600
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";diffusion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    .line 601
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    .line 602
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 591
    return-object v0
.end method

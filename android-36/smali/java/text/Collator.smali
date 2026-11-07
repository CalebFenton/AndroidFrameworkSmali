.class public abstract Ljava/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final whitelist test-api CANONICAL_DECOMPOSITION:I = 0x1

.field public static final whitelist test-api FULL_DECOMPOSITION:I = 0x2

.field public static final whitelist test-api IDENTICAL:I = 0x3

.field public static final whitelist test-api NO_DECOMPOSITION:I = 0x0

.field public static final whitelist test-api PRIMARY:I = 0x0

.field public static final whitelist test-api SECONDARY:I = 0x1

.field public static final whitelist test-api TERTIARY:I = 0x2


# instance fields
.field greylist icuColl:Landroid/icu/text/Collator;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 2

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/RuleBasedCollator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 493
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/text/Collator;)V
    .registers 2
    .param p1, "icuColl"    # Landroid/icu/text/Collator;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    .line 501
    return-void
.end method

.method private greylist-max-o decompositionMode_ICU_Java(I)I
    .registers 3
    .param p1, "mode"    # I

    .line 418
    move v0, p1

    .line 419
    .local v0, "javaMode":I
    packed-switch p1, :pswitch_data_a

    goto :goto_9

    .line 424
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_9

    .line 421
    :pswitch_7
    const/4 v0, 0x0

    .line 422
    nop

    .line 427
    :goto_9
    return v0

    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o decompositionMode_Java_ICU(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 408
    packed-switch p1, :pswitch_data_22

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :pswitch_1c
    const/16 v0, 0x11

    return v0

    .line 412
    :pswitch_1f
    const/16 v0, 0x10

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static declared-synchronized whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 403
    :try_start_3
    invoke-static {}, Landroid/icu/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 403
    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static declared-synchronized whitelist test-api getInstance()Ljava/text/Collator;
    .registers 2

    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 220
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 220
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Ljava/text/Collator;
    .registers 4
    .param p0, "desiredLocale"    # Ljava/util/Locale;

    .line 232
    const-class v0, Ljava/text/Collator;

    monitor-enter v0

    .line 233
    if-eqz p0, :cond_14

    .line 236
    :try_start_5
    new-instance v1, Ljava/text/RuleBasedCollator;

    .line 237
    invoke-static {p0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v1, v2}, Ljava/text/RuleBasedCollator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    monitor-exit v0

    .line 236
    return-object v1

    .line 238
    :catchall_12
    move-exception v1

    goto :goto_1c

    .line 234
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "locale == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "desiredLocale":Ljava/util/Locale;
    throw v1

    .line 238
    .restart local p0    # "desiredLocale":Ljava/util/Locale;
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_12

    throw v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 444
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Collator;

    .line 445
    .local v0, "clone":Ljava/text/Collator;
    iget-object v1, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Collator;

    iput-object v1, v0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 446
    return-object v0

    .line 447
    .end local v0    # "clone":Ljava/text/Collator;
    :catch_11
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 280
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 461
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 462
    return v0

    .line 464
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 465
    return v1

    .line 467
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 468
    return v1

    .line 470
    :cond_13
    move-object v2, p1

    check-cast v2, Ljava/text/Collator;

    .line 472
    .local v2, "other":Ljava/text/Collator;
    iget-object v3, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_21

    iget-object v3, v2, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    if-nez v3, :cond_1f

    goto :goto_29

    :cond_1f
    move v0, v1

    goto :goto_29

    :cond_21
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    iget-object v1, v2, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_29
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract whitelist test-api getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
.end method

.method public declared-synchronized whitelist test-api getDecomposition()I
    .registers 2

    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->getDecomposition()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/Collator;->decompositionMode_ICU_Java(I)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    .line 374
    .end local p0    # "this":Ljava/text/Collator;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized whitelist test-api getStrength()I
    .registers 3

    monitor-enter p0

    .line 326
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0}, Landroid/icu/text/Collator;->getStrength()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    .line 327
    .local v0, "value":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    const/4 v1, 0x3

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    monitor-exit p0

    return v1

    .line 325
    .end local v0    # "value":I
    .end local p0    # "this":Ljava/text/Collator;
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public abstract whitelist test-api hashCode()I
.end method

.method public declared-synchronized whitelist test-api setDecomposition(I)V
    .registers 4
    .param p1, "decompositionMode"    # I

    monitor-enter p0

    .line 389
    :try_start_1
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-direct {p0, p1}, Ljava/text/Collator;->decompositionMode_Java_ICU(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->setDecomposition(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 390
    monitor-exit p0

    return-void

    .line 388
    .end local p0    # "this":Ljava/text/Collator;
    .end local p1    # "decompositionMode":I
    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized whitelist test-api setStrength(I)V
    .registers 3
    .param p1, "newStrength"    # I

    monitor-enter p0

    .line 346
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 347
    const/16 p1, 0xf

    .line 349
    :cond_6
    :try_start_6
    iget-object v0, p0, Ljava/text/Collator;->icuColl:Landroid/icu/text/Collator;

    invoke-virtual {v0, p1}, Landroid/icu/text/Collator;->setStrength(I)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 350
    monitor-exit p0

    return-void

    .line 345
    .end local p0    # "this":Ljava/text/Collator;
    .end local p1    # "newStrength":I
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

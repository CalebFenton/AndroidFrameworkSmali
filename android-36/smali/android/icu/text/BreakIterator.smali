.class public abstract Landroid/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakIterator$BreakIteratorCache;,
        Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z

.field public static final whitelist test-api DONE:I = -0x1

.field public static final whitelist test-api KIND_CHARACTER:I = 0x0

.field private static final greylist-max-o KIND_COUNT:I = 0x5

.field public static final whitelist test-api KIND_LINE:I = 0x2

.field public static final whitelist test-api KIND_SENTENCE:I = 0x3

.field public static final whitelist test-api KIND_TITLE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api KIND_WORD:I = 0x1

.field public static final whitelist test-api WORD_IDEO:I = 0x190

.field public static final whitelist test-api WORD_IDEO_LIMIT:I = 0x1f4

.field public static final whitelist test-api WORD_KANA:I = 0x12c

.field public static final whitelist test-api WORD_KANA_LIMIT:I = 0x190

.field public static final whitelist test-api WORD_LETTER:I = 0xc8

.field public static final whitelist test-api WORD_LETTER_LIMIT:I = 0x12c

.field public static final whitelist test-api WORD_NONE:I = 0x0

.field public static final whitelist test-api WORD_NONE_LIMIT:I = 0x64

.field public static final whitelist test-api WORD_NUMBER:I = 0x64

.field public static final whitelist test-api WORD_NUMBER_LIMIT:I = 0xc8

.field private static final greylist-max-o iterCache:[Landroid/icu/impl/CacheValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/icu/impl/CacheValue<",
            "*>;"
        }
    .end annotation
.end field

.field private static greylist-max-o shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;


# instance fields
.field private greylist-max-o actualLocale:Landroid/icu/util/ULocale;

.field private greylist-max-o validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 216
    const-string v0, "breakiterator"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/BreakIterator;->DEBUG:Z

    .line 557
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/impl/CacheValue;

    sput-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    return-void
.end method

.method public static declared-synchronized whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    const-class v0, Landroid/icu/text/BreakIterator;

    monitor-enter v0

    .line 874
    :try_start_3
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 874
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static declared-synchronized greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 2

    const-class v0, Landroid/icu/text/BreakIterator;

    monitor-enter v0

    .line 886
    :try_start_3
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    .line 886
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static greylist-max-o getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .registers 6
    .param p0, "where"    # Landroid/icu/util/ULocale;
    .param p1, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    if-eqz p0, :cond_39

    .line 847
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    aget-object v0, v0, p1

    if-eqz v0, :cond_23

    .line 848
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    .line 849
    .local v0, "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    if-eqz v0, :cond_23

    .line 850
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 851
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Landroid/icu/text/BreakIterator;

    move-result-object v1

    return-object v1

    .line 857
    .end local v0    # "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    :cond_23
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 859
    .local v0, "result":Landroid/icu/text/BreakIterator;
    new-instance v1, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V

    .line 860
    .local v1, "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    sget-object v2, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    invoke-static {v1}, Landroid/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;

    move-result-object v3

    aput-object v3, v2, p1

    .line 862
    return-object v0

    .line 845
    .end local v0    # "result":Landroid/icu/text/BreakIterator;
    .end local v1    # "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api getCharacterInstance()Landroid/icu/text/BreakIterator;
    .registers 1

    .line 641
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .registers 2
    .param p0, "where"    # Landroid/icu/util/ULocale;

    .line 667
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .registers 3
    .param p0, "where"    # Ljava/util/Locale;

    .line 654
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLineInstance()Landroid/icu/text/BreakIterator;
    .registers 1

    .line 603
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .registers 2
    .param p0, "where"    # Landroid/icu/util/ULocale;

    .line 629
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .registers 3
    .param p0, "where"    # Ljava/util/Locale;

    .line 616
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getSentenceInstance()Landroid/icu/text/BreakIterator;
    .registers 1

    .line 678
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .registers 2
    .param p0, "where"    # Landroid/icu/util/ULocale;

    .line 700
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .registers 3
    .param p0, "where"    # Ljava/util/Locale;

    .line 689
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    .registers 3

    .line 922
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-nez v0, :cond_27

    .line 924
    :try_start_4
    const-string v0, "android.icu.text.BreakIteratorFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 925
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    sput-object v1, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_12
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_12} :catch_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    .line 938
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_27

    .line 931
    :catch_13
    move-exception v0

    .line 933
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/icu/text/BreakIterator;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 934
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    :cond_1b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v0

    .line 929
    .local v0, "e":Ljava/util/MissingResourceException;
    throw v0

    .line 940
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_27
    :goto_27
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    return-object v0
.end method

.method public static whitelist test-api getTitleInstance()Landroid/icu/text/BreakIterator;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .registers 2
    .param p0, "where"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getTitleInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .registers 3
    .param p0, "where"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getWordInstance()Landroid/icu/text/BreakIterator;
    .registers 1

    .line 567
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .registers 2
    .param p0, "where"    # Landroid/icu/util/ULocale;

    .line 591
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .registers 3
    .param p0, "where"    # Ljava/util/Locale;

    .line 579
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .registers 6
    .param p0, "iter"    # Landroid/icu/text/BreakIterator;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    .line 787
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    aget-object v0, v0, p2

    if-eqz v0, :cond_21

    .line 788
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    .line 789
    .local v0, "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    if-eqz v0, :cond_21

    .line 790
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 791
    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    .line 795
    .end local v0    # "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    :cond_21
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o registerInstance(Landroid/icu/text/BreakIterator;Ljava/util/Locale;I)Ljava/lang/Object;
    .registers 4
    .param p0, "iter"    # Landroid/icu/text/BreakIterator;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "kind"    # I

    .line 766
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/icu/text/BreakIterator;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o unregister(Ljava/lang/Object;)Z
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;

    .line 807
    if-eqz p0, :cond_1b

    .line 819
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-eqz v0, :cond_19

    .line 824
    const/4 v0, 0x0

    .local v0, "kind":I
    :goto_7
    const/4 v1, 0x5

    if-ge v0, v1, :cond_12

    .line 825
    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 827
    .end local v0    # "kind":I
    :cond_12
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    invoke-virtual {v0, p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 829
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 808
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registry key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 235
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 237
    :catch_5
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract whitelist test-api current()I
.end method

.method public abstract whitelist test-api first()I
.end method

.method public abstract whitelist test-api following(I)I
.end method

.method public final greylist-max-o getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 967
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    .line 968
    iget-object v0, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    .line 967
    :goto_9
    return-object v0
.end method

.method public whitelist test-api getRuleStatus()I
    .registers 2

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getRuleStatusVec([I)I
    .registers 3
    .param p1, "fillInArray"    # [I

    .line 458
    if-eqz p1, :cond_8

    array-length v0, p1

    if-lez v0, :cond_8

    .line 459
    const/4 v0, 0x0

    aput v0, p1, v0

    .line 461
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist test-api getText()Ljava/text/CharacterIterator;
.end method

.method public whitelist test-api isBoundary(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 358
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 359
    return v0

    .line 362
    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v1

    if-ne v1, p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public abstract whitelist test-api last()I
.end method

.method public abstract whitelist test-api next()I
.end method

.method public abstract whitelist test-api next(I)I
.end method

.method public whitelist test-api preceding(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 340
    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    .line 341
    .local v0, "pos":I
    :goto_4
    if-lt v0, p1, :cond_e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 342
    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_4

    .line 343
    :cond_e
    return v0
.end method

.method public abstract whitelist test-api previous()I
.end method

.method final greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 989
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-ne v2, v0, :cond_12

    .line 996
    iput-object p1, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    .line 997
    iput-object p2, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    .line 998
    return-void

    .line 991
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 509
    new-instance v0, Landroid/icu/impl/CSCharacterIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/CSCharacterIterator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 510
    return-void
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 493
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 494
    return-void
.end method

.method public abstract whitelist test-api setText(Ljava/text/CharacterIterator;)V
.end method

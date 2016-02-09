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
.field private static final DEBUG:Z

.field public static final DONE:I = -0x1

.field public static final KIND_CHARACTER:I = 0x0

.field private static final KIND_COUNT:I = 0x5

.field public static final KIND_LINE:I = 0x2

.field public static final KIND_SENTENCE:I = 0x3

.field public static final KIND_TITLE:I = 0x4

.field public static final KIND_WORD:I = 0x1

.field public static final WORD_IDEO:I = 0x190

.field public static final WORD_IDEO_LIMIT:I = 0x1f4

.field public static final WORD_KANA:I = 0x12c

.field public static final WORD_KANA_LIMIT:I = 0x190

.field public static final WORD_LETTER:I = 0xc8

.field public static final WORD_LETTER_LIMIT:I = 0x12c

.field public static final WORD_NONE:I = 0x0

.field public static final WORD_NONE_LIMIT:I = 0x64

.field public static final WORD_NUMBER:I = 0x64

.field public static final WORD_NUMBER_LIMIT:I = 0xc8

.field private static final iterCache:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference",
            "<*>;"
        }
    .end annotation
.end field

.field private static shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 215
    const-string/jumbo v0, "breakiterator"

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    sput-boolean v0, Landroid/icu/text/BreakIterator;->DEBUG:Z

    #@9
    .line 559
    const/4 v0, 0x5

    #@a
    new-array v0, v0, [Ljava/lang/ref/SoftReference;

    #@c
    sput-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@e
    .line 212
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/icu/text/BreakIterator;

    #@2
    monitor-enter v1

    #@3
    .line 889
    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public static declared-synchronized getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid/icu/text/BreakIterator;

    #@2
    monitor-enter v1

    #@3
    .line 902
    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result-object v0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public static getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 5
    .param p0, "where"    # Landroid/icu/util/ULocale;
    .param p1, "kind"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 854
    if-nez p0, :cond_0

    #@2
    .line 855
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "Specified locale is null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 857
    :cond_0
    sget-object v3, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@d
    aget-object v3, v3, p1

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 858
    sget-object v3, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@13
    aget-object v3, v3, p1

    #@15
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    #@1b
    .line 859
    .local v0, "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    if-eqz v0, :cond_1

    #@1d
    .line 860
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 861
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Landroid/icu/text/BreakIterator;

    #@2a
    move-result-object v3

    #@2b
    return-object v3

    #@2c
    .line 867
    .end local v0    # "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    :cond_1
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p0, p1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@33
    move-result-object v2

    #@34
    .line 869
    .local v2, "result":Landroid/icu/text/BreakIterator;
    new-instance v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    #@36
    invoke-direct {v0, p0, v2}, Landroid/icu/text/BreakIterator$BreakIteratorCache;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V

    #@39
    .line 870
    .restart local v0    # "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    sget-object v3, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@3b
    new-instance v4, Ljava/lang/ref/SoftReference;

    #@3d
    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@40
    aput-object v4, v3, p1

    #@42
    .line 871
    instance-of v3, v2, Landroid/icu/text/RuleBasedBreakIterator;

    #@44
    if-eqz v3, :cond_2

    #@46
    move-object v1, v2

    #@47
    .line 872
    check-cast v1, Landroid/icu/text/RuleBasedBreakIterator;

    #@49
    .line 873
    .local v1, "rbbi":Landroid/icu/text/RuleBasedBreakIterator;
    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    #@4c
    .line 876
    .end local v1    # "rbbi":Landroid/icu/text/RuleBasedBreakIterator;
    :cond_2
    return-object v2
.end method

.method public static getCharacterInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 650
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1
    .param p0, "where"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 678
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2
    .param p0, "where"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 664
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLineInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 609
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1
    .param p0, "where"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 637
    const/4 v0, 0x2

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2
    .param p0, "where"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 623
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getSentenceInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 690
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1
    .param p0, "where"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 714
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2
    .param p0, "where"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 702
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x3

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    .locals 5

    #@0
    .prologue
    .line 938
    sget-object v3, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 940
    :try_start_0
    const-string/jumbo v3, "android.icu.text.BreakIteratorFactory"

    #@7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 941
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@11
    sput-object v3, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 956
    :cond_0
    sget-object v3, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@15
    return-object v3

    #@16
    .line 947
    :catch_0
    move-exception v1

    #@17
    .line 949
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Landroid/icu/text/BreakIterator;->DEBUG:Z

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 950
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@1e
    .line 952
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@20
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    #@29
    .line 945
    .local v2, "e":Ljava/util/MissingResourceException;
    throw v2
.end method

.method public static getTitleInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 728
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1
    .param p0, "where"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 758
    const/4 v0, 0x4

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getTitleInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2
    .param p0, "where"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 743
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getWordInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 570
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1
    .param p0, "where"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 596
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2
    .param p0, "where"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 583
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 3
    .param p0, "iter"    # Landroid/icu/text/BreakIterator;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 798
    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@3
    aget-object v1, v1, p2

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 799
    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@9
    aget-object v1, v1, p2

    #@b
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    #@11
    .line 800
    .local v0, "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    if-eqz v0, :cond_0

    #@13
    .line 801
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 802
    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@1f
    aput-object v2, v1, p2

    #@21
    .line 806
    .end local v0    # "cache":Landroid/icu/text/BreakIterator$BreakIteratorCache;
    :cond_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public static registerInstance(Landroid/icu/text/BreakIterator;Ljava/util/Locale;I)Ljava/lang/Object;
    .locals 1
    .param p0, "iter"    # Landroid/icu/text/BreakIterator;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "kind"    # I

    #@0
    .prologue
    .line 777
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p2}, Landroid/icu/text/BreakIterator;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 818
    if-nez p0, :cond_0

    #@3
    .line 819
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "registry key must not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 830
    :cond_0
    sget-object v1, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 835
    const/4 v0, 0x0

    #@11
    .local v0, "kind":I
    :goto_0
    const/4 v1, 0x5

    #@12
    if-ge v0, v1, :cond_1

    #@14
    .line 836
    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    #@16
    aput-object v2, v1, v0

    #@18
    .line 835
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 838
    :cond_1
    sget-object v1, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    #@1d
    invoke-virtual {v1, p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->unregister(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    return v1

    #@22
    .line 840
    .end local v0    # "kind":I
    :cond_2
    const/4 v1, 0x0

    #@23
    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 235
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 237
    :catch_0
    move-exception v0

    #@6
    .line 239
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    #@8
    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v1
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 984
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 985
    iget-object v0, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    #@6
    .line 984
    :goto_0
    return-object v0

    #@7
    .line 985
    :cond_0
    iget-object v0, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    #@9
    goto :goto_0
.end method

.method public getRuleStatus()I
    .locals 1

    #@0
    .prologue
    .line 459
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRuleStatusVec([I)I
    .locals 2
    .param p1, "fillInArray"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 482
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    if-lez v0, :cond_0

    #@6
    .line 483
    aput v1, p1, v1

    #@8
    .line 485
    :cond_0
    const/4 v0, 0x1

    #@9
    return v0
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 367
    if-nez p1, :cond_0

    #@4
    .line 368
    return v0

    #@5
    .line 371
    :cond_0
    add-int/lit8 v2, p1, -0x1

    #@7
    invoke-virtual {p0, v2}, Landroid/icu/text/BreakIterator;->following(I)I

    #@a
    move-result v2

    #@b
    if-ne v2, p1, :cond_1

    #@d
    :goto_0
    return v0

    #@e
    :cond_1
    move v0, v1

    #@f
    goto :goto_0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    #@3
    move-result v0

    #@4
    .line 349
    .local v0, "pos":I
    :goto_0
    if-lt v0, p1, :cond_0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 350
    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->previous()I

    #@c
    move-result v0

    #@d
    goto :goto_0

    #@e
    .line 351
    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1006
    if-nez p1, :cond_0

    #@4
    move v2, v0

    #@5
    :goto_0
    if-nez p2, :cond_1

    #@7
    :goto_1
    if-eq v2, v0, :cond_2

    #@9
    .line 1008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_0
    move v2, v1

    #@10
    .line 1006
    goto :goto_0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_1

    #@13
    .line 1013
    :cond_2
    iput-object p1, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    #@15
    .line 1014
    iput-object p2, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    #@17
    .line 1004
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 512
    new-instance v0, Ljava/text/StringCharacterIterator;

    #@2
    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@8
    .line 510
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method

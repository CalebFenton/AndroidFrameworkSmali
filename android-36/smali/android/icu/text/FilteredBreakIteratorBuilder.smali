.class public abstract Landroid/icu/text/FilteredBreakIteratorBuilder;
.super Ljava/lang/Object;
.source "FilteredBreakIteratorBuilder.java"


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static final greylist-max-o getEmptyInstance()Landroid/icu/text/FilteredBreakIteratorBuilder;
    .registers 1

    .line 66
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>()V

    return-object v0
.end method

.method public static final greylist-max-o getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/FilteredBreakIteratorBuilder;
    .registers 2
    .param p0, "where"    # Landroid/icu/util/ULocale;

    .line 57
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static final greylist-max-o getInstance(Ljava/util/Locale;)Landroid/icu/text/FilteredBreakIteratorBuilder;
    .registers 2
    .param p0, "where"    # Ljava/util/Locale;

    .line 43
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public abstract greylist-max-o suppressBreakAfter(Ljava/lang/CharSequence;)Z
.end method

.method public abstract greylist-max-o unsuppressBreakAfter(Ljava/lang/CharSequence;)Z
.end method

.method public abstract greylist-max-o wrapIteratorWithFilter(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
.end method

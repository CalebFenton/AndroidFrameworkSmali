.class public abstract Landroid/icu/text/FilteredBreakIteratorBuilder;
.super Ljava/lang/Object;
.source "FilteredBreakIteratorBuilder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createInstance()Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>()V

    #@5
    .line 69
    .local v0, "ret":Landroid/icu/text/FilteredBreakIteratorBuilder;
    return-object v0
.end method

.method public static createInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1
    .param p0, "where"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 55
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    .line 56
    .local v0, "ret":Landroid/icu/text/FilteredBreakIteratorBuilder;
    return-object v0
.end method


# virtual methods
.method public abstract build(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract suppressBreakAfter(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unsuppressBreakAfter(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.class abstract Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BreakIteratorServiceShim"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
.end method

.method public abstract greylist-max-o getAvailableLocales()[Ljava/util/Locale;
.end method

.method public abstract greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
.end method

.method public abstract greylist-max-o registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
.end method

.method public abstract greylist-max-o unregister(Ljava/lang/Object;)Z
.end method

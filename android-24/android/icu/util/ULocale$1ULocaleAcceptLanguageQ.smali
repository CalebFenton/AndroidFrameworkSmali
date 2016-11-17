.class Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ULocaleAcceptLanguageQ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;",
        ">;"
    }
.end annotation


# instance fields
.field private q:D

.field private serial:D


# direct methods
.method public constructor <init>(DI)V
    .locals 3
    .param p1, "theq"    # D
    .param p3, "theserial"    # I

    #@0
    .prologue
    .line 1996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1997
    iput-wide p1, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    #@5
    .line 1998
    int-to-double v0, p3

    #@6
    iput-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    #@8
    .line 1996
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;)I
    .locals 6
    .param p1, "other"    # Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 2001
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    #@4
    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    #@6
    cmpl-double v0, v0, v2

    #@8
    if-lez v0, :cond_0

    #@a
    .line 2002
    return v4

    #@b
    .line 2003
    :cond_0
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    #@d
    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->q:D

    #@f
    cmpg-double v0, v0, v2

    #@11
    if-gez v0, :cond_1

    #@13
    .line 2004
    return v5

    #@14
    .line 2006
    :cond_1
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    #@16
    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    #@18
    cmpg-double v0, v0, v2

    #@1a
    if-gez v0, :cond_2

    #@1c
    .line 2007
    return v4

    #@1d
    .line 2008
    :cond_2
    iget-wide v0, p0, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    #@1f
    iget-wide v2, p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->serial:D

    #@21
    cmpl-double v0, v0, v2

    #@23
    if-lez v0, :cond_3

    #@25
    .line 2009
    return v5

    #@26
    .line 2011
    :cond_3
    const/4 v0, 0x0

    #@27
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2000
    check-cast p1, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;->compareTo(Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

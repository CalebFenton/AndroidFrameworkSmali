.class public Landroid/icu/impl/locale/XCldrStub$RegexUtilities;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexUtilities"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist findMismatch(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)I
    .registers 5
    .param p0, "m"    # Ljava/util/regex/Matcher;
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 431
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 432
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 433
    .local v1, "matches":Z
    if-nez v1, :cond_1d

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 434
    goto :goto_20

    .line 431
    .end local v1    # "matches":Z
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    :cond_20
    :goto_20
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static blacklist showMismatch(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p0, "m"    # Ljava/util/regex/Matcher;
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 440
    invoke-static {p0, p1}, Landroid/icu/impl/locale/XCldrStub$RegexUtilities;->findMismatch(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)I

    move-result v0

    .line 441
    .local v0, "failPoint":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2639"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "show":Ljava/lang/String;
    return-object v1
.end method

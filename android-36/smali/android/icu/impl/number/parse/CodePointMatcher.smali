.class public Landroid/icu/impl/number/parse/CodePointMatcher;
.super Ljava/lang/Object;
.source "CodePointMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field private final blacklist cp:I


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2
    .param p1, "cp"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/icu/impl/number/parse/CodePointMatcher;->cp:I

    .line 25
    return-void
.end method

.method public static blacklist getInstance(I)Landroid/icu/impl/number/parse/CodePointMatcher;
    .registers 2
    .param p0, "cp"    # I

    .line 20
    new-instance v0, Landroid/icu/impl/number/parse/CodePointMatcher;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/parse/CodePointMatcher;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 4
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 29
    iget v0, p0, Landroid/icu/impl/number/parse/CodePointMatcher;->cp:I

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    .line 31
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 33
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 2
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 44
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 38
    iget v0, p0, Landroid/icu/impl/number/parse/CodePointMatcher;->cp:I

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<CodePointMatcher U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/number/parse/CodePointMatcher;->cp:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

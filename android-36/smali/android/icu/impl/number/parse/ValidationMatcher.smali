.class public abstract Landroid/icu/impl/number/parse/ValidationMatcher;
.super Ljava/lang/Object;
.source "ValidationMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 4
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 21
    const/4 v0, 0x0

    return v0
.end method

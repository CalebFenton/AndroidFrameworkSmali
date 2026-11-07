.class abstract Landroid/icu/impl/breakiter/DictionaryMatcher;
.super Ljava/lang/Object;
.source "DictionaryMatcher.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getType()I
.end method

.method public blacklist matches(Ljava/text/CharacterIterator;I[I[II)I
    .registers 13
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "maxLength"    # I
    .param p3, "lengths"    # [I
    .param p4, "count"    # [I
    .param p5, "limit"    # I

    .line 36
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "text":Ljava/text/CharacterIterator;
    .end local p2    # "maxLength":I
    .end local p3    # "lengths":[I
    .end local p4    # "count":[I
    .end local p5    # "limit":I
    .local v1, "text":Ljava/text/CharacterIterator;
    .local v2, "maxLength":I
    .local v3, "lengths":[I
    .local v4, "count":[I
    .local v5, "limit":I
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/breakiter/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    move-result p1

    return p1
.end method

.method public abstract blacklist matches(Ljava/text/CharacterIterator;I[I[II[I)I
.end method

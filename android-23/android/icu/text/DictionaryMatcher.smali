.class abstract Landroid/icu/text/DictionaryMatcher;
.super Ljava/lang/Object;
.source "DictionaryMatcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getType()I
.end method

.method public matches(Ljava/text/CharacterIterator;I[I[II)I
    .locals 7
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "maxLength"    # I
    .param p3, "lengths"    # [I
    .param p4, "count"    # [I
    .param p5, "limit"    # I

    #@0
    .prologue
    .line 33
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public abstract matches(Ljava/text/CharacterIterator;I[I[II[I)I
.end method

.class final Landroid/icu/text/SearchIterator$Search;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SearchIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Search"
.end annotation


# instance fields
.field greylist-max-o elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field greylist-max-o internalBreakIter_:Landroid/icu/text/BreakIterator;

.field greylist-max-o isCanonicalMatch_:Z

.field greylist-max-o isForwardSearching_:Z

.field greylist-max-o isOverlap_:Z

.field greylist-max-o matchedIndex_:I

.field greylist-max-o reset_:Z

.field final synthetic blacklist this$0:Landroid/icu/text/SearchIterator;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/SearchIterator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/text/SearchIterator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o beginIndex()I
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_8

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_8
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    return v0
.end method

.method greylist-max-o breakIter()Landroid/icu/text/BreakIterator;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method greylist-max-o endIndex()I
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_8

    .line 151
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_8
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    return v0
.end method

.method greylist-max-o matchedLength()I
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget v0, v0, Landroid/icu/text/SearchIterator;->matchLength:I

    return v0
.end method

.method greylist-max-o setBreakIter(Landroid/icu/text/BreakIterator;)V
    .registers 3
    .param p1, "breakIter"    # Landroid/icu/text/BreakIterator;

    .line 120
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iput-object p1, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    .line 121
    return-void
.end method

.method greylist-max-o setMatchedLength(I)V
    .registers 3
    .param p1, "matchedLength"    # I

    .line 130
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iput p1, v0, Landroid/icu/text/SearchIterator;->matchLength:I

    .line 131
    return-void
.end method

.method greylist-max-o setTarget(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "text"    # Ljava/text/CharacterIterator;

    .line 102
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iput-object p1, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    .line 103
    return-void
.end method

.method greylist-max-o text()Ljava/text/CharacterIterator;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    return-object v0
.end method

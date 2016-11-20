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
.field elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

.field internalBreakIter_:Landroid/icu/text/BreakIterator;

.field isCanonicalMatch_:Z

.field isForwardSearching_:Z

.field isOverlap_:Z

.field matchedIndex_:I

.field reset_:Z

.field final synthetic this$0:Landroid/icu/text/SearchIterator;


# direct methods
.method constructor <init>(Landroid/icu/text/SearchIterator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/text/SearchIterator;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method beginIndex()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 142
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 144
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@a
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@c
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method breakIter()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    #@4
    return-object v0
.end method

.method endIndex()I
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 149
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 151
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@a
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@c
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method matchedLength()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iget v0, v0, Landroid/icu/text/SearchIterator;->matchLength:I

    #@4
    return v0
.end method

.method setBreakIter(Landroid/icu/text/BreakIterator;)V
    .locals 1
    .param p1, "breakIter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iput-object p1, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    #@4
    .line 117
    return-void
.end method

.method setMatchedLength(I)V
    .locals 1
    .param p1, "matchedLength"    # I

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iput p1, v0, Landroid/icu/text/SearchIterator;->matchLength:I

    #@4
    .line 127
    return-void
.end method

.method setTarget(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "text"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iput-object p1, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@4
    .line 99
    return-void
.end method

.method text()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/icu/text/SearchIterator$Search;->this$0:Landroid/icu/text/SearchIterator;

    #@2
    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    #@4
    return-object v0
.end method

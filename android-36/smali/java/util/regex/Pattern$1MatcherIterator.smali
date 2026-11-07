.class Ljava/util/regex/Pattern$1MatcherIterator;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/regex/Pattern;->splitAsStream(Ljava/lang/CharSequence;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatcherIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist current:I

.field private blacklist emptyElementCount:I

.field private blacklist matcher:Ljava/util/regex/Matcher;

.field private blacklist nextElement:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/regex/Pattern;

.field final synthetic blacklist val$input:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5710
    iput-object p1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->this$0:Ljava/util/regex/Pattern;

    iput-object p2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 6

    .line 5735
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2e

    .line 5736
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->this$0:Ljava/util/regex/Pattern;

    iget-object v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    .line 5742
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2c

    .line 5743
    invoke-static {}, Ldalvik/system/VMRuntime;->getSdkVersion()I

    move-result v0

    const/16 v3, 0x22

    if-lt v0, v3, :cond_2c

    .line 5744
    const-wide/32 v3, 0x11376e21

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5746
    iput v2, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    goto :goto_2e

    .line 5748
    :cond_2c
    iput v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 5751
    :cond_2e
    :goto_2e
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    if-nez v0, :cond_a4

    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-lez v0, :cond_37

    goto :goto_a4

    .line 5754
    :cond_37
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v0, v3, :cond_42

    .line 5755
    return v1

    .line 5759
    :cond_42
    :goto_42
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 5760
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v4, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5761
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    .line 5762
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 5763
    return v2

    .line 5764
    :cond_6f
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    if-lez v0, :cond_42

    .line 5766
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    goto :goto_42

    .line 5771
    :cond_79
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    iget v3, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    iget-object v4, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5772
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->val$input:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->current:I

    .line 5773
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 5774
    return v2

    .line 5777
    :cond_9e
    iput v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 5778
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5779
    return v1

    .line 5752
    :cond_a4
    :goto_a4
    return v2
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 5710
    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 3

    .line 5721
    invoke-virtual {p0}, Ljava/util/regex/Pattern$1MatcherIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5724
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    if-nez v0, :cond_10

    .line 5725
    iget-object v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5726
    .local v0, "n":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/regex/Pattern$1MatcherIterator;->nextElement:Ljava/lang/String;

    .line 5727
    return-object v0

    .line 5729
    .end local v0    # "n":Ljava/lang/String;
    :cond_10
    iget v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/regex/Pattern$1MatcherIterator;->emptyElementCount:I

    .line 5730
    const-string v0, ""

    return-object v0

    .line 5722
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

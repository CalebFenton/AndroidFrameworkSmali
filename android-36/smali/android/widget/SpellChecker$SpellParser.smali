.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private blacklist mForceCheckWhenEditingWord:Z

.field private greylist-max-o mRange:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SpellChecker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 648
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private greylist-max-o removeRangeSpan(Landroid/text/Editable;)V
    .registers 3
    .param p1, "editable"    # Landroid/text/Editable;

    .line 691
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 692
    return-void
.end method

.method private greylist-max-o removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .registers 9
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .line 781
    .local p3, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v0, p3

    .line 782
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1a

    .line 783
    aget-object v2, p3, v1

    .line 784
    .local v2, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 785
    .local v3, "start":I
    if-le v3, p2, :cond_d

    goto :goto_17

    .line 786
    :cond_d
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 787
    .local v4, "end":I
    if-ge v4, p2, :cond_14

    goto :goto_17

    .line 788
    :cond_14
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 782
    .end local v2    # "span":Ljava/lang/Object;, "TT;"
    .end local v3    # "start":I
    .end local v4    # "end":I
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 790
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method private greylist-max-o setRangeSpan(Landroid/text/Editable;II)V
    .registers 6
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 683
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 684
    return-void
.end method


# virtual methods
.method public greylist-max-o isFinished()Z
    .registers 3

    .line 671
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public greylist-max-o parse()V
    .registers 15

    .line 695
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 696
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 697
    .local v1, "textChangeStart":I
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 699
    .local v2, "textChangeEnd":I
    iget-object v3, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3, v0, v1, v2}, Landroid/widget/SpellChecker;->-$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object v3

    .line 701
    .local v3, "sentenceBoundary":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 702
    .local v4, "sentenceStart":I
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 704
    .local v5, "sentenceEnd":I
    if-ne v4, v5, :cond_38

    .line 708
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 709
    return-void

    .line 712
    :cond_38
    const/4 v6, 0x0

    .line 714
    .local v6, "scheduleOtherSpellCheck":Z
    if-ge v5, v2, :cond_3c

    .line 719
    const/4 v6, 0x1

    .line 721
    :cond_3c
    move v7, v5

    .line 723
    .local v7, "spellCheckEnd":I
    move v8, v4

    .line 724
    .local v8, "spellCheckStart":I
    const/4 v9, 0x1

    .line 726
    .local v9, "createSpellCheckSpan":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_40
    iget-object v11, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->-$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I

    move-result v11

    if-ge v10, v11, :cond_82

    .line 727
    iget-object v11, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->-$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v11

    aget-object v11, v11, v10

    .line 728
    .local v11, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    iget-object v12, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v12}, Landroid/widget/SpellChecker;->-$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I

    move-result-object v12

    aget v12, v12, v10

    if-ltz v12, :cond_7f

    invoke-virtual {v11}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v12

    if-eqz v12, :cond_61

    .line 729
    goto :goto_7f

    .line 731
    :cond_61
    invoke-interface {v0, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 732
    .local v12, "spanStart":I
    invoke-interface {v0, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 733
    .local v13, "spanEnd":I
    if-lt v13, v8, :cond_7f

    if-ge v7, v12, :cond_6e

    .line 735
    goto :goto_7f

    .line 737
    :cond_6e
    if-gt v12, v8, :cond_74

    if-gt v7, v13, :cond_74

    .line 740
    const/4 v9, 0x0

    .line 744
    goto :goto_82

    .line 747
    :cond_74
    invoke-interface {v0, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 748
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 749
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 726
    .end local v11    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v12    # "spanStart":I
    .end local v13    # "spanEnd":I
    :cond_7f
    :goto_7f
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 760
    .end local v10    # "i":I
    :cond_82
    :goto_82
    if-gt v7, v8, :cond_a9

    .line 761
    invoke-static {}, Landroid/widget/SpellChecker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to spellcheck invalid region, from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    goto :goto_b0

    .line 765
    :cond_a9
    if-eqz v9, :cond_b0

    .line 766
    iget-object v10, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10, v0, v8, v7}, Landroid/widget/SpellChecker;->-$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    .line 769
    .end local v8    # "spellCheckStart":I
    .end local v9    # "createSpellCheckSpan":Z
    :cond_b0
    :goto_b0
    move v4, v7

    .line 770
    if-eqz v6, :cond_bc

    const/4 v8, -0x1

    if-eq v4, v8, :cond_bc

    if-gt v4, v2, :cond_bc

    .line 773
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_bf

    .line 775
    :cond_bc
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 777
    :goto_bf
    iget-object v8, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    iget-boolean v9, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    invoke-static {v8, v9}, Landroid/widget/SpellChecker;->-$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V

    .line 778
    return-void
.end method

.method public blacklist parse(IIZ)V
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "forceCheckWhenEditingWord"    # Z

    .line 655
    iput-boolean p3, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    .line 656
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 658
    .local v0, "max":I
    if-le p2, v0, :cond_34

    .line 659
    invoke-static {}, Landroid/widget/SpellChecker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse invalid region, from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move v1, v0

    .local v1, "parseEnd":I
    goto :goto_35

    .line 662
    .end local v1    # "parseEnd":I
    :cond_34
    move v1, p2

    .line 664
    .restart local v1    # "parseEnd":I
    :goto_35
    if-le v1, p1, :cond_49

    .line 665
    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 666
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    .line 668
    :cond_49
    return-void
.end method

.method public greylist-max-o stop()V
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    .line 677
    return-void
.end method

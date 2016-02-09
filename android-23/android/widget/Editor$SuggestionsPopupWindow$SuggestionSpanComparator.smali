.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    .line 2757
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .locals 9
    .param p1, "span1"    # Landroid/text/style/SuggestionSpan;
    .param p2, "span2"    # Landroid/text/style/SuggestionSpan;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    .line 2759
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@5
    move-result v2

    #@6
    .line 2760
    .local v2, "flag1":I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@9
    move-result v3

    #@a
    .line 2761
    .local v3, "flag2":I
    if-eq v2, v3, :cond_9

    #@c
    .line 2763
    and-int/lit8 v6, v2, 0x1

    #@e
    if-eqz v6, :cond_2

    #@10
    const/4 v0, 0x1

    #@11
    .line 2764
    .local v0, "easy1":Z
    :goto_0
    and-int/lit8 v6, v3, 0x1

    #@13
    if-eqz v6, :cond_3

    #@15
    const/4 v1, 0x1

    #@16
    .line 2765
    .local v1, "easy2":Z
    :goto_1
    and-int/lit8 v6, v2, 0x2

    #@18
    if-eqz v6, :cond_4

    #@1a
    const/4 v4, 0x1

    #@1b
    .line 2766
    .local v4, "misspelled1":Z
    :goto_2
    and-int/lit8 v6, v3, 0x2

    #@1d
    if-eqz v6, :cond_5

    #@1f
    const/4 v5, 0x1

    #@20
    .line 2767
    .local v5, "misspelled2":Z
    :goto_3
    if-eqz v0, :cond_0

    #@22
    if-eqz v4, :cond_6

    #@24
    .line 2768
    :cond_0
    if-eqz v1, :cond_1

    #@26
    if-eqz v5, :cond_7

    #@28
    .line 2769
    :cond_1
    if-eqz v4, :cond_8

    #@2a
    return v7

    #@2b
    .line 2763
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_2
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "easy1":Z
    goto :goto_0

    #@2d
    .line 2764
    :cond_3
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "easy2":Z
    goto :goto_1

    #@2f
    .line 2765
    :cond_4
    const/4 v4, 0x0

    #@30
    .restart local v4    # "misspelled1":Z
    goto :goto_2

    #@31
    .line 2766
    :cond_5
    const/4 v5, 0x0

    #@32
    .restart local v5    # "misspelled2":Z
    goto :goto_3

    #@33
    .line 2767
    :cond_6
    return v7

    #@34
    .line 2768
    :cond_7
    return v8

    #@35
    .line 2770
    :cond_8
    if-eqz v5, :cond_9

    #@37
    return v8

    #@38
    .line 2773
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_9
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@3a
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    #@3d
    move-result-object v6

    #@3e
    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Ljava/lang/Integer;

    #@44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@47
    move-result v7

    #@48
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #@4a
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v6

    #@52
    check-cast v6, Ljava/lang/Integer;

    #@54
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@57
    move-result v6

    #@58
    sub-int v6, v7, v6

    #@5a
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "span1"    # Ljava/lang/Object;
    .param p2, "span2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2758
    check-cast p1, Landroid/text/style/SuggestionSpan;

    #@2
    .end local p1    # "span1":Ljava/lang/Object;
    check-cast p2, Landroid/text/style/SuggestionSpan;

    #@4
    .end local p2    # "span2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

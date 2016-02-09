.class Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 2668
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    #@5
    .line 2642
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@8
    .line 2669
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    #@a
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    #@c
    .line 2670
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;)V

    #@12
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    #@14
    .line 2671
    new-instance v0, Ljava/util/HashMap;

    #@16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@19
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    #@1b
    .line 2668
    return-void
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 10

    #@0
    .prologue
    .line 2782
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v1

    #@a
    .line 2783
    .local v1, "pos":I
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v6}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/text/Spannable;

    #@16
    .line 2784
    .local v2, "spannable":Landroid/text/Spannable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    #@18
    invoke-interface {v2, v1, v1, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, [Landroid/text/style/SuggestionSpan;

    #@1e
    .line 2786
    .local v5, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    #@20
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@23
    .line 2787
    const/4 v6, 0x0

    #@24
    array-length v7, v5

    #@25
    :goto_0
    if-ge v6, v7, :cond_0

    #@27
    aget-object v4, v5, v6

    #@29
    .line 2788
    .local v4, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@2c
    move-result v3

    #@2d
    .line 2789
    .local v3, "start":I
    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    .line 2790
    .local v0, "end":I
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    #@33
    sub-int v9, v0, v3

    #@35
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 2787
    add-int/lit8 v6, v6, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 2795
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    #@41
    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@44
    .line 2796
    return-object v5
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V
    .locals 9
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2978
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v4}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/text/Spannable;

    #@d
    .line 2979
    .local v2, "text":Landroid/text/Spannable;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@f
    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    .line 2980
    .local v1, "spanStart":I
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@15
    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    .line 2983
    .local v0, "spanEnd":I
    sub-int v4, v1, p2

    #@1b
    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    #@1d
    .line 2984
    iget v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    #@1f
    .line 2985
    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@21
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    #@24
    move-result v5

    #@25
    .line 2984
    add-int/2addr v4, v5

    #@26
    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    #@28
    .line 2987
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@2a
    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    #@2c
    .line 2988
    iget-object v6, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@2e
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    #@31
    move-result v6

    #@32
    const/16 v7, 0x21

    #@34
    .line 2987
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@37
    .line 2991
    invoke-interface {v2}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 2992
    .local v3, "textAsString":Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@3d
    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v4, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@44
    .line 2993
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@46
    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@4d
    .line 2977
    return-void
.end method

.method private updateSuggestions()Z
    .locals 35

    #@0
    .prologue
    .line 2865
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    move-object/from16 v30, v0

    #@6
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v30

    #@a
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v21

    #@e
    check-cast v21, Landroid/text/Spannable;

    #@10
    .line 2866
    .local v21, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    #@13
    move-result-object v27

    #@14
    .line 2868
    .local v27, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v27

    #@16
    array-length v10, v0

    #@17
    .line 2870
    .local v10, "nbSpans":I
    if-nez v10, :cond_0

    #@19
    const/16 v30, 0x0

    #@1b
    return v30

    #@1c
    .line 2872
    :cond_0
    const/16 v30, 0x0

    #@1e
    move/from16 v0, v30

    #@20
    move-object/from16 v1, p0

    #@22
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@24
    .line 2873
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@28
    move-object/from16 v30, v0

    #@2a
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2d
    move-result-object v30

    #@2e
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@31
    move-result-object v30

    #@32
    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v20

    #@36
    .line 2874
    .local v20, "spanUnionStart":I
    const/16 v19, 0x0

    #@38
    .line 2876
    .local v19, "spanUnionEnd":I
    const/4 v8, 0x0

    #@39
    .line 2877
    .local v8, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    const/16 v29, 0x0

    #@3b
    .line 2879
    .local v29, "underlineColor":I
    const/16 v17, 0x0

    #@3d
    .end local v8    # "misspelledSpan":Landroid/text/style/SuggestionSpan;
    .local v17, "spanIndex":I
    :goto_0
    move/from16 v0, v17

    #@3f
    if-ge v0, v10, :cond_7

    #@41
    .line 2880
    aget-object v26, v27, v17

    #@43
    .line 2881
    .local v26, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    #@45
    move-object/from16 v1, v26

    #@47
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@4a
    move-result v18

    #@4b
    .line 2882
    .local v18, "spanStart":I
    move-object/from16 v0, v21

    #@4d
    move-object/from16 v1, v26

    #@4f
    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@52
    move-result v16

    #@53
    .line 2883
    .local v16, "spanEnd":I
    move/from16 v0, v18

    #@55
    move/from16 v1, v20

    #@57
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@5a
    move-result v20

    #@5b
    .line 2884
    move/from16 v0, v16

    #@5d
    move/from16 v1, v19

    #@5f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@62
    move-result v19

    #@63
    .line 2886
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@66
    move-result v30

    #@67
    and-int/lit8 v30, v30, 0x2

    #@69
    if-eqz v30, :cond_1

    #@6b
    .line 2887
    move-object/from16 v8, v26

    #@6d
    .line 2891
    :cond_1
    if-nez v17, :cond_2

    #@6f
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    #@72
    move-result v29

    #@73
    .line 2893
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@76
    move-result-object v28

    #@77
    .line 2894
    .local v28, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v28

    #@79
    array-length v11, v0

    #@7a
    .line 2895
    .local v11, "nbSuggestions":I
    const/16 v23, 0x0

    #@7c
    .local v23, "suggestionIndex":I
    :goto_1
    move/from16 v0, v23

    #@7e
    if-ge v0, v11, :cond_4

    #@80
    .line 2896
    aget-object v22, v28, v23

    #@82
    .line 2898
    .local v22, "suggestion":Ljava/lang/String;
    const/16 v25, 0x0

    #@84
    .line 2899
    .local v25, "suggestionIsDuplicate":Z
    const/4 v6, 0x0

    #@85
    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    #@87
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@89
    move/from16 v30, v0

    #@8b
    move/from16 v0, v30

    #@8d
    if-ge v6, v0, :cond_3

    #@8f
    .line 2900
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@93
    move-object/from16 v30, v0

    #@95
    aget-object v30, v30, v6

    #@97
    move-object/from16 v0, v30

    #@99
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@9b
    move-object/from16 v30, v0

    #@9d
    invoke-virtual/range {v30 .. v30}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v30

    #@a1
    move-object/from16 v0, v30

    #@a3
    move-object/from16 v1, v22

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v30

    #@a9
    if-eqz v30, :cond_5

    #@ab
    .line 2901
    move-object/from16 v0, p0

    #@ad
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@af
    move-object/from16 v30, v0

    #@b1
    aget-object v30, v30, v6

    #@b3
    move-object/from16 v0, v30

    #@b5
    iget-object v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@b7
    .line 2902
    .local v15, "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    #@b9
    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@bc
    move-result v14

    #@bd
    .line 2903
    .local v14, "otherSpanStart":I
    move-object/from16 v0, v21

    #@bf
    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@c2
    move-result v13

    #@c3
    .line 2904
    .local v13, "otherSpanEnd":I
    move/from16 v0, v18

    #@c5
    if-ne v0, v14, :cond_5

    #@c7
    move/from16 v0, v16

    #@c9
    if-ne v0, v13, :cond_5

    #@cb
    .line 2905
    const/16 v25, 0x1

    #@cd
    .line 2911
    .end local v13    # "otherSpanEnd":I
    .end local v14    # "otherSpanStart":I
    .end local v15    # "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_3
    if-nez v25, :cond_6

    #@cf
    .line 2912
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@d3
    move-object/from16 v30, v0

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@d9
    move/from16 v31, v0

    #@db
    aget-object v24, v30, v31

    #@dd
    .line 2913
    .local v24, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v26

    #@df
    move-object/from16 v1, v24

    #@e1
    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@e3
    .line 2914
    move/from16 v0, v23

    #@e5
    move-object/from16 v1, v24

    #@e7
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@e9
    .line 2915
    move-object/from16 v0, v24

    #@eb
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@ed
    move-object/from16 v30, v0

    #@ef
    move-object/from16 v0, v24

    #@f1
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@f3
    move-object/from16 v31, v0

    #@f5
    invoke-virtual/range {v31 .. v31}, Landroid/text/SpannableStringBuilder;->length()I

    #@f8
    move-result v31

    #@f9
    const/16 v32, 0x0

    #@fb
    move-object/from16 v0, v30

    #@fd
    move/from16 v1, v32

    #@ff
    move/from16 v2, v31

    #@101
    move-object/from16 v3, v22

    #@103
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@106
    .line 2917
    move-object/from16 v0, p0

    #@108
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@10a
    move/from16 v30, v0

    #@10c
    add-int/lit8 v30, v30, 0x1

    #@10e
    move/from16 v0, v30

    #@110
    move-object/from16 v1, p0

    #@112
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@114
    .line 2919
    move-object/from16 v0, p0

    #@116
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@118
    move/from16 v30, v0

    #@11a
    const/16 v31, 0x5

    #@11c
    move/from16 v0, v30

    #@11e
    move/from16 v1, v31

    #@120
    if-ne v0, v1, :cond_6

    #@122
    .line 2921
    move/from16 v17, v10

    #@124
    .line 2879
    .end local v6    # "i":I
    .end local v22    # "suggestion":Ljava/lang/String;
    .end local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .end local v25    # "suggestionIsDuplicate":Z
    :cond_4
    add-int/lit8 v17, v17, 0x1

    #@126
    goto/16 :goto_0

    #@128
    .line 2899
    .restart local v6    # "i":I
    .restart local v22    # "suggestion":Ljava/lang/String;
    .restart local v25    # "suggestionIsDuplicate":Z
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@12a
    goto/16 :goto_2

    #@12c
    .line 2895
    :cond_6
    add-int/lit8 v23, v23, 0x1

    #@12e
    goto/16 :goto_1

    #@130
    .line 2928
    .end local v6    # "i":I
    .end local v11    # "nbSuggestions":I
    .end local v16    # "spanEnd":I
    .end local v18    # "spanStart":I
    .end local v22    # "suggestion":Ljava/lang/String;
    .end local v23    # "suggestionIndex":I
    .end local v25    # "suggestionIsDuplicate":Z
    .end local v26    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v28    # "suggestions":[Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    #@131
    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p0

    #@133
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@135
    move/from16 v30, v0

    #@137
    move/from16 v0, v30

    #@139
    if-ge v6, v0, :cond_8

    #@13b
    .line 2929
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@13f
    move-object/from16 v30, v0

    #@141
    aget-object v30, v30, v6

    #@143
    move-object/from16 v0, p0

    #@145
    move-object/from16 v1, v30

    #@147
    move/from16 v2, v20

    #@149
    move/from16 v3, v19

    #@14b
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V

    #@14e
    .line 2928
    add-int/lit8 v6, v6, 0x1

    #@150
    goto :goto_3

    #@151
    .line 2933
    :cond_8
    if-eqz v8, :cond_9

    #@153
    .line 2934
    move-object/from16 v0, v21

    #@155
    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@158
    move-result v9

    #@159
    .line 2935
    .local v9, "misspelledStart":I
    move-object/from16 v0, v21

    #@15b
    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@15e
    move-result v7

    #@15f
    .line 2936
    .local v7, "misspelledEnd":I
    if-ltz v9, :cond_9

    #@161
    if-le v7, v9, :cond_9

    #@163
    .line 2937
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@167
    move-object/from16 v30, v0

    #@169
    move-object/from16 v0, p0

    #@16b
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@16d
    move/from16 v31, v0

    #@16f
    aget-object v24, v30, v31

    #@171
    .line 2938
    .restart local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v24

    #@173
    iput-object v8, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@175
    .line 2939
    const/16 v30, -0x1

    #@177
    move/from16 v0, v30

    #@179
    move-object/from16 v1, v24

    #@17b
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@17d
    .line 2940
    move-object/from16 v0, v24

    #@17f
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@181
    move-object/from16 v30, v0

    #@183
    move-object/from16 v0, v24

    #@185
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@187
    move-object/from16 v31, v0

    #@189
    invoke-virtual/range {v31 .. v31}, Landroid/text/SpannableStringBuilder;->length()I

    #@18c
    move-result v31

    #@18d
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@191
    move-object/from16 v32, v0

    #@193
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@196
    move-result-object v32

    #@197
    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@19a
    move-result-object v32

    #@19b
    .line 2941
    const v33, 0x104033b

    #@19e
    .line 2940
    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1a1
    move-result-object v32

    #@1a2
    const/16 v33, 0x0

    #@1a4
    move-object/from16 v0, v30

    #@1a6
    move/from16 v1, v33

    #@1a8
    move/from16 v2, v31

    #@1aa
    move-object/from16 v3, v32

    #@1ac
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@1af
    .line 2942
    move-object/from16 v0, v24

    #@1b1
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@1b3
    move-object/from16 v30, v0

    #@1b5
    move-object/from16 v0, v24

    #@1b7
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    #@1b9
    move-object/from16 v31, v0

    #@1bb
    const/16 v32, 0x0

    #@1bd
    const/16 v33, 0x0

    #@1bf
    .line 2943
    const/16 v34, 0x21

    #@1c1
    .line 2942
    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@1c4
    .line 2945
    move-object/from16 v0, p0

    #@1c6
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@1c8
    move/from16 v30, v0

    #@1ca
    add-int/lit8 v30, v30, 0x1

    #@1cc
    move/from16 v0, v30

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@1d2
    .line 2950
    .end local v7    # "misspelledEnd":I
    .end local v9    # "misspelledStart":I
    .end local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    :cond_9
    move-object/from16 v0, p0

    #@1d4
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@1d6
    move-object/from16 v30, v0

    #@1d8
    move-object/from16 v0, p0

    #@1da
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@1dc
    move/from16 v31, v0

    #@1de
    aget-object v24, v30, v31

    #@1e0
    .line 2951
    .restart local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    const/16 v30, 0x0

    #@1e2
    move-object/from16 v0, v30

    #@1e4
    move-object/from16 v1, v24

    #@1e6
    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@1e8
    .line 2952
    const/16 v30, -0x2

    #@1ea
    move/from16 v0, v30

    #@1ec
    move-object/from16 v1, v24

    #@1ee
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@1f0
    .line 2953
    move-object/from16 v0, v24

    #@1f2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@1f4
    move-object/from16 v30, v0

    #@1f6
    move-object/from16 v0, v24

    #@1f8
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@1fa
    move-object/from16 v31, v0

    #@1fc
    invoke-virtual/range {v31 .. v31}, Landroid/text/SpannableStringBuilder;->length()I

    #@1ff
    move-result v31

    #@200
    .line 2954
    move-object/from16 v0, p0

    #@202
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@204
    move-object/from16 v32, v0

    #@206
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@209
    move-result-object v32

    #@20a
    invoke-virtual/range {v32 .. v32}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@20d
    move-result-object v32

    #@20e
    const v33, 0x104033c

    #@211
    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@214
    move-result-object v32

    #@215
    .line 2953
    const/16 v33, 0x0

    #@217
    move-object/from16 v0, v30

    #@219
    move/from16 v1, v33

    #@21b
    move/from16 v2, v31

    #@21d
    move-object/from16 v3, v32

    #@21f
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@222
    .line 2955
    move-object/from16 v0, v24

    #@224
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@226
    move-object/from16 v30, v0

    #@228
    move-object/from16 v0, v24

    #@22a
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    #@22c
    move-object/from16 v31, v0

    #@22e
    const/16 v32, 0x0

    #@230
    const/16 v33, 0x0

    #@232
    .line 2956
    const/16 v34, 0x21

    #@234
    .line 2955
    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@237
    .line 2957
    move-object/from16 v0, p0

    #@239
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@23b
    move/from16 v30, v0

    #@23d
    add-int/lit8 v30, v30, 0x1

    #@23f
    move/from16 v0, v30

    #@241
    move-object/from16 v1, p0

    #@243
    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@245
    .line 2959
    move-object/from16 v0, p0

    #@247
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@249
    move-object/from16 v30, v0

    #@24b
    move-object/from16 v0, v30

    #@24d
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@24f
    move-object/from16 v30, v0

    #@251
    if-nez v30, :cond_a

    #@253
    move-object/from16 v0, p0

    #@255
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@257
    move-object/from16 v30, v0

    #@259
    new-instance v31, Landroid/text/style/SuggestionRangeSpan;

    #@25b
    invoke-direct/range {v31 .. v31}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    #@25e
    move-object/from16 v0, v31

    #@260
    move-object/from16 v1, v30

    #@262
    iput-object v0, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@264
    .line 2960
    :cond_a
    if-nez v29, :cond_b

    #@266
    .line 2962
    move-object/from16 v0, p0

    #@268
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@26a
    move-object/from16 v30, v0

    #@26c
    move-object/from16 v0, v30

    #@26e
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@270
    move-object/from16 v30, v0

    #@272
    move-object/from16 v0, p0

    #@274
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@276
    move-object/from16 v31, v0

    #@278
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@27b
    move-result-object v31

    #@27c
    move-object/from16 v0, v31

    #@27e
    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    #@280
    move/from16 v31, v0

    #@282
    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    #@285
    .line 2969
    :goto_4
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@289
    move-object/from16 v30, v0

    #@28b
    move-object/from16 v0, v30

    #@28d
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@28f
    move-object/from16 v30, v0

    #@291
    .line 2970
    const/16 v31, 0x21

    #@293
    .line 2969
    move-object/from16 v0, v21

    #@295
    move-object/from16 v1, v30

    #@297
    move/from16 v2, v20

    #@299
    move/from16 v3, v19

    #@29b
    move/from16 v4, v31

    #@29d
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@2a0
    .line 2972
    move-object/from16 v0, p0

    #@2a2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@2a4
    move-object/from16 v30, v0

    #@2a6
    invoke-virtual/range {v30 .. v30}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    #@2a9
    .line 2973
    const/16 v30, 0x1

    #@2ab
    return v30

    #@2ac
    .line 2964
    :cond_b
    const v5, 0x3ecccccd    # 0.4f

    #@2af
    .line 2965
    .local v5, "BACKGROUND_TRANSPARENCY":F
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    #@2b2
    move-result v30

    #@2b3
    move/from16 v0, v30

    #@2b5
    int-to-float v0, v0

    #@2b6
    move/from16 v30, v0

    #@2b8
    const v31, 0x3ecccccd    # 0.4f

    #@2bb
    mul-float v30, v30, v31

    #@2bd
    move/from16 v0, v30

    #@2bf
    float-to-int v12, v0

    #@2c0
    .line 2966
    .local v12, "newAlpha":I
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2c4
    move-object/from16 v30, v0

    #@2c6
    move-object/from16 v0, v30

    #@2c8
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@2ca
    move-object/from16 v30, v0

    #@2cc
    .line 2967
    const v31, 0xffffff

    #@2cf
    and-int v31, v31, v29

    #@2d1
    shl-int/lit8 v32, v12, 0x18

    #@2d3
    add-int v31, v31, v32

    #@2d5
    .line 2966
    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    #@2d8
    goto :goto_4
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .param p1, "positionY"    # I

    #@0
    .prologue
    .line 2854
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    #@5
    move-result v1

    #@6
    .line 2855
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object v0

    #@14
    .line 2856
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@16
    sub-int/2addr v2, v1

    #@17
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v2

    #@1b
    return v2
.end method

.method protected createPopupWindow()V
    .locals 3

    #@0
    .prologue
    .line 2676
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    #@2
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v1}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    .line 2677
    const v2, 0x1010373

    #@f
    .line 2676
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V

    #@12
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@14
    .line 2678
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@16
    const/4 v1, 0x2

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@1a
    .line 2679
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1c
    const/4 v1, 0x1

    #@1d
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@20
    .line 2680
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@26
    .line 2675
    return-void
.end method

.method protected getTextOffset()I
    .locals 1

    #@0
    .prologue
    .line 2844
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 2849
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public hide()V
    .locals 0

    #@0
    .prologue
    .line 2861
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    #@3
    .line 2860
    return-void
.end method

.method protected initContentView()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2685
    new-instance v1, Landroid/widget/ListView;

    #@3
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@5
    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@10
    .line 2686
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@12
    invoke-direct {v2, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;)V

    #@15
    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@17
    .line 2687
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@1c
    .line 2688
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@1f
    .line 2689
    iput-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@21
    .line 2692
    const/4 v2, 0x7

    #@22
    new-array v2, v2, [Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@24
    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@26
    .line 2693
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@29
    array-length v2, v2

    #@2a
    if-ge v0, v2, :cond_0

    #@2c
    .line 2694
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@2e
    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@30
    invoke-direct {v3, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;)V

    #@33
    aput-object v3, v2, v0

    #@35
    .line 2693
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2684
    :cond_0
    return-void
.end method

.method public isShowingUp()Z
    .locals 1

    #@0
    .prologue
    .line 2699
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@2
    return v0
.end method

.method protected measureContent()V
    .locals 9

    #@0
    .prologue
    const/high16 v8, -0x80000000

    #@2
    .line 2813
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v7}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v7

    #@8
    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@f
    move-result-object v0

    #@10
    .line 2815
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@12
    .line 2814
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@15
    move-result v1

    #@16
    .line 2817
    .local v1, "horizontalMeasure":I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@18
    .line 2816
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b
    move-result v4

    #@1c
    .line 2819
    .local v4, "verticalMeasure":I
    const/4 v6, 0x0

    #@1d
    .line 2820
    .local v6, "width":I
    const/4 v5, 0x0

    #@1e
    .line 2821
    .local v5, "view":Landroid/view/View;
    const/4 v2, 0x0

    #@1f
    .end local v5    # "view":Landroid/view/View;
    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@21
    if-ge v2, v7, :cond_0

    #@23
    .line 2822
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@25
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@27
    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@2a
    move-result-object v5

    #@2b
    .line 2823
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v7

    #@2f
    const/4 v8, -0x2

    #@30
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@32
    .line 2824
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    #@35
    .line 2825
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@38
    move-result v7

    #@39
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@3c
    move-result v6

    #@3d
    .line 2821
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 2829
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@42
    .line 2830
    const/high16 v8, 0x40000000    # 2.0f

    #@44
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@47
    move-result v8

    #@48
    .line 2829
    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    #@4b
    .line 2833
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@4d
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v3

    #@51
    .line 2834
    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    #@53
    .line 2835
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@55
    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@58
    move-result-object v7

    #@59
    if-nez v7, :cond_1

    #@5b
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@5d
    new-instance v8, Landroid/graphics/Rect;

    #@5f
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #@62
    invoke-static {v7, v8}, Landroid/widget/Editor;->-set4(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@65
    .line 2836
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@67
    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@6e
    .line 2837
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@70
    invoke-static {v7}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@73
    move-result-object v7

    #@74
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@76
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@78
    invoke-static {v8}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@7b
    move-result-object v8

    #@7c
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@7e
    add-int/2addr v7, v8

    #@7f
    add-int/2addr v6, v7

    #@80
    .line 2839
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@82
    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@85
    .line 2812
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 30
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2998
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    move-object/from16 v25, v0

    #@6
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v25

    #@a
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Landroid/text/Editable;

    #@10
    .line 2999
    .local v3, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    #@14
    move-object/from16 v25, v0

    #@16
    aget-object v16, v25, p3

    #@18
    .line 3001
    .local v16, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v16

    #@1a
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@1c
    move/from16 v25, v0

    #@1e
    const/16 v26, -0x2

    #@20
    move/from16 v0, v25

    #@22
    move/from16 v1, v26

    #@24
    if-ne v0, v1, :cond_3

    #@26
    .line 3002
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2a
    move-object/from16 v25, v0

    #@2c
    move-object/from16 v0, v25

    #@2e
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@30
    move-object/from16 v25, v0

    #@32
    move-object/from16 v0, v25

    #@34
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@37
    move-result v13

    #@38
    .line 3003
    .local v13, "spanUnionStart":I
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@3c
    move-object/from16 v25, v0

    #@3e
    move-object/from16 v0, v25

    #@40
    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@42
    move-object/from16 v25, v0

    #@44
    move-object/from16 v0, v25

    #@46
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@49
    move-result v12

    #@4a
    .line 3004
    .local v12, "spanUnionEnd":I
    if-ltz v13, :cond_2

    #@4c
    if-le v12, v13, :cond_2

    #@4e
    .line 3006
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    #@51
    move-result v25

    #@52
    move/from16 v0, v25

    #@54
    if-ge v12, v0, :cond_1

    #@56
    .line 3007
    invoke-interface {v3, v12}, Landroid/text/Editable;->charAt(I)C

    #@59
    move-result v25

    #@5a
    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@5d
    move-result v25

    #@5e
    .line 3006
    if-eqz v25, :cond_1

    #@60
    .line 3008
    if-eqz v13, :cond_0

    #@62
    .line 3009
    add-int/lit8 v25, v13, -0x1

    #@64
    move/from16 v0, v25

    #@66
    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    #@69
    move-result v25

    #@6a
    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@6d
    move-result v25

    #@6e
    .line 3006
    if-eqz v25, :cond_1

    #@70
    .line 3010
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@72
    .line 3012
    :cond_1
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@76
    move-object/from16 v25, v0

    #@78
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7b
    move-result-object v25

    #@7c
    move-object/from16 v0, v25

    #@7e
    invoke-virtual {v0, v13, v12}, Landroid/widget/TextView;->deleteText_internal(II)V

    #@81
    .line 3014
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    #@84
    .line 3015
    return-void

    #@85
    .line 3018
    .end local v12    # "spanUnionEnd":I
    .end local v13    # "spanUnionStart":I
    :cond_3
    move-object/from16 v0, v16

    #@87
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@89
    move-object/from16 v25, v0

    #@8b
    move-object/from16 v0, v25

    #@8d
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@90
    move-result v11

    #@91
    .line 3019
    .local v11, "spanStart":I
    move-object/from16 v0, v16

    #@93
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@95
    move-object/from16 v25, v0

    #@97
    move-object/from16 v0, v25

    #@99
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@9c
    move-result v10

    #@9d
    .line 3020
    .local v10, "spanEnd":I
    if-ltz v11, :cond_4

    #@9f
    if-gt v10, v11, :cond_5

    #@a1
    .line 3022
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    #@a4
    .line 3023
    return-void

    #@a5
    .line 3026
    :cond_5
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@a8
    move-result-object v25

    #@a9
    move-object/from16 v0, v25

    #@ab
    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ae
    move-result-object v9

    #@af
    .line 3028
    .local v9, "originalText":Ljava/lang/String;
    move-object/from16 v0, v16

    #@b1
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@b3
    move/from16 v25, v0

    #@b5
    const/16 v26, -0x1

    #@b7
    move/from16 v0, v25

    #@b9
    move/from16 v1, v26

    #@bb
    if-ne v0, v1, :cond_6

    #@bd
    .line 3029
    new-instance v5, Landroid/content/Intent;

    #@bf
    const-string/jumbo v25, "com.android.settings.USER_DICTIONARY_INSERT"

    #@c2
    move-object/from16 v0, v25

    #@c4
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c7
    .line 3030
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v25, "word"

    #@ca
    move-object/from16 v0, v25

    #@cc
    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@cf
    .line 3031
    const-string/jumbo v25, "locale"

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@d6
    move-object/from16 v26, v0

    #@d8
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@db
    move-result-object v26

    #@dc
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    #@df
    move-result-object v26

    #@e0
    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@e3
    move-result-object v26

    #@e4
    move-object/from16 v0, v25

    #@e6
    move-object/from16 v1, v26

    #@e8
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@eb
    .line 3034
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    #@ee
    move-result v25

    #@ef
    const/high16 v26, 0x10000000

    #@f1
    or-int v25, v25, v26

    #@f3
    move/from16 v0, v25

    #@f5
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@f8
    .line 3035
    move-object/from16 v0, p0

    #@fa
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@fc
    move-object/from16 v25, v0

    #@fe
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@101
    move-result-object v25

    #@102
    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@105
    move-result-object v25

    #@106
    move-object/from16 v0, v25

    #@108
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@10b
    .line 3038
    move-object/from16 v0, v16

    #@10d
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@10f
    move-object/from16 v25, v0

    #@111
    move-object/from16 v0, v25

    #@113
    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@116
    .line 3039
    invoke-static {v3, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@119
    .line 3040
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@11d
    move-object/from16 v25, v0

    #@11f
    const/16 v26, 0x0

    #@121
    move-object/from16 v0, v25

    #@123
    move/from16 v1, v26

    #@125
    invoke-static {v0, v11, v10, v1}, Landroid/widget/Editor;->-wrap17(Landroid/widget/Editor;IIZ)V

    #@128
    .line 3097
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    #@12b
    .line 2997
    return-void

    #@12c
    .line 3044
    :cond_6
    const-class v25, Landroid/text/style/SuggestionSpan;

    #@12e
    .line 3043
    move-object/from16 v0, v25

    #@130
    invoke-interface {v3, v11, v10, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@133
    move-result-object v19

    #@134
    check-cast v19, [Landroid/text/style/SuggestionSpan;

    #@136
    .line 3045
    .local v19, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v19

    #@138
    array-length v6, v0

    #@139
    .line 3046
    .local v6, "length":I
    new-array v0, v6, [I

    #@13b
    move-object/from16 v22, v0

    #@13d
    .line 3047
    .local v22, "suggestionSpansStarts":[I
    new-array v0, v6, [I

    #@13f
    move-object/from16 v20, v0

    #@141
    .line 3048
    .local v20, "suggestionSpansEnds":[I
    new-array v0, v6, [I

    #@143
    move-object/from16 v21, v0

    #@145
    .line 3049
    .local v21, "suggestionSpansFlags":[I
    const/4 v4, 0x0

    #@146
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_8

    #@148
    .line 3050
    aget-object v17, v19, v4

    #@14a
    .line 3051
    .local v17, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v17

    #@14c
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    #@14f
    move-result v25

    #@150
    aput v25, v22, v4

    #@152
    .line 3052
    move-object/from16 v0, v17

    #@154
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    #@157
    move-result v25

    #@158
    aput v25, v20, v4

    #@15a
    .line 3053
    move-object/from16 v0, v17

    #@15c
    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    #@15f
    move-result v25

    #@160
    aput v25, v21, v4

    #@162
    .line 3056
    invoke-virtual/range {v17 .. v17}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@165
    move-result v18

    #@166
    .line 3057
    .local v18, "suggestionSpanFlags":I
    and-int/lit8 v25, v18, 0x2

    #@168
    if-lez v25, :cond_7

    #@16a
    .line 3058
    and-int/lit8 v18, v18, -0x3

    #@16c
    .line 3059
    and-int/lit8 v18, v18, -0x2

    #@16e
    .line 3060
    invoke-virtual/range {v17 .. v18}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    #@171
    .line 3049
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@173
    goto :goto_1

    #@174
    .line 3064
    .end local v17    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v18    # "suggestionSpanFlags":I
    :cond_8
    move-object/from16 v0, v16

    #@176
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    #@178
    move/from16 v23, v0

    #@17a
    .line 3065
    .local v23, "suggestionStart":I
    move-object/from16 v0, v16

    #@17c
    iget v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    #@17e
    .line 3066
    .local v15, "suggestionEnd":I
    move-object/from16 v0, v16

    #@180
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    #@182
    move-object/from16 v25, v0

    #@184
    move-object/from16 v0, v25

    #@186
    move/from16 v1, v23

    #@188
    invoke-virtual {v0, v1, v15}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@18b
    move-result-object v25

    #@18c
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@18f
    move-result-object v14

    #@190
    .line 3068
    .local v14, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    #@192
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@194
    move-object/from16 v25, v0

    #@196
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@199
    move-result-object v25

    #@19a
    move-object/from16 v0, v25

    #@19c
    invoke-virtual {v0, v11, v10, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    #@19f
    .line 3072
    move-object/from16 v0, v16

    #@1a1
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@1a3
    move-object/from16 v25, v0

    #@1a5
    .line 3073
    move-object/from16 v0, p0

    #@1a7
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@1a9
    move-object/from16 v26, v0

    #@1ab
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1ae
    move-result-object v26

    #@1af
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@1b2
    move-result-object v26

    #@1b3
    move-object/from16 v0, v16

    #@1b5
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@1b7
    move/from16 v27, v0

    #@1b9
    .line 3072
    move-object/from16 v0, v25

    #@1bb
    move-object/from16 v1, v26

    #@1bd
    move/from16 v2, v27

    #@1bf
    invoke-virtual {v0, v1, v9, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    #@1c2
    .line 3076
    move-object/from16 v0, v16

    #@1c4
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    #@1c6
    move-object/from16 v25, v0

    #@1c8
    invoke-virtual/range {v25 .. v25}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@1cb
    move-result-object v24

    #@1cc
    .line 3077
    .local v24, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v16

    #@1ce
    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    #@1d0
    move/from16 v25, v0

    #@1d2
    aput-object v9, v24, v25

    #@1d4
    .line 3080
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@1d7
    move-result v25

    #@1d8
    sub-int v26, v10, v11

    #@1da
    sub-int v7, v25, v26

    #@1dc
    .line 3081
    .local v7, "lengthDifference":I
    const/4 v4, 0x0

    #@1dd
    :goto_2
    if-ge v4, v6, :cond_a

    #@1df
    .line 3085
    aget v25, v22, v4

    #@1e1
    move/from16 v0, v25

    #@1e3
    if-gt v0, v11, :cond_9

    #@1e5
    .line 3086
    aget v25, v20, v4

    #@1e7
    move/from16 v0, v25

    #@1e9
    if-lt v0, v10, :cond_9

    #@1eb
    .line 3087
    move-object/from16 v0, p0

    #@1ed
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@1ef
    move-object/from16 v25, v0

    #@1f1
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@1f4
    move-result-object v25

    #@1f5
    aget-object v26, v19, v4

    #@1f7
    aget v27, v22, v4

    #@1f9
    .line 3088
    aget v28, v20, v4

    #@1fb
    add-int v28, v28, v7

    #@1fd
    aget v29, v21, v4

    #@1ff
    .line 3087
    invoke-virtual/range {v25 .. v29}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    #@202
    .line 3081
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@204
    goto :goto_2

    #@205
    .line 3093
    :cond_a
    add-int v8, v10, v7

    #@207
    .line 3094
    .local v8, "newCursorPosition":I
    move-object/from16 v0, p0

    #@209
    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@20b
    move-object/from16 v25, v0

    #@20d
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@210
    move-result-object v25

    #@211
    move-object/from16 v0, v25

    #@213
    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    #@216
    goto/16 :goto_0
.end method

.method public onParentLostFocus()V
    .locals 1

    #@0
    .prologue
    .line 2703
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@3
    .line 2702
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 2801
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    instance-of v0, v0, Landroid/text/Editable;

    #@c
    if-nez v0, :cond_0

    #@e
    return-void

    #@f
    .line 2803
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 2804
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@17
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@19
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    #@1b
    .line 2805
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@1d
    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@20
    move-result-object v0

    #@21
    const/4 v1, 0x0

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    #@25
    .line 2806
    const/4 v0, 0x1

    #@26
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@28
    .line 2807
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    #@2b
    .line 2800
    :cond_1
    return-void
.end method

.class public Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;
    }
.end annotation


# static fields
.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5

.field private static final USER_DICTIONARY_EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field private static final USER_DICTIONARY_EXTRA_WORD:Ljava/lang/String; = "word"


# instance fields
.field private mAddToDictionaryButton:Landroid/widget/TextView;

.field private mContainerMarginTop:I

.field private mContainerMarginWidth:I

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mDeleteButton:Landroid/widget/TextView;

.field private mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

.field private mIsShowingUp:Z

.field private final mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field private mNumberOfSuggestions:I

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

.field private mSuggestionListView:Landroid/widget/ListView;

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 3309
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    #@5
    .line 3277
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@8
    .line 3283
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo;)V

    #@e
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@10
    .line 3310
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    #@12
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    #@14
    .line 3309
    return-void
.end method

.method private applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 7
    .param p1, "originalContext"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 3322
    new-array v3, v6, [I

    #@4
    const/high16 v4, 0x1160000

    #@6
    aput v4, v3, v5

    #@8
    .line 3321
    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 3323
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v1

    #@10
    .line 3324
    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_0

    #@12
    const v2, 0x103024a

    #@15
    .line 3326
    .local v2, "themeId":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@18
    .line 3327
    new-instance v3, Landroid/view/ContextThemeWrapper;

    #@1a
    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@1d
    return-object v3

    #@1e
    .line 3325
    .end local v2    # "themeId":I
    :cond_0
    const v2, 0x103024b

    #@21
    .restart local v2    # "themeId":I
    goto :goto_0
.end method

.method private hideWithCleanUp()V
    .locals 4

    #@0
    .prologue
    .line 3548
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_0

    #@6
    aget-object v0, v2, v1

    #@8
    .line 3549
    .local v0, "info":Landroid/widget/Editor$SuggestionInfo;
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionInfo;->clear()V

    #@b
    .line 3548
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 3551
    .end local v0    # "info":Landroid/widget/Editor$SuggestionInfo;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@10
    invoke-virtual {v1}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    #@13
    .line 3552
    invoke-virtual {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    #@16
    .line 3547
    return-void
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V
    .locals 9
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3617
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v4}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/text/Spannable;

    #@d
    .line 3618
    .local v2, "text":Landroid/text/Spannable;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@f
    iget v1, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@11
    .line 3619
    .local v1, "spanStart":I
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@13
    iget v0, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@15
    .line 3622
    .local v0, "spanEnd":I
    sub-int v4, v1, p2

    #@17
    iput v4, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    #@19
    .line 3623
    iget v4, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    #@1b
    .line 3624
    iget-object v5, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@1d
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    #@20
    move-result v5

    #@21
    .line 3623
    add-int/2addr v4, v5

    #@22
    iput v4, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    #@24
    .line 3626
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@26
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    #@28
    iget-object v6, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@2a
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    #@2d
    move-result v6

    #@2e
    .line 3627
    const/16 v7, 0x21

    #@30
    .line 3626
    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@33
    .line 3630
    invoke-interface {v2}, Landroid/text/Spannable;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 3631
    .local v3, "textAsString":Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@39
    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v4, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@40
    .line 3632
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@42
    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@49
    .line 3616
    return-void
.end method

.method private updateSuggestions()Z
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 3556
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@3
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@6
    move-result-object v9

    #@7
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@a
    move-result-object v7

    #@b
    check-cast v7, Landroid/text/Spannable;

    #@d
    .line 3558
    .local v7, "spannable":Landroid/text/Spannable;
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@f
    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;

    #@12
    move-result-object v9

    #@13
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@15
    iget-object v11, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@17
    invoke-virtual {v9, v10, v11}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    #@1a
    move-result v9

    #@1b
    .line 3557
    iput v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@1d
    .line 3559
    iget v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@1f
    if-nez v9, :cond_0

    #@21
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@23
    iget-object v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@25
    if-nez v9, :cond_0

    #@27
    .line 3560
    return v12

    #@28
    .line 3563
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2a
    invoke-static {v9}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@2d
    move-result-object v9

    #@2e
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@31
    move-result-object v9

    #@32
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v6

    #@36
    .line 3564
    .local v6, "spanUnionStart":I
    const/4 v5, 0x0

    #@37
    .line 3566
    .local v5, "spanUnionEnd":I
    const/4 v2, 0x0

    #@38
    .local v2, "i":I
    :goto_0
    iget v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@3a
    if-ge v2, v9, :cond_1

    #@3c
    .line 3567
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@3e
    aget-object v9, v9, v2

    #@40
    iget-object v4, v9, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@42
    .line 3568
    .local v4, "spanInfo":Landroid/widget/Editor$SuggestionSpanInfo;
    iget v9, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@44
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    #@47
    move-result v6

    #@48
    .line 3569
    iget v9, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@4a
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v5

    #@4e
    .line 3566
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 3571
    .end local v4    # "spanInfo":Landroid/widget/Editor$SuggestionSpanInfo;
    :cond_1
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@53
    iget-object v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@55
    if-eqz v9, :cond_2

    #@57
    .line 3572
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@59
    iget v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@5b
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    #@5e
    move-result v6

    #@5f
    .line 3573
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@61
    iget v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@63
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    #@66
    move-result v5

    #@67
    .line 3576
    :cond_2
    const/4 v2, 0x0

    #@68
    :goto_1
    iget v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@6a
    if-ge v2, v9, :cond_3

    #@6c
    .line 3577
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@6e
    aget-object v9, v9, v2

    #@70
    invoke-direct {p0, v9, v6, v5}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V

    #@73
    .line 3576
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_1

    #@76
    .line 3581
    :cond_3
    const/16 v1, 0x8

    #@78
    .line 3582
    .local v1, "addToDictionaryButtonVisibility":I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@7a
    iget-object v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@7c
    if-eqz v9, :cond_4

    #@7e
    .line 3583
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@80
    iget v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@82
    if-ltz v9, :cond_4

    #@84
    .line 3584
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@86
    iget v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@88
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@8a
    iget v10, v10, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@8c
    if-le v9, v10, :cond_4

    #@8e
    .line 3585
    const/4 v1, 0x0

    #@8f
    .line 3588
    :cond_4
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    #@91
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    #@94
    .line 3590
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@96
    iget-object v9, v9, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@98
    if-nez v9, :cond_5

    #@9a
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@9c
    new-instance v10, Landroid/text/style/SuggestionRangeSpan;

    #@9e
    invoke-direct {v10}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    #@a1
    iput-object v10, v9, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@a3
    .line 3592
    :cond_5
    iget v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    #@a5
    if-eqz v9, :cond_6

    #@a7
    .line 3594
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@a9
    aget-object v9, v9, v12

    #@ab
    iget-object v9, v9, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@ad
    iget-object v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@af
    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    #@b2
    move-result v8

    #@b3
    .line 3599
    .local v8, "underlineColor":I
    :goto_2
    if-nez v8, :cond_7

    #@b5
    .line 3601
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@b7
    iget-object v9, v9, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@b9
    iget-object v10, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@bb
    invoke-static {v10}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@be
    move-result-object v10

    #@bf
    iget v10, v10, Landroid/widget/TextView;->mHighlightColor:I

    #@c1
    invoke-virtual {v9, v10}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    #@c4
    .line 3608
    :goto_3
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@c6
    iget-object v9, v9, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@c8
    .line 3609
    const/16 v10, 0x21

    #@ca
    .line 3608
    invoke-interface {v7, v9, v6, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@cd
    .line 3611
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@cf
    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@d2
    .line 3612
    const/4 v9, 0x1

    #@d3
    return v9

    #@d4
    .line 3596
    .end local v8    # "underlineColor":I
    :cond_6
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@d6
    iget-object v9, v9, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@d8
    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    #@db
    move-result v8

    #@dc
    .restart local v8    # "underlineColor":I
    goto :goto_2

    #@dd
    .line 3603
    :cond_7
    const v0, 0x3ecccccd    # 0.4f

    #@e0
    .line 3604
    .local v0, "BACKGROUND_TRANSPARENCY":F
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    #@e3
    move-result v9

    #@e4
    int-to-float v9, v9

    #@e5
    const v10, 0x3ecccccd    # 0.4f

    #@e8
    mul-float/2addr v9, v10

    #@e9
    float-to-int v3, v9

    #@ea
    .line 3605
    .local v3, "newAlpha":I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@ec
    iget-object v9, v9, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    #@ee
    .line 3606
    const v10, 0xffffff

    #@f1
    and-int/2addr v10, v8

    #@f2
    shl-int/lit8 v11, v3, 0x18

    #@f4
    add-int/2addr v10, v11

    #@f5
    .line 3605
    invoke-virtual {v9, v10}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    #@f8
    goto :goto_3
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .param p1, "positionY"    # I

    #@0
    .prologue
    .line 3542
    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@5
    move-result v1

    #@6
    .line 3543
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@8
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object v0

    #@14
    .line 3544
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
    const/4 v2, 0x0

    #@1
    .line 3332
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;)V

    #@7
    iput-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@9
    .line 3333
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@f
    .line 3334
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@11
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    #@13
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@19
    .line 3335
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@1b
    const/4 v1, 0x1

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    #@1f
    .line 3336
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@21
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    #@24
    .line 3331
    return-void
.end method

.method public getContentViewForTesting()Landroid/view/ViewGroup;
    .locals 1

    #@0
    .prologue
    .line 3470
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@2
    return-object v0
.end method

.method protected getTextOffset()I
    .locals 2

    #@0
    .prologue
    .line 3532
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v1}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    #@13
    move-result v1

    #@14
    add-int/2addr v0, v1

    #@15
    div-int/lit8 v0, v0, 0x2

    #@17
    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 3537
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    iget v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0
.end method

.method public bridge synthetic hide()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    #@3
    return-void
.end method

.method protected initContentView()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3341
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    #@3
    .line 3342
    const-string/jumbo v4, "layout_inflater"

    #@6
    .line 3341
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/view/LayoutInflater;

    #@c
    .line 3344
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@e
    invoke-static {v3}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@11
    move-result-object v3

    #@12
    iget v3, v3, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    #@14
    .line 3343
    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/view/ViewGroup;

    #@1a
    iput-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@1c
    .line 3346
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@1e
    .line 3347
    const v4, 0x102042e

    #@21
    .line 3346
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/widget/LinearLayout;

    #@27
    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    #@29
    .line 3349
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    #@2b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@31
    .line 3350
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@33
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@35
    add-int/2addr v3, v4

    #@36
    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    #@38
    .line 3351
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@3a
    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    #@3c
    .line 3352
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@3e
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mClippingLimitLeft:I

    #@40
    .line 3353
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@42
    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mClippingLimitRight:I

    #@44
    .line 3355
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@46
    .line 3356
    const v4, 0x102042f

    #@49
    .line 3355
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@4c
    move-result-object v3

    #@4d
    check-cast v3, Landroid/widget/ListView;

    #@4f
    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    #@51
    .line 3358
    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@53
    invoke-direct {v3, p0, v5}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;)V

    #@56
    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@58
    .line 3359
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    #@5a
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@5c
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@5f
    .line 3360
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    #@61
    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@64
    .line 3363
    const/4 v3, 0x5

    #@65
    new-array v3, v3, [Landroid/widget/Editor$SuggestionInfo;

    #@67
    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@69
    .line 3364
    const/4 v0, 0x0

    #@6a
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@6c
    array-length v3, v3

    #@6d
    if-ge v0, v3, :cond_0

    #@6f
    .line 3365
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@71
    new-instance v4, Landroid/widget/Editor$SuggestionInfo;

    #@73
    invoke-direct {v4, v5}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo;)V

    #@76
    aput-object v4, v3, v0

    #@78
    .line 3364
    add-int/lit8 v0, v0, 0x1

    #@7a
    goto :goto_0

    #@7b
    .line 3368
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@7d
    .line 3369
    const v4, 0x1020430

    #@80
    .line 3368
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@83
    move-result-object v3

    #@84
    check-cast v3, Landroid/widget/TextView;

    #@86
    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    #@88
    .line 3370
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    #@8a
    new-instance v4, Landroid/widget/Editor$SuggestionsPopupWindow$1;

    #@8c
    invoke-direct {v4, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$1;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@8f
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@92
    .line 3401
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@94
    .line 3402
    const v4, 0x1020431

    #@97
    .line 3401
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@9a
    move-result-object v3

    #@9b
    check-cast v3, Landroid/widget/TextView;

    #@9d
    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    #@9f
    .line 3403
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    #@a1
    new-instance v4, Landroid/widget/Editor$SuggestionsPopupWindow$2;

    #@a3
    invoke-direct {v4, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$2;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    #@a6
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@a9
    .line 3340
    return-void
.end method

.method public bridge synthetic isShowing()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isShowingUp()Z
    .locals 1

    #@0
    .prologue
    .line 3427
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
    .line 3490
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@4
    invoke-static {v7}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@7
    move-result-object v7

    #@8
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v7

    #@c
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@f
    move-result-object v0

    #@10
    .line 3492
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@12
    .line 3491
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@15
    move-result v1

    #@16
    .line 3494
    .local v1, "horizontalMeasure":I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@18
    .line 3493
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1b
    move-result v4

    #@1c
    .line 3496
    .local v4, "verticalMeasure":I
    const/4 v6, 0x0

    #@1d
    .line 3497
    .local v6, "width":I
    const/4 v5, 0x0

    #@1e
    .line 3498
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
    .line 3499
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    #@25
    iget-object v8, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@27
    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@2a
    move-result-object v5

    #@2b
    .line 3500
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object v7

    #@2f
    const/4 v8, -0x2

    #@30
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@32
    .line 3501
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    #@35
    .line 3502
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@38
    move-result v7

    #@39
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@3c
    move-result v6

    #@3d
    .line 3498
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 3505
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    #@42
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    #@45
    move-result v7

    #@46
    const/16 v8, 0x8

    #@48
    if-eq v7, v8, :cond_1

    #@4a
    .line 3506
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    #@4c
    invoke-virtual {v7, v1, v4}, Landroid/view/View;->measure(II)V

    #@4f
    .line 3507
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    #@51
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    #@54
    move-result v7

    #@55
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@58
    move-result v6

    #@59
    .line 3510
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    #@5b
    invoke-virtual {v7, v1, v4}, Landroid/view/View;->measure(II)V

    #@5e
    .line 3511
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    #@60
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    #@63
    move-result v7

    #@64
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@67
    move-result v6

    #@68
    .line 3513
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    #@6a
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    #@6d
    move-result v7

    #@6e
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    #@70
    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    #@73
    move-result v8

    #@74
    add-int/2addr v7, v8

    #@75
    .line 3514
    iget v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    #@77
    .line 3513
    add-int/2addr v7, v8

    #@78
    add-int/2addr v6, v7

    #@79
    .line 3517
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    #@7b
    .line 3518
    const/high16 v8, 0x40000000    # 2.0f

    #@7d
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@80
    move-result v8

    #@81
    .line 3517
    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    #@84
    .line 3521
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@86
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@89
    move-result-object v3

    #@8a
    .line 3522
    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    #@8c
    .line 3523
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@8e
    invoke-static {v7}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@91
    move-result-object v7

    #@92
    if-nez v7, :cond_2

    #@94
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@96
    new-instance v8, Landroid/graphics/Rect;

    #@98
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    #@9b
    invoke-static {v7, v8}, Landroid/widget/Editor;->-set5(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@9e
    .line 3524
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@a0
    invoke-static {v7}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@a3
    move-result-object v7

    #@a4
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@a7
    .line 3525
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@a9
    invoke-static {v7}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@ac
    move-result-object v7

    #@ad
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@af
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@b1
    invoke-static {v8}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/graphics/Rect;

    #@b4
    move-result-object v8

    #@b5
    iget v8, v8, Landroid/graphics/Rect;->right:I

    #@b7
    add-int/2addr v7, v8

    #@b8
    add-int/2addr v6, v7

    #@b9
    .line 3527
    :cond_3
    iget-object v7, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    #@bb
    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    #@be
    .line 3489
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 3637
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    #@2
    aget-object v0, v1, p3

    #@4
    .line 3638
    .local v0, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@6
    invoke-static {v1, v0}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    #@9
    .line 3639
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    #@c
    .line 3636
    return-void
.end method

.method public onParentLostFocus()V
    .locals 1

    #@0
    .prologue
    .line 3431
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@3
    .line 3430
    return-void
.end method

.method protected setUp()V
    .locals 3

    #@0
    .prologue
    .line 3315
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    #@10
    .line 3316
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@12
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    #@14
    .line 3317
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@16
    invoke-static {v2}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@19
    move-result-object v2

    #@1a
    iget v2, v2, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    #@1c
    .line 3316
    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    #@1f
    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    #@21
    .line 3314
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 3475
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

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
    .line 3476
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@11
    invoke-virtual {v0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 3477
    return-void

    #@18
    .line 3480
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 3481
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@20
    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    #@22
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    #@24
    .line 3482
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    #@26
    invoke-static {v0}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@29
    move-result-object v0

    #@2a
    const/4 v1, 0x0

    #@2b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    #@2e
    .line 3483
    const/4 v0, 0x1

    #@2f
    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    #@31
    .line 3484
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    #@34
    .line 3474
    :cond_2
    return-void
.end method

.method public bridge synthetic updatePosition(IIZZ)V
    .locals 0
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(IIZZ)V

    #@3
    return-void
.end method

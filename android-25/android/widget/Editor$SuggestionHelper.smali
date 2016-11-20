.class Landroid/widget/Editor$SuggestionHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
    }
.end annotation


# instance fields
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

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 3155
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3157
    new-instance v0, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;)V

    #@b
    .line 3156
    iput-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    #@d
    .line 3159
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    .line 3158
    iput-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    #@14
    .line 3155
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    #@3
    return-void
.end method

.method private getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 10

    #@0
    .prologue
    .line 3186
    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    #@2
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    #@9
    move-result v1

    #@a
    .line 3187
    .local v1, "pos":I
    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    #@c
    invoke-static {v6}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/text/Spannable;

    #@16
    .line 3188
    .local v2, "spannable":Landroid/text/Spannable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    #@18
    invoke-interface {v2, v1, v1, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1b
    move-result-object v5

    #@1c
    check-cast v5, [Landroid/text/style/SuggestionSpan;

    #@1e
    .line 3190
    .local v5, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    #@20
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@23
    .line 3191
    const/4 v6, 0x0

    #@24
    array-length v7, v5

    #@25
    :goto_0
    if-ge v6, v7, :cond_0

    #@27
    aget-object v4, v5, v6

    #@29
    .line 3192
    .local v4, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@2c
    move-result v3

    #@2d
    .line 3193
    .local v3, "start":I
    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    .line 3194
    .local v0, "end":I
    iget-object v8, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    #@33
    sub-int v9, v0, v3

    #@35
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 3191
    add-int/lit8 v6, v6, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 3199
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    #@41
    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@44
    .line 3200
    iget-object v6, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    #@46
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    #@49
    .line 3202
    return-object v5
.end method


# virtual methods
.method public getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .locals 24
    .param p1, "suggestionInfos"    # [Landroid/widget/Editor$SuggestionInfo;
    .param p2, "misspelledSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    #@0
    .prologue
    .line 3215
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    #@4
    move-object/from16 v19, v0

    #@6
    invoke-static/range {v19 .. v19}, Landroid/widget/Editor;->-get8(Landroid/widget/Editor;)Landroid/widget/TextView;

    #@9
    move-result-object v19

    #@a
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@d
    move-result-object v12

    #@e
    check-cast v12, Landroid/text/Spannable;

    #@10
    .line 3216
    .local v12, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    #@13
    move-result-object v17

    #@14
    .line 3217
    .local v17, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v17

    #@16
    array-length v4, v0

    #@17
    .line 3218
    .local v4, "nbSpans":I
    if-nez v4, :cond_0

    #@19
    const/16 v19, 0x0

    #@1b
    return v19

    #@1c
    .line 3220
    :cond_0
    const/4 v6, 0x0

    #@1d
    .line 3221
    .local v6, "numberOfSuggestions":I
    const/16 v19, 0x0

    #@1f
    move-object/from16 v0, v17

    #@21
    array-length v0, v0

    #@22
    move/from16 v20, v0

    #@24
    :goto_0
    move/from16 v0, v19

    #@26
    move/from16 v1, v20

    #@28
    if-ge v0, v1, :cond_6

    #@2a
    aget-object v16, v17, v19

    #@2c
    .line 3222
    .local v16, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v16

    #@2e
    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    #@31
    move-result v11

    #@32
    .line 3223
    .local v11, "spanStart":I
    move-object/from16 v0, v16

    #@34
    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    #@37
    move-result v10

    #@38
    .line 3225
    .local v10, "spanEnd":I
    if-eqz p2, :cond_1

    #@3a
    .line 3226
    invoke-virtual/range {v16 .. v16}, Landroid/text/style/SuggestionSpan;->getFlags()I

    #@3d
    move-result v21

    #@3e
    and-int/lit8 v21, v21, 0x2

    #@40
    if-eqz v21, :cond_1

    #@42
    .line 3227
    move-object/from16 v0, v16

    #@44
    move-object/from16 v1, p2

    #@46
    iput-object v0, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@48
    .line 3228
    move-object/from16 v0, p2

    #@4a
    iput v11, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@4c
    .line 3229
    move-object/from16 v0, p2

    #@4e
    iput v10, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@50
    .line 3232
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    #@53
    move-result-object v18

    #@54
    .line 3233
    .local v18, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@56
    array-length v5, v0

    #@57
    .line 3235
    .local v5, "nbSuggestions":I
    const/4 v14, 0x0

    #@58
    .local v14, "suggestionIndex":I
    :goto_1
    if-ge v14, v5, :cond_5

    #@5a
    .line 3236
    aget-object v13, v18, v14

    #@5c
    .line 3237
    .local v13, "suggestion":Ljava/lang/String;
    const/4 v3, 0x0

    #@5d
    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_4

    #@5f
    .line 3238
    aget-object v9, p1, v3

    #@61
    .line 3239
    .local v9, "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v0, v9, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@63
    move-object/from16 v21, v0

    #@65
    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v21

    #@69
    move-object/from16 v0, v21

    #@6b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v21

    #@6f
    if-eqz v21, :cond_3

    #@71
    .line 3241
    iget-object v0, v9, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@73
    move-object/from16 v21, v0

    #@75
    .line 3240
    move-object/from16 v0, v21

    #@77
    iget v8, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@79
    .line 3243
    .local v8, "otherSpanStart":I
    iget-object v0, v9, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@7b
    move-object/from16 v21, v0

    #@7d
    .line 3242
    move-object/from16 v0, v21

    #@7f
    iget v7, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@81
    .line 3244
    .local v7, "otherSpanEnd":I
    if-ne v11, v8, :cond_3

    #@83
    if-ne v10, v7, :cond_3

    #@85
    .line 3235
    .end local v7    # "otherSpanEnd":I
    .end local v8    # "otherSpanStart":I
    .end local v9    # "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    #@87
    goto :goto_1

    #@88
    .line 3237
    .restart local v9    # "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@8a
    goto :goto_2

    #@8b
    .line 3250
    .end local v9    # "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    :cond_4
    aget-object v15, p1, v6

    #@8d
    .line 3251
    .local v15, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    move-object/from16 v0, v16

    #@8f
    invoke-virtual {v15, v0, v11, v10}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    #@92
    .line 3252
    iput v14, v15, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    #@94
    .line 3253
    const/16 v21, 0x0

    #@96
    move/from16 v0, v21

    #@98
    iput v0, v15, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    #@9a
    .line 3254
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    #@9d
    move-result v21

    #@9e
    move/from16 v0, v21

    #@a0
    iput v0, v15, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    #@a2
    .line 3255
    iget-object v0, v15, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@a4
    move-object/from16 v21, v0

    #@a6
    iget-object v0, v15, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@a8
    move-object/from16 v22, v0

    #@aa
    invoke-virtual/range {v22 .. v22}, Landroid/text/SpannableStringBuilder;->length()I

    #@ad
    move-result v22

    #@ae
    const/16 v23, 0x0

    #@b0
    move-object/from16 v0, v21

    #@b2
    move/from16 v1, v23

    #@b4
    move/from16 v2, v22

    #@b6
    invoke-virtual {v0, v1, v2, v13}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@b9
    .line 3256
    add-int/lit8 v6, v6, 0x1

    #@bb
    .line 3257
    move-object/from16 v0, p1

    #@bd
    array-length v0, v0

    #@be
    move/from16 v21, v0

    #@c0
    move/from16 v0, v21

    #@c2
    if-lt v6, v0, :cond_2

    #@c4
    .line 3258
    return v6

    #@c5
    .line 3221
    .end local v3    # "i":I
    .end local v13    # "suggestion":Ljava/lang/String;
    .end local v15    # "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    :cond_5
    add-int/lit8 v19, v19, 0x1

    #@c7
    goto/16 :goto_0

    #@c9
    .line 3262
    .end local v5    # "nbSuggestions":I
    .end local v10    # "spanEnd":I
    .end local v11    # "spanStart":I
    .end local v14    # "suggestionIndex":I
    .end local v16    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v18    # "suggestions":[Ljava/lang/String;
    :cond_6
    return v6
.end method

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
.field private final greylist-max-o mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpansLengths(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4011
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4012
    new-instance p1, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor-IA;)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 4014
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .registers 11

    .line 4052
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4053
    .local v0, "pos":I
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 4054
    .local v1, "spannable":Landroid/text/Spannable;
    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4056
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4057
    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_3f

    aget-object v5, v2, v4

    .line 4058
    .local v5, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 4059
    .local v6, "start":I
    invoke-interface {v1, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 4060
    .local v7, "end":I
    iget-object v8, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    sub-int v9, v7, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    .end local v5    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v6    # "start":I
    .end local v7    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 4066
    :cond_3f
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4067
    iget-object v3, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 4069
    return-object v2
.end method


# virtual methods
.method public greylist-max-o getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .registers 22
    .param p1, "suggestionInfos"    # [Landroid/widget/Editor$SuggestionInfo;
    .param p2, "misspelledSpanInfo"    # Landroid/widget/Editor$SuggestionSpanInfo;

    .line 4082
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v3, v2, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 4083
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-direct {v2}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v4

    .line 4084
    .local v4, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v5, v4

    .line 4085
    .local v5, "nbSpans":I
    const/4 v6, 0x0

    if-nez v5, :cond_1b

    return v6

    .line 4087
    :cond_1b
    const/4 v7, 0x0

    .line 4088
    .local v7, "numberOfSuggestions":I
    array-length v8, v4

    move v9, v6

    :goto_1e
    if-ge v9, v8, :cond_b5

    aget-object v10, v4, v9

    .line 4089
    .local v10, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 4090
    .local v11, "spanStart":I
    invoke-interface {v3, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 4092
    .local v12, "spanEnd":I
    if-eqz v1, :cond_3a

    .line 4093
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v13

    and-int/lit8 v13, v13, 0xa

    if-eqz v13, :cond_3a

    .line 4094
    iput-object v10, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 4095
    iput v11, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4096
    iput v12, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 4099
    :cond_3a
    invoke-virtual {v10}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v13

    .line 4100
    .local v13, "suggestions":[Ljava/lang/String;
    array-length v14, v13

    .line 4102
    .local v14, "nbSuggestions":I
    const/4 v15, 0x0

    .local v15, "suggestionIndex":I
    :goto_40
    if-ge v15, v14, :cond_a8

    .line 4103
    aget-object v6, v13, v15

    .line 4104
    .local v6, "suggestion":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i":I
    :goto_48
    if-ge v1, v7, :cond_75

    .line 4105
    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    aget-object v1, v0, v17

    .line 4106
    .local v1, "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 4107
    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v2, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4109
    .local v2, "otherSpanStart":I
    move-object/from16 v18, v3

    .end local v3    # "spannable":Landroid/text/Spannable;
    .local v18, "spannable":Landroid/text/Spannable;
    iget-object v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v3, v3, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 4111
    .local v3, "otherSpanEnd":I
    if-ne v11, v2, :cond_6e

    if-ne v12, v3, :cond_6e

    .line 4112
    move-object/from16 v16, v4

    const/4 v2, 0x0

    goto :goto_9c

    .line 4106
    .end local v2    # "otherSpanStart":I
    .end local v18    # "spannable":Landroid/text/Spannable;
    .local v3, "spannable":Landroid/text/Spannable;
    :cond_6c
    move-object/from16 v18, v3

    .line 4104
    .end local v1    # "otherSuggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    .end local v3    # "spannable":Landroid/text/Spannable;
    .restart local v18    # "spannable":Landroid/text/Spannable;
    :cond_6e
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    .end local v17    # "i":I
    .local v1, "i":I
    goto :goto_48

    .end local v18    # "spannable":Landroid/text/Spannable;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    :cond_75
    move/from16 v17, v1

    move-object/from16 v18, v3

    .line 4117
    .end local v1    # "i":I
    .end local v3    # "spannable":Landroid/text/Spannable;
    .restart local v18    # "spannable":Landroid/text/Spannable;
    aget-object v1, v0, v7

    .line 4118
    .local v1, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    invoke-virtual {v1, v10, v11, v12}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    .line 4119
    iput v15, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 4120
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 4121
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 4122
    iget-object v3, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    move-object/from16 v16, v4

    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .local v16, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v4, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4123
    add-int/lit8 v7, v7, 0x1

    .line 4124
    array-length v3, v0

    if-lt v7, v3, :cond_9c

    .line 4125
    return v7

    .line 4102
    .end local v1    # "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    .end local v6    # "suggestion":Ljava/lang/String;
    :cond_9c
    :goto_9c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move v6, v2

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v2, p0

    goto :goto_40

    .end local v16    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v18    # "spannable":Landroid/text/Spannable;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_a8
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move v2, v6

    .line 4088
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v10    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    .end local v13    # "suggestions":[Ljava/lang/String;
    .end local v14    # "nbSuggestions":I
    .end local v15    # "suggestionIndex":I
    .restart local v16    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .restart local v18    # "spannable":Landroid/text/Spannable;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    goto/16 :goto_1e

    .line 4129
    .end local v16    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    .end local v18    # "spannable":Landroid/text/Spannable;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    .restart local v4    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_b5
    return v7
.end method

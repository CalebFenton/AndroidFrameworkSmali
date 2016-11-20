.class final Landroid/widget/Editor$SuggestionInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionInfo"
.end annotation


# instance fields
.field mSuggestionEnd:I

.field mSuggestionIndex:I

.field final mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field mSuggestionStart:I

.field final mText:Landroid/text/SpannableStringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 3114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3119
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo;)V

    #@9
    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@b
    .line 3124
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@d
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@10
    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@12
    .line 3114
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionInfo;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    #@0
    .prologue
    .line 3127
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@2
    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    #@5
    .line 3128
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    #@7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    #@a
    .line 3126
    return-void
.end method

.method setSpanInfo(Landroid/text/style/SuggestionSpan;II)V
    .locals 1
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "spanStart"    # I
    .param p3, "spanEnd"    # I

    #@0
    .prologue
    .line 3133
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@2
    iput-object p1, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    #@4
    .line 3134
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@6
    iput p2, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    #@8
    .line 3135
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    #@a
    iput p3, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    #@c
    .line 3132
    return-void
.end method

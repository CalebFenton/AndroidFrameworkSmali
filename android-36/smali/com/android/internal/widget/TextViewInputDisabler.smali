.class public Lcom/android/internal/widget/TextViewInputDisabler;
.super Ljava/lang/Object;
.source "TextViewInputDisabler.java"


# instance fields
.field private blacklist mDefaultFilters:[Landroid/text/InputFilter;

.field private blacklist mNoInputFilters:[Landroid/text/InputFilter;

.field private blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor greylist <init>(Landroid/widget/TextView;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/internal/widget/TextViewInputDisabler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/TextViewInputDisabler$1;-><init>(Lcom/android/internal/widget/TextViewInputDisabler;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    .line 44
    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    .line 46
    return-void
.end method


# virtual methods
.method public greylist setInputEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 51
    return-void
.end method

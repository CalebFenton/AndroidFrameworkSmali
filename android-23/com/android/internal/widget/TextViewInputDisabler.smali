.class public Lcom/android/internal/widget/TextViewInputDisabler;
.super Ljava/lang/Object;
.source "TextViewInputDisabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/TextViewInputDisabler$1;
    }
.end annotation


# instance fields
.field private mDefaultFilters:[Landroid/text/InputFilter;

.field private mNoInputFilters:[Landroid/text/InputFilter;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [Landroid/text/InputFilter;

    #@6
    .line 32
    new-instance v1, Lcom/android/internal/widget/TextViewInputDisabler$1;

    #@8
    invoke-direct {v1, p0}, Lcom/android/internal/widget/TextViewInputDisabler$1;-><init>(Lcom/android/internal/widget/TextViewInputDisabler;)V

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    .line 31
    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    #@10
    .line 42
    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    #@12
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    #@1a
    .line 41
    return-void
.end method


# virtual methods
.method public setInputEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    #@2
    if-eqz p1, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    #@6
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    #@9
    .line 46
    return-void

    #@a
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    #@c
    goto :goto_0
.end method

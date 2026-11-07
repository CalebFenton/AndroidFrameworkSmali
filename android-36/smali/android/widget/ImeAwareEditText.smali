.class public Landroid/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field private blacklist mHasPendingShowSoftInputRequest:Z

.field final blacklist mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$niL20ozaIPzxaXBJE8_tVpamRQI(Landroid/widget/ImeAwareEditText;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/ImeAwareEditText;->lambda$new$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/ImeAwareEditText$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImeAwareEditText;)V

    iput-object v0, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/widget/ImeAwareEditText;->showSoftInputIfNecessary()V

    return-void
.end method

.method private blacklist showSoftInputIfNecessary()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_17

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 77
    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 79
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 64
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 65
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_12

    .line 66
    iget-object v1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 67
    iget-object v1, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_12
    return-object v0
.end method

.method public blacklist scheduleShowSoftInput()V
    .registers 4

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 87
    iget-object v2, p0, Landroid/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 88
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 89
    return-void

    .line 94
    :cond_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    .line 95
    return-void
.end method

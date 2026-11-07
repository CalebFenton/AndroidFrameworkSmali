.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private greylist-max-o mHasPendingShowSoftInputRequest:Z

.field final greylist-max-o mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

.field private greylist-max-o mSearchView:Landroid/widget/SearchView;

.field private greylist-max-o mThreshold:I


# direct methods
.method public static synthetic blacklist $r8$lambda$_jWuJvAwTxW0h21PwLOKu5gMM6U(Landroid/widget/SearchView$SearchAutoComplete;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1944
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1941
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 1945
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1946
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1950
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1941
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 1951
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1952
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .line 1955
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1941
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 1956
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1957
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    .line 1961
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1941
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 1962
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1963
    return-void
.end method

.method private greylist-max-o getSearchViewTextMinWidthDp()I
    .registers 6

    .line 2062
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2063
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2064
    .local v1, "width":I
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2065
    .local v2, "height":I
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2066
    .local v3, "orientation":I
    const/16 v4, 0x3c0

    if-lt v1, v4, :cond_1c

    const/16 v4, 0x2d0

    if-lt v2, v4, :cond_1c

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2068
    const/16 v4, 0x100

    return v4

    .line 2069
    :cond_1c
    const/16 v4, 0x258

    if-ge v1, v4, :cond_2c

    const/16 v4, 0x280

    if-lt v1, v4, :cond_29

    const/16 v4, 0x1e0

    if-lt v2, v4, :cond_29

    goto :goto_2c

    .line 2072
    :cond_29
    const/16 v4, 0xa0

    return v4

    .line 2070
    :cond_2c
    :goto_2c
    const/16 v4, 0xc0

    return v4
.end method

.method private greylist-max-o isEmpty()Z
    .registers 2

    .line 1987
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 1

    .line 1941
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->showSoftInputIfNecessary()V

    return-void
.end method

.method private greylist-max-o setImeVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .line 2104
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2105
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    if-nez p1, :cond_1e

    .line 2106
    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2107
    iget-object v2, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2108
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2109
    return-void

    .line 2112
    :cond_1e
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->hasActiveInputConnection(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2115
    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2116
    iget-object v2, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2117
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2118
    return-void

    .line 2123
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2124
    return-void
.end method

.method private greylist-max-o showSoftInputIfNecessary()V
    .registers 3

    .line 2095
    iget-boolean v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_17

    .line 2096
    nop

    .line 2097
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2098
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2099
    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2101
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 2091
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist enoughToFilter()Z
    .registers 2

    .line 2042
    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_d

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 2081
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2082
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_12

    .line 2083
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2084
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    .line 2086
    :cond_12
    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 1967
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    .line 1968
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1969
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 1970
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v1

    int-to-float v1, v1

    .line 1969
    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 1971
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2032
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2033
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    .line 2034
    return-void
.end method

.method public whitelist onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2047
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2048
    .local v0, "consume":Z
    if-eqz v0, :cond_14

    const/4 v1, 0x4

    if-ne p1, v1, :cond_14

    .line 2049
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 2053
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 2055
    :cond_14
    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .line 2014
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 2016
    if-eqz p1, :cond_23

    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 2021
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2024
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2025
    invoke-virtual {p0, v0}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 2028
    :cond_23
    return-void
.end method

.method public whitelist performCompletion()V
    .registers 1

    .line 2006
    return-void
.end method

.method protected whitelist replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1996
    return-void
.end method

.method greylist-max-o setSearchView(Landroid/widget/SearchView;)V
    .registers 2
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .line 1974
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    .line 1975
    return-void
.end method

.method public whitelist setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .line 1979
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1980
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 1981
    return-void
.end method

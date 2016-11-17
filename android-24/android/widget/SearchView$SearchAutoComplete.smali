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
.field private mSearchView:Landroid/widget/SearchView;

.field private mThreshold:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1912
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 1913
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1911
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1917
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1918
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1916
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    #@0
    .prologue
    .line 1922
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 1923
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1921
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 1928
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 1929
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1927
    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 5

    #@0
    .prologue
    .line 2040
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    .line 2041
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@a
    .line 2042
    .local v3, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@c
    .line 2043
    .local v1, "height":I
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    #@e
    .line 2044
    .local v2, "orientation":I
    const/16 v4, 0x3c0

    #@10
    if-lt v3, v4, :cond_0

    #@12
    const/16 v4, 0x2d0

    #@14
    if-lt v1, v4, :cond_0

    #@16
    .line 2045
    const/4 v4, 0x2

    #@17
    if-ne v2, v4, :cond_0

    #@19
    .line 2046
    const/16 v4, 0x100

    #@1b
    return v4

    #@1c
    .line 2047
    :cond_0
    const/16 v4, 0x258

    #@1e
    if-ge v3, v4, :cond_1

    #@20
    const/16 v4, 0x280

    #@22
    if-lt v3, v4, :cond_2

    #@24
    const/16 v4, 0x1e0

    #@26
    if-lt v1, v4, :cond_2

    #@28
    .line 2048
    :cond_1
    const/16 v4, 0xc0

    #@2a
    return v4

    #@2b
    .line 2050
    :cond_2
    const/16 v4, 0xa0

    #@2d
    return v4
.end method

.method private isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1954
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    #@0
    .prologue
    .line 2007
    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@2
    if-lez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    .line 1934
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    #@3
    .line 1935
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@a
    move-result-object v0

    #@b
    .line 1937
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    #@e
    move-result v1

    #@f
    int-to-float v1, v1

    #@10
    .line 1936
    const/4 v2, 0x1

    #@11
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@14
    move-result v1

    #@15
    float-to-int v1, v1

    #@16
    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    #@19
    .line 1933
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1997
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1998
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@5
    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    #@8
    .line 1996
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2012
    const/4 v1, 0x4

    #@3
    if-ne p1, v1, :cond_3

    #@5
    .line 2015
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_1

    #@b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 2016
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@14
    move-result-object v0

    #@15
    .line 2017
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    #@17
    .line 2018
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@1a
    .line 2020
    :cond_0
    return v3

    #@1b
    .line 2021
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@1e
    move-result v1

    #@1f
    if-ne v1, v3, :cond_3

    #@21
    .line 2022
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@24
    move-result-object v0

    #@25
    .line 2023
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    #@27
    .line 2024
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@2a
    .line 2026
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 2033
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    #@39
    move-result v1

    #@3a
    return v1

    #@3b
    .line 2027
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@3d
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    #@40
    .line 2028
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@42
    invoke-static {v1, v2}, Landroid/widget/SearchView;->-wrap11(Landroid/widget/SearchView;Z)V

    #@45
    .line 2029
    return v3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1981
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    #@4
    .line 1983
    if-eqz p1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@8
    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getVisibility()I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1985
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    #@1a
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@20
    .line 1986
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@23
    .line 1989
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@26
    move-result-object v1

    #@27
    invoke-static {v1}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 1990
    const/4 v1, 0x1

    #@2e
    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    #@31
    .line 1980
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    #@0
    .prologue
    .line 1972
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1962
    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    #@0
    .prologue
    .line 1941
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@2
    .line 1940
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    #@0
    .prologue
    .line 1946
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    #@3
    .line 1947
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@5
    .line 1945
    return-void
.end method

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
    .line 1699
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    #@3
    .line 1700
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1698
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1704
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1705
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1703
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    #@0
    .prologue
    .line 1709
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 1710
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1708
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
    .line 1715
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 1716
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@9
    .line 1714
    return-void
.end method

.method private isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1733
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
    .line 1786
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

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1776
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1777
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@5
    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    #@8
    .line 1775
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
    .line 1791
    const/4 v1, 0x4

    #@3
    if-ne p1, v1, :cond_3

    #@5
    .line 1794
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
    .line 1795
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@14
    move-result-object v0

    #@15
    .line 1796
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    #@17
    .line 1797
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@1a
    .line 1799
    :cond_0
    return v3

    #@1b
    .line 1800
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    #@1e
    move-result v1

    #@1f
    if-ne v1, v3, :cond_3

    #@21
    .line 1801
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@24
    move-result-object v0

    #@25
    .line 1802
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    #@27
    .line 1803
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@2a
    .line 1805
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
    .line 1812
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    #@39
    move-result v1

    #@3a
    return v1

    #@3b
    .line 1806
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@3d
    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    #@40
    .line 1807
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@42
    invoke-static {v1, v2}, Landroid/widget/SearchView;->-wrap11(Landroid/widget/SearchView;Z)V

    #@45
    .line 1808
    return v3
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1760
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    #@4
    .line 1762
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
    .line 1763
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@17
    move-result-object v1

    #@18
    .line 1764
    const-string/jumbo v2, "input_method"

    #@1b
    .line 1763
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@21
    .line 1765
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@24
    .line 1768
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    .line 1769
    const/4 v1, 0x1

    #@2f
    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    #@32
    .line 1759
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    #@0
    .prologue
    .line 1751
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1741
    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    #@0
    .prologue
    .line 1720
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    #@2
    .line 1719
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    #@0
    .prologue
    .line 1725
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    #@3
    .line 1726
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    #@5
    .line 1724
    return-void
.end method

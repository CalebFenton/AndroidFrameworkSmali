.class public Landroid/webkit/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    #@a
    .line 276
    new-instance v0, Landroid/graphics/Point;

    #@c
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@f
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    #@11
    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@14
    move-result-object v0

    #@15
    .line 56
    const v1, 0x1090108

    #@18
    const/4 v2, 0x0

    #@19
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    #@1f
    .line 57
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    #@21
    .line 58
    const v1, 0x1020003

    #@24
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/widget/EditText;

    #@2a
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@2c
    .line 59
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@2e
    new-instance v1, Landroid/webkit/FindActionModeCallback$NoAction;

    #@30
    invoke-direct {v1}, Landroid/webkit/FindActionModeCallback$NoAction;-><init>()V

    #@33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    #@36
    .line 60
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@38
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3b
    .line 61
    const-string/jumbo v0, ""

    #@3e
    invoke-virtual {p0, v0}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    #@41
    .line 62
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    #@43
    .line 63
    const v1, 0x1020448

    #@46
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Landroid/widget/TextView;

    #@4c
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@4e
    .line 64
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    #@50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@56
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    #@58
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5b
    move-result-object v0

    #@5c
    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    #@5e
    .line 54
    return-void
.end method

.method private findNext(Z)V
    .locals 2
    .param p1, "next"    # Z

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 117
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    .line 118
    const-string/jumbo v1, "No WebView for FindActionModeCallback::findNext"

    #@9
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 120
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 121
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    #@14
    .line 122
    return-void

    #@15
    .line 124
    :cond_1
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@17
    if-nez v0, :cond_2

    #@19
    .line 127
    return-void

    #@1a
    .line 129
    :cond_2
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@1c
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    #@1f
    .line 130
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    #@22
    .line 115
    return-void
.end method

.method private updateMatchesString()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 177
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 178
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@7
    const v1, 0x104047f

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    #@d
    .line 184
    :goto_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@f
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    #@12
    .line 176
    return-void

    #@13
    .line 180
    :cond_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@15
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    #@17
    .line 181
    iget v2, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@19
    .line 180
    const/4 v3, 0x2

    #@1a
    new-array v3, v3, [Ljava/lang/Object;

    #@1c
    .line 182
    iget v4, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    #@1e
    add-int/lit8 v4, v4, 0x1

    #@20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v4

    #@24
    aput-object v4, v3, v6

    #@26
    iget v4, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    const/4 v5, 0x1

    #@2d
    aput-object v4, v3, v5

    #@2f
    .line 181
    const v4, 0x1140019

    #@32
    .line 180
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@39
    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 271
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 258
    return-void
.end method

.method public findAll()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 137
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 138
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    .line 139
    const-string/jumbo v2, "No WebView for FindActionModeCallback::findAll"

    #@b
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@e
    throw v1

    #@f
    .line 141
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@14
    move-result-object v0

    #@15
    .line 142
    .local v0, "find":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 143
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@1d
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    #@20
    .line 144
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@22
    const/16 v2, 0x8

    #@24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@27
    .line 145
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    #@29
    .line 146
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@2b
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    #@2e
    .line 136
    :goto_0
    return-void

    #@2f
    .line 148
    :cond_1
    const/4 v1, 0x1

    #@30
    iput-boolean v1, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    #@32
    .line 149
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@34
    const/4 v2, 0x4

    #@35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@38
    .line 150
    iput v3, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@3a
    .line 151
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@3c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    #@43
    goto :goto_0
.end method

.method public finish()V
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    #@2
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    #@5
    .line 68
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    #@0
    .prologue
    .line 278
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 279
    const/4 v1, 0x0

    #@5
    return v1

    #@6
    .line 281
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    #@8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/View;

    #@e
    .line 282
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    #@10
    .line 283
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    #@12
    .line 285
    :cond_1
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    #@14
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@19
    .line 286
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    #@1b
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@1d
    return v1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 234
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 235
    new-instance v0, Ljava/lang/AssertionError;

    #@8
    .line 236
    const-string/jumbo v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    #@b
    .line 235
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@e
    throw v0

    #@f
    .line 238
    :cond_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    #@11
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@13
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1a
    .line 239
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    #@1d
    move-result v0

    #@1e
    packed-switch v0, :pswitch_data_0

    #@21
    .line 247
    return v2

    #@22
    .line 241
    :pswitch_0
    invoke-direct {p0, v2}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    #@25
    .line 249
    :goto_0
    return v3

    #@26
    .line 244
    :pswitch_1
    invoke-direct {p0, v3}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    #@29
    goto :goto_0

    #@2a
    .line 239
    :pswitch_data_0
    .packed-switch 0x1020461
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 191
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    #@4
    .line 190
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 198
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 203
    return v3

    #@8
    .line 206
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    #@a
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    #@d
    .line 207
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    #@10
    move-result-object v1

    #@11
    const v2, 0x1150002

    #@14
    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    #@17
    .line 209
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    #@19
    .line 210
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@1b
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@1e
    move-result-object v0

    #@1f
    .line 211
    .local v0, "edit":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@22
    move-result v1

    #@23
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@26
    .line 212
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@28
    const/16 v2, 0x8

    #@2a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    #@2d
    .line 213
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    #@2f
    .line 214
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@31
    const-string/jumbo v2, "0"

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@37
    .line 215
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@39
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@3c
    .line 216
    const/4 v1, 0x1

    #@3d
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 221
    iput-object v1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    #@3
    .line 222
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@5
    invoke-virtual {v0}, Landroid/webkit/WebView;->notifyFindDialogDismissed()V

    #@8
    .line 223
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@a
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V

    #@d
    .line 224
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    #@f
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@11
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@19
    .line 220
    return-void
.end method

.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    if-eqz p3, :cond_1

    #@3
    .line 106
    if-nez p2, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    #@9
    .line 104
    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 229
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    #@3
    .line 266
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 77
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@3
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@6
    .line 78
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@8
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@b
    move-result-object v1

    #@c
    .line 79
    .local v1, "span":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    #@f
    move-result v0

    #@10
    .line 83
    .local v0, "length":I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@13
    .line 86
    const/16 v2, 0x12

    #@15
    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    #@18
    .line 87
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    #@1a
    .line 76
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    #@0
    .prologue
    .line 94
    if-nez p1, :cond_0

    #@2
    .line 95
    new-instance v0, Ljava/lang/AssertionError;

    #@4
    const-string/jumbo v1, "WebView supplied to FindActionModeCallback cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@a
    throw v0

    #@b
    .line 98
    :cond_0
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@d
    .line 99
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    #@f
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V

    #@12
    .line 93
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 157
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    #@a
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@10
    .line 155
    :cond_0
    return-void
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .param p1, "matchIndex"    # I
    .param p2, "matchCount"    # I
    .param p3, "isEmptyFind"    # Z

    #@0
    .prologue
    .line 162
    if-nez p3, :cond_0

    #@2
    .line 163
    iput p2, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@4
    .line 164
    iput p1, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    #@6
    .line 165
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    #@9
    .line 161
    :goto_0
    return-void

    #@a
    .line 167
    :cond_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    #@c
    const/16 v1, 0x8

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@11
    .line 168
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    #@14
    goto :goto_0
.end method

.class public Landroid/webkit/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private greylist-max-o mActionMode:Landroid/view/ActionMode;

.field private greylist-max-o mActiveMatchIndex:I

.field private greylist-max-o mCustomView:Landroid/view/View;

.field private greylist-max-o mEditText:Landroid/widget/EditText;

.field private greylist-max-o mGlobalVisibleOffset:Landroid/graphics/Point;

.field private greylist-max-o mGlobalVisibleRect:Landroid/graphics/Rect;

.field private greylist-max-o mInput:Landroid/view/inputmethod/InputMethodManager;

.field private greylist-max-o mMatches:Landroid/widget/TextView;

.field private greylist-max-o mMatchesFound:Z

.field private greylist-max-o mNumberOfMatches:I

.field private greylist-max-o mResources:Landroid/content/res/Resources;

.field private greylist-max-o mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 290
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090180

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/webkit/FindActionModeCallback$NoAction;

    invoke-direct {v1}, Landroid/webkit/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 67
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 71
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 73
    return-void
.end method

.method private greylist-max-o findNext(Z)V
    .registers 4
    .param p1, "next"    # Z

    .line 125
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1a

    .line 129
    iget-boolean v0, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_c

    .line 130
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 131
    return-void

    .line 133
    :cond_c
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-nez v0, :cond_11

    .line 136
    return-void

    .line 138
    :cond_11
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 139
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    .line 140
    return-void

    .line 126
    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private greylist-max-o updateMatchesString()V
    .registers 5

    .line 186
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-nez v0, :cond_d

    .line 187
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const v1, 0x10406ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_39

    .line 189
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v1, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget v1, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "total"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const v3, 0x10405de

    invoke-static {v2, v0, v3}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .end local v0    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_39
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 287
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 274
    return-void
.end method

.method public whitelist findAll()V
    .registers 5

    .line 146
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3b

    .line 150
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 151
    .local v0, "find":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 152
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    .line 153
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iput-boolean v2, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 155
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto :goto_3a

    .line 157
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 158
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iput v2, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 160
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    .line 162
    :goto_3a
    return-void

    .line 147
    .end local v0    # "find":Ljava/lang/CharSequence;
    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist finish()V
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 77
    return-void
.end method

.method public whitelist getActionModeGlobalBottom()I
    .registers 4

    .line 292
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_6

    .line 293
    const/4 v0, 0x0

    return v0

    .line 295
    :cond_6
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 296
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_12

    .line 297
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 299
    :cond_12
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 300
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    return v1
.end method

.method public whitelist onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 248
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_22

    .line 252
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 253
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    .line 261
    return v2

    .line 255
    :pswitch_19
    invoke-direct {p0, v2}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    .line 256
    goto :goto_21

    .line 258
    :pswitch_1d
    invoke-direct {p0, v1}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    .line 259
    nop

    .line 263
    :goto_21
    return v1

    .line 249
    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_2a
    .packed-switch 0x102030d
        :pswitch_1d
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    .line 206
    return-void
.end method

.method public whitelist onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 212
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 217
    return v1

    .line 220
    :cond_8
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 221
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x1140002

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 224
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 225
    .local v0, "edit":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 226
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iput-boolean v1, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 228
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 230
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 236
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->notifyFindDialogDismissed()V

    .line 237
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 238
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 239
    return-void
.end method

.method public whitelist onFindResultReceived(IIZ)V
    .registers 5
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .line 114
    if-eqz p3, :cond_a

    .line 115
    if-nez p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 117
    :cond_a
    return-void
.end method

.method public whitelist onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 281
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 282
    return-void
.end method

.method public whitelist setText(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 86
    .local v0, "span":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 90
    .local v1, "length":I
    invoke-static {v0, v1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 93
    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 94
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 95
    return-void
.end method

.method public whitelist setWebView(Landroid/webkit/WebView;)V
    .registers 4
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 103
    if-eqz p1, :cond_a

    .line 107
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    .line 108
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 109
    return-void

    .line 104
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist showSoftInput()V
    .registers 4

    .line 165
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 166
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 168
    :cond_10
    return-void
.end method

.method public whitelist updateMatchCount(IIZ)V
    .registers 6
    .param p1, "matchIndex"    # I
    .param p2, "matchCount"    # I
    .param p3, "isEmptyFind"    # Z

    .line 171
    if-nez p3, :cond_a

    .line 172
    iput p2, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 173
    iput p1, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    .line 174
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    goto :goto_14

    .line 176
    :cond_a
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 179
    :goto_14
    return-void
.end method

.class public Landroid/webkit/WebViewFragment;
.super Landroid/app/Fragment;
.source "WebViewFragment.java"


# instance fields
.field private mIsWebViewAvailable:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/webkit/WebViewFragment;->mIsWebViewAvailable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 45
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@6
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    #@9
    .line 47
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    #@b
    invoke-virtual {p0}, Landroid/webkit/WebViewFragment;->getActivity()Landroid/app/Activity;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@14
    .line 48
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/webkit/WebViewFragment;->mIsWebViewAvailable:Z

    #@17
    .line 49
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@19
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 86
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@7
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    #@a
    .line 87
    iput-object v1, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@c
    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    #@f
    .line 84
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/webkit/WebViewFragment;->mIsWebViewAvailable:Z

    #@3
    .line 77
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    #@6
    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    #@3
    .line 58
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    #@8
    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    #@2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    #@5
    .line 67
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    #@8
    .line 65
    return-void
.end method

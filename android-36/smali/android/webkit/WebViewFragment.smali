.class public Landroid/webkit/WebViewFragment;
.super Landroid/app/Fragment;
.source "WebViewFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mIsWebViewAvailable:Z

.field private greylist-max-o mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 99
    iget-boolean v0, p0, Landroid/webkit/WebViewFragment;->mIsWebViewAvailable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public whitelist onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 50
    :cond_9
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewFragment;->mIsWebViewAvailable:Z

    .line 52
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 92
    :cond_c
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 93
    return-void
.end method

.method public whitelist onDestroyView()V
    .registers 2

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewFragment;->mIsWebViewAvailable:Z

    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 81
    return-void
.end method

.method public whitelist onPause()V
    .registers 2

    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 61
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 62
    return-void
.end method

.method public whitelist onResume()V
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/webkit/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 70
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 71
    return-void
.end method

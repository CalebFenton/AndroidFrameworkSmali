.class public Landroid/webkit/WebView$WebViewTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewTransport"
.end annotation


# instance fields
.field private greylist-max-o mWebview:Landroid/webkit/WebView;


# direct methods
.method public constructor whitelist <init>(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist getWebView()Landroid/webkit/WebView;
    .registers 2

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 149
    .end local p0    # "this":Landroid/webkit/WebView$WebViewTransport;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized whitelist setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .param p1, "webview"    # Landroid/webkit/WebView;

    monitor-enter p0

    .line 139
    :try_start_1
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 140
    monitor-exit p0

    return-void

    .line 138
    .end local p0    # "this":Landroid/webkit/WebView$WebViewTransport;
    .end local p1    # "webview":Landroid/webkit/WebView;
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

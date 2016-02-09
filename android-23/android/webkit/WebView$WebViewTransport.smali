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
.field private mWebview:Landroid/webkit/WebView;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/WebView;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public declared-synchronized getWebView()Landroid/webkit/WebView;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 332
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "webview"    # Landroid/webkit/WebView;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 323
    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebView$WebViewTransport;->mWebview:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 322
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

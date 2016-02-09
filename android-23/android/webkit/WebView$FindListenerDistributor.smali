.class Landroid/webkit/WebView$FindListenerDistributor;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebView$FindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindListenerDistributor"
.end annotation


# instance fields
.field private mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

.field private mUserFindListener:Landroid/webkit/WebView$FindListener;

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method static synthetic -set0(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/WebView;

    #@0
    .prologue
    .line 2240
    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->this$0:Landroid/webkit/WebView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$FindListenerDistributor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/webkit/WebView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;)V

    #@3
    return-void
.end method


# virtual methods
.method public onFindResultReceived(IIZ)V
    .locals 1
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    #@0
    .prologue
    .line 2247
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2248
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    #@6
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    #@9
    .line 2252
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 2253
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    #@f
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    #@12
    .line 2246
    :cond_1
    return-void
.end method

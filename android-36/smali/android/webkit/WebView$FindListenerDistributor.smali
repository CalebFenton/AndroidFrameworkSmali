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
.field private greylist-max-o mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

.field private greylist-max-o mUserFindListener:Landroid/webkit/WebView$FindListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmFindDialogFindListener(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)V
    .registers 2

    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserFindListener(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)V
    .registers 2

    iput-object p1, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/webkit/WebView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/webkit/WebView;Landroid/webkit/WebView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public whitelist onFindResultReceived(IIZ)V
    .registers 5
    .param p1, "activeMatchOrdinal"    # I
    .param p2, "numberOfMatches"    # I
    .param p3, "isDoneCounting"    # Z

    .line 2613
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    if-eqz v0, :cond_9

    .line 2614
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 2618
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    if-eqz v0, :cond_12

    .line 2619
    iget-object v0, p0, Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    .line 2622
    :cond_12
    return-void
.end method

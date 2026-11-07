.class Landroid/webkit/WebViewDelegate$1;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewDelegate;->setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/webkit/WebViewDelegate;

.field final synthetic blacklist val$listener:Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;


# direct methods
.method constructor blacklist <init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/webkit/WebViewDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Landroid/webkit/WebViewDelegate$1;->this$0:Landroid/webkit/WebViewDelegate;

    iput-object p2, p0, Landroid/webkit/WebViewDelegate$1;->val$listener:Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewDelegate$1;->val$listener:Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;

    iget-object v1, p0, Landroid/webkit/WebViewDelegate$1;->this$0:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v1}, Landroid/webkit/WebViewDelegate;->isTraceTagEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;->onTraceEnabledChange(Z)V

    .line 67
    return-void
.end method

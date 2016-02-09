.class final Landroid/webkit/WebViewFactory$1;
.super Ljava/lang/Object;
.source "WebViewFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$abi:Ljava/lang/String;

.field final synthetic val$is64Bit:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "val$abi"    # Ljava/lang/String;
    .param p2, "val$is64Bit"    # Z

    #@0
    .prologue
    .line 431
    iput-object p1, p0, Landroid/webkit/WebViewFactory$1;->val$abi:Ljava/lang/String;

    #@2
    iput-boolean p2, p0, Landroid/webkit/WebViewFactory$1;->val$is64Bit:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 435
    :try_start_0
    const-string/jumbo v1, "WebViewFactory"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "relro file creator for "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Landroid/webkit/WebViewFactory$1;->val$abi:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " crashed. Proceeding without"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 436
    invoke-static {}, Landroid/webkit/WebViewFactory;->-wrap0()Landroid/webkit/IWebViewUpdateService;

    #@26
    move-result-object v1

    #@27
    iget-boolean v2, p0, Landroid/webkit/WebViewFactory$1;->val$is64Bit:Z

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-interface {v1, v2, v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 433
    :goto_0
    return-void

    #@2e
    .line 437
    :catch_0
    move-exception v0

    #@2f
    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WebViewFactory"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "Cannot reach WebViewUpdateService. "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    goto :goto_0
.end method

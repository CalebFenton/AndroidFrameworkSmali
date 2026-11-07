.class Lcom/android/internal/os/WebViewZygoteInit;
.super Ljava/lang/Object;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;,
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "WebViewZygoteInit"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .registers 3
    .param p0, "argv"    # [Ljava/lang/String;

    .line 120
    const-string v0, "WebViewZygoteInit"

    const-string v1, "Starting WebViewZygoteInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>(Lcom/android/internal/os/WebViewZygoteInit-IA;)V

    .line 122
    .local v0, "server":Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
    invoke-static {v0, p0}, Lcom/android/internal/os/ChildZygoteInit;->runZygoteServer(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)V

    .line 123
    return-void
.end method

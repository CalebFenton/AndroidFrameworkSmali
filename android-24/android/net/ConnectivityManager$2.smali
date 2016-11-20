.class Landroid/net/ConnectivityManager$2;
.super Landroid/os/ResultReceiver;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    #@0
    .prologue
    .line 2023
    iput-object p1, p0, Landroid/net/ConnectivityManager$2;->this$0:Landroid/net/ConnectivityManager;

    #@2
    iput-object p3, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    #@4
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@7
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2026
    if-nez p1, :cond_0

    #@2
    .line 2027
    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    #@4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    #@7
    .line 2025
    :goto_0
    return-void

    #@8
    .line 2029
    :cond_0
    iget-object v0, p0, Landroid/net/ConnectivityManager$2;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    #@a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    #@d
    goto :goto_0
.end method

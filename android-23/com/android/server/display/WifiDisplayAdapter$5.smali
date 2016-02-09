.class Lcom/android/server/display/WifiDisplayAdapter$5;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@2
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 172
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$5;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #@a
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get4(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    #@11
    .line 170
    :cond_0
    return-void
.end method

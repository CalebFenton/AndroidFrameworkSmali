.class Lcom/android/server/ConnectivityService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    #@0
    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    #@0
    .prologue
    .line 1263
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 1264
    .local v0, "deviceType":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService$1;->this$0:Lcom/android/server/ConnectivityService;

    #@6
    invoke-static {v1, v0, p2, p3, p4}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;IZJ)V

    #@9
    .line 1262
    return-void
.end method

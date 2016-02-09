.class Lcom/android/server/wifi/WifiLogger$1;
.super Ljava/lang/Object;
.source "WifiLogger.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiLogger;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiLogger;

    #@0
    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/wifi/WifiLogger$1;->this$0:Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 1
    .param p1, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p2, "buffer"    # [B

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$1;->this$0:Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiLogger;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    #@5
    .line 271
    return-void
.end method

.method public onWifiAlert(I[B)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "buffer"    # [B

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$1;->this$0:Lcom/android/server/wifi/WifiLogger;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiLogger;->onWifiAlert(I[B)V

    #@5
    .line 276
    return-void
.end method

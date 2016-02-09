.class Lcom/android/server/wifi/WifiController$3;
.super Landroid/database/ContentObserver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;->registerForWifiIdleTimeChange(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$3;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$3;->this$0:Lcom/android/server/wifi/WifiController;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap7(Lcom/android/server/wifi/WifiController;)V

    #@5
    .line 257
    return-void
.end method

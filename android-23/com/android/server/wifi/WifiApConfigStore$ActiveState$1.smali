.class Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;
.super Ljava/lang/Object;
.source "WifiApConfigStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore$ActiveState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@4
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    #@6
    iget-object v1, v1, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@8
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->-get3(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->-wrap2(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V

    #@f
    .line 136
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;->this$1:Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    #@11
    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    #@13
    const v1, 0x2001a

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(I)V

    #@19
    .line 134
    return-void
.end method

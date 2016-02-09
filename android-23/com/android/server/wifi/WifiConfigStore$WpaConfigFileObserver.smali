.class Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
.super Landroid/os/FileObserver;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpaConfigFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;

    #@0
    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    .line 707
    const-string/jumbo v0, "/data/misc/wifi/wpa_supplicant.conf"

    #@5
    const/16 v1, 0x8

    #@7
    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@a
    .line 706
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 712
    const/16 v1, 0x8

    #@2
    if-ne p1, v1, :cond_0

    #@4
    .line 713
    new-instance v0, Ljava/io/File;

    #@6
    const-string/jumbo v1, "/data/misc/wifi/wpa_supplicant.conf"

    #@9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    .line 714
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiConfigStore;->-get0()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "wpa_supplicant.conf changed; new size = "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0}, Ljava/io/File;->length()J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->-wrap1(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V

    #@2f
    .line 711
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

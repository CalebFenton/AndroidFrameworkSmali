.class Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
.super Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    .line 1762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5
    move-result v2

    #@6
    const/4 v5, 0x0

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    #@e
    .line 1761
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 1766
    const-string/jumbo v1, "WifiService"

    #@3
    const-string/jumbo v2, "Multicaster binderDied"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1767
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@b
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get5(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    monitor-enter v2

    #@10
    .line 1768
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@12
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get5(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    .line 1769
    .local v0, "i":I
    const/4 v1, -0x1

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 1770
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1f
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mMode:I

    #@21
    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap2(Lcom/android/server/wifi/WifiServiceImpl;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v2

    #@25
    .line 1765
    return-void

    #@26
    .line 1767
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 1780
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mMode:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Multicaster{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mTag:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " binder="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mBinder:Landroid/os/IBinder;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

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
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1800
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    .line 1801
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    #@5
    .line 1800
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    .line 1805
    const-string/jumbo v1, "WifiService"

    #@3
    const-string/jumbo v2, "Multicaster binderDied"

    #@6
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 1806
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@b
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    #@e
    move-result-object v2

    #@f
    monitor-enter v2

    #@10
    .line 1807
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@12
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    .line 1808
    .local v0, "i":I
    const/4 v1, -0x1

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 1809
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@1f
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mUid:I

    #@21
    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap1(Lcom/android/server/wifi/WifiServiceImpl;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_0
    monitor-exit v2

    #@25
    .line 1804
    return-void

    #@26
    .line 1806
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@27
    monitor-exit v2

    #@28
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1815
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
    const-string/jumbo v1, " uid="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->mUid:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

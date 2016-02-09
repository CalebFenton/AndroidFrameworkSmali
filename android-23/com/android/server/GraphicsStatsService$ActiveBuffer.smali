.class final Lcom/android/server/GraphicsStatsService$ActiveBuffer;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveBuffer"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPid:I

.field mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

.field mProcessBuffer:Landroid/os/MemoryFile;

.field final mToken:Landroid/os/IBinder;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/GraphicsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/GraphicsStatsService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x100

    #@2
    const/4 v3, 0x0

    #@3
    .line 215
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    #@5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 217
    iput p3, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    #@a
    .line 218
    iput p4, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    #@c
    .line 219
    iput-object p5, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    #@e
    .line 220
    iput-object p2, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    #@10
    .line 221
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    #@12
    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@15
    .line 222
    new-instance v0, Landroid/os/MemoryFile;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "GFXStats-"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    #@2e
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@30
    .line 223
    iget v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    #@32
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    #@34
    invoke-static {p1, v0, v1}, Lcom/android/server/GraphicsStatsService;->-wrap0(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@3a
    .line 224
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@3c
    if-eqz v0, :cond_0

    #@3e
    .line 225
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@40
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    #@42
    iget-object v1, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    #@44
    invoke-virtual {v0, v1, v3, v3, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    #@47
    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mToken:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 232
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->this$0:Lcom/android/server/GraphicsStatsService;

    #@8
    invoke-static {v0, p0}, Lcom/android/server/GraphicsStatsService;->-wrap1(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    #@b
    .line 230
    return-void
.end method

.method closeAllBuffers()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 236
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 237
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@7
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    #@a
    .line 238
    iput-object v1, p0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    #@c
    .line 235
    :cond_0
    return-void
.end method

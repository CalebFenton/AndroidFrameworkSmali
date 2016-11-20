.class abstract Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeathRecipient"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mTag:Ljava/lang/String;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1778
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    #@2
    .line 1779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1780
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mTag:Ljava/lang/String;

    #@7
    .line 1781
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mUid:I

    #@d
    .line 1782
    iput-object p3, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mBinder:Landroid/os/IBinder;

    #@f
    .line 1784
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mBinder:Landroid/os/IBinder;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1778
    :goto_0
    return-void

    #@16
    .line 1785
    :catch_0
    move-exception v0

    #@17
    .line 1786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->binderDied()V

    #@1a
    goto :goto_0
.end method


# virtual methods
.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 1795
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mUid:I

    #@2
    return v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    #@0
    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;->mBinder:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 1790
    return-void
.end method

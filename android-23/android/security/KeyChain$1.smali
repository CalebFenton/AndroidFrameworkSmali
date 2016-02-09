.class final Landroid/security/KeyChain$1;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1

    #@0
    .prologue
    .line 533
    .local p1, "val$q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    iput-object p1, p0, Landroid/security/KeyChain$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 534
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    #@8
    .line 533
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 536
    iget-boolean v1, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 537
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    #@7
    .line 539
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyChain$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    #@9
    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 535
    :cond_0
    :goto_0
    return-void

    #@11
    .line 540
    :catch_0
    move-exception v0

    #@12
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 545
    return-void
.end method

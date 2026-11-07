.class Landroid/security/KeyChain$1;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field volatile blacklist mConnectedAtLeastOnce:Z

.field final synthetic blacklist val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$keyChainService:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1090
    iput-object p1, p0, Landroid/security/KeyChain$1;->val$keyChainService:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Landroid/security/KeyChain$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1101
    iget-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_c

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 1103
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1105
    :cond_c
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1093
    iget-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    if-nez v0, :cond_19

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 1095
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$keyChainService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1096
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v1

    .line 1095
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1097
    iget-object v0, p0, Landroid/security/KeyChain$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1099
    :cond_19
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1106
    return-void
.end method

.class Landroid/os/storage/StorageManager$ObbListenerDelegate;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mObbEventListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/storage/OnObbStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final nonce:I

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    #@2
    return v0
.end method

.method constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/storage/StorageManager;
    .param p2, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    #@0
    .prologue
    .line 253
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->this$0:Landroid/os/storage/StorageManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 254
    invoke-static {p1}, Landroid/os/storage/StorageManager;->-wrap0(Landroid/os/storage/StorageManager;)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->nonce:I

    #@b
    .line 255
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@d
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@10
    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    #@12
    .line 256
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;

    #@14
    invoke-static {p1}, Landroid/os/storage/StorageManager;->-get0(Landroid/os/storage/StorageManager;)Landroid/os/Looper;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;-><init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;)V

    #@1b
    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    #@1d
    .line 253
    return-void
.end method


# virtual methods
.method getListener()Landroid/os/storage/OnObbStateChangeListener;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 270
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 271
    return-object v1

    #@6
    .line 273
    :cond_0
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mObbEventListenerRef:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/storage/OnObbStateChangeListener;

    #@e
    return-object v0
.end method

.method sendObbStateChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "state"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 277
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate;->mHandler:Landroid/os/Handler;

    #@3
    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 276
    return-void
.end method

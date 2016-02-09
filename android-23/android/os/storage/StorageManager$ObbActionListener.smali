.class Landroid/os/storage/StorageManager$ObbActionListener;
.super Landroid/os/storage/IObbActionListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionListener"
.end annotation


# instance fields
.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/storage/StorageManager$ObbListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/os/storage/StorageManager;

    #@0
    .prologue
    .line 210
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    #@2
    invoke-direct {p0}, Landroid/os/storage/IObbActionListener$Stub;-><init>()V

    #@5
    .line 212
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    #@c
    .line 210
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/storage/StorageManager;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;)V

    #@3
    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/storage/OnObbStateChangeListener;)I
    .locals 4
    .param p1, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    #@2
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V

    #@7
    .line 232
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    #@9
    monitor-enter v2

    #@a
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    #@c
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->-get0(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    #@f
    move-result v3

    #@10
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 236
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->-get0(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    #@17
    move-result v1

    #@18
    return v1

    #@19
    .line 232
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public onObbResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nonce"    # I
    .param p3, "status"    # I

    #@0
    .prologue
    .line 217
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    #@b
    .line 219
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    if-eqz v0, :cond_0

    #@d
    .line 220
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    #@f
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v2

    #@13
    .line 224
    if-eqz v0, :cond_1

    #@15
    .line 225
    invoke-virtual {v0, p1, p3}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->sendObbStateChanged(Ljava/lang/String;I)V

    #@18
    .line 215
    :cond_1
    return-void

    #@19
    .line 217
    .end local v0    # "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

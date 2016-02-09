.class public abstract Ljava/lang/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static disableIntrinsic:Z

.field private static slowPathEnabled:Z


# instance fields
.field public volatile pendingNext:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile queueNext:Ljava/lang/ref/Reference;

.field volatile referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 106
    sput-boolean v0, Ljava/lang/ref/Reference;->disableIntrinsic:Z

    #@3
    .line 114
    sput-boolean v0, Ljava/lang/ref/Reference;->slowPathEnabled:Z

    #@5
    .line 98
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    iput-object p1, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    #@5
    .line 157
    iput-object p2, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@7
    .line 155
    return-void
.end method

.method private final native getReferent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    #@3
    .line 164
    return-void
.end method

.method public enqueue()Z
    .locals 1

    #@0
    .prologue
    .line 193
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final declared-synchronized enqueueInternal()Z
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    monitor-enter p0

    #@1
    .line 177
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 178
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)V

    #@e
    .line 179
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 180
    const/4 v0, 0x1

    #@12
    monitor-exit p0

    #@13
    return v0

    #@14
    .line 182
    :cond_0
    const/4 v0, 0x0

    #@15
    monitor-exit p0

    #@16
    return v0

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;->getReferent()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isEnqueued()Z
    .locals 1

    #@0
    .prologue
    .line 223
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

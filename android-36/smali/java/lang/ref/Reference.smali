.class public abstract Ljava/lang/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ref/Reference$SinkHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static greylist-max-o disableIntrinsic:Z

.field private static greylist-max-o slowPathEnabled:Z


# instance fields
.field greylist-max-o pendingNext:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "*>;"
        }
    .end annotation
.end field

.field final greylist-max-o queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;"
        }
    .end annotation
.end field

.field greylist-max-o queueNext:Ljava/lang/ref/Reference;

.field volatile greylist referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Ljava/lang/ref/Reference;->disableIntrinsic:Z

    .line 64
    sput-boolean v0, Ljava/lang/ref/Reference;->slowPathEnabled:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 225
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 229
    iput-object p2, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 230
    return-void
.end method

.method private final native greylist-max-r getReferent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist test-api reachabilityFence(Ljava/lang/Object;)V
    .registers 2
    .param p0, "ref"    # Ljava/lang/Object;

    .line 351
    sput-object p0, Ljava/lang/ref/Reference$SinkHolder;->sink:Ljava/lang/Object;

    .line 356
    invoke-static {}, Ljava/lang/ref/Reference$SinkHolder;->-$$Nest$sfgetfinalize_count()I

    move-result v0

    if-nez v0, :cond_b

    .line 357
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/Reference$SinkHolder;->sink:Ljava/lang/Object;

    .line 359
    :cond_b
    return-void
.end method

.method private final native blacklist refersTo0(Ljava/lang/Object;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 142
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clearReferent()V

    .line 143
    return-void
.end method

.method native greylist-max-o clearReferent()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 218
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api enqueue()Z
    .registers 2

    .line 204
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;->getReferent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEnqueued()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 189
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->isEnqueued(Ljava/lang/ref/Reference;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final whitelist test-api refersTo(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 127
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/Reference;->refersTo0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

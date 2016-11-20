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
.field pendingNext:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field

.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;"
        }
    .end annotation
.end field

.field queueNext:Ljava/lang/ref/Reference;

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
    .line 47
    sput-boolean v0, Ljava/lang/ref/Reference;->disableIntrinsic:Z

    #@3
    .line 55
    sput-boolean v0, Ljava/lang/ref/Reference;->slowPathEnabled:Z

    #@5
    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@4
    .line 150
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
    .line 154
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 155
    iput-object p1, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    #@5
    .line 156
    iput-object p2, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@7
    .line 154
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
    .line 109
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    #@3
    .line 108
    return-void
.end method

.method public enqueue()Z
    .locals 1

    #@0
    .prologue
    .line 144
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@6
    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
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
    .line 96
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
    .line 129
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    #@6
    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->isEnqueued(Ljava/lang/ref/Reference;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

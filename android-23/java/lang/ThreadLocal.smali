.class public Ljava/lang/ThreadLocal;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$Values;
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
.field private static hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final hash:I

.field private final reference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/ThreadLocal;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/lang/ThreadLocal;->hash:I

    #@2
    return v0
.end method

.method static synthetic -get1(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6
    sput-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 40
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    .line 125
    iput-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    #@a
    .line 139
    sget-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    const v1, -0x3c6ef372

    #@f
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Ljava/lang/ThreadLocal;->hash:I

    #@15
    .line 40
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 54
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    #@7
    move-result-object v3

    #@8
    .line 55
    .local v3, "values":Ljava/lang/ThreadLocal$Values;
    if-eqz v3, :cond_0

    #@a
    .line 56
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->-get1(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    .line 57
    .local v2, "table":[Ljava/lang/Object;
    iget v4, p0, Ljava/lang/ThreadLocal;->hash:I

    #@10
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->-get0(Ljava/lang/ThreadLocal$Values;)I

    #@13
    move-result v5

    #@14
    and-int v1, v4, v5

    #@16
    .line 58
    .local v1, "index":I
    iget-object v4, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    #@18
    aget-object v5, v2, v1

    #@1a
    if-ne v4, v5, :cond_1

    #@1c
    .line 59
    add-int/lit8 v4, v1, 0x1

    #@1e
    aget-object v4, v2, v4

    #@20
    return-object v4

    #@21
    .line 62
    .end local v1    # "index":I
    .end local v2    # "table":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    #@24
    move-result-object v3

    #@25
    .line 65
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal$Values;->getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    return-object v4
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1
    .param p1, "current"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 114
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    new-instance v0, Ljava/lang/ThreadLocal$Values;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    #@5
    iput-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    #@7
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 103
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    #@7
    move-result-object v1

    #@8
    .line 105
    .local v1, "values":Ljava/lang/ThreadLocal$Values;
    if-eqz v1, :cond_0

    #@a
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal$Values;->remove(Ljava/lang/ThreadLocal;)V

    #@d
    .line 102
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    .line 87
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    #@7
    move-result-object v1

    #@8
    .line 88
    .local v1, "values":Ljava/lang/ThreadLocal$Values;
    if-nez v1, :cond_0

    #@a
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    #@d
    move-result-object v1

    #@e
    .line 91
    :cond_0
    invoke-virtual {v1, p0, p1}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    #@11
    .line 85
    return-void
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1
    .param p1, "current"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 121
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    #@2
    return-object v0
.end method

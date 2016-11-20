.class Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal$ThreadLocalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/ThreadLocal;",
        ">;"
    }
.end annotation


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/ThreadLocal;
    .param p2, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 276
    .local p0, "this":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;, "Ljava/lang/ThreadLocal<TT;>.ThreadLocalMap.Entry;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@3
    .line 277
    iput-object p2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    #@5
    .line 275
    return-void
.end method

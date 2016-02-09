.class public Ljava/lang/InheritableThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "InheritableThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ThreadLocal",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TT;"
    return-object p1
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1
    .param p1, "current"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 60
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    new-instance v0, Ljava/lang/ThreadLocal$Values;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    #@5
    iput-object v0, p1, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    #@7
    return-object v0
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .locals 1
    .param p1, "current"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 55
    .local p0, "this":Ljava/lang/InheritableThreadLocal;, "Ljava/lang/InheritableThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    #@2
    return-object v0
.end method

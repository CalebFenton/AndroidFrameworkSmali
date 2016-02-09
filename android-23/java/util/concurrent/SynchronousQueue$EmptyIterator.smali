.class Ljava/util/concurrent/SynchronousQueue$EmptyIterator;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY_ITERATOR:Ljava/util/concurrent/SynchronousQueue$EmptyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue$EmptyIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1045
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;-><init>()V

    #@5
    .line 1044
    sput-object v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    #@7
    .line 1043
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1043
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue<TE;>.EmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1047
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue<TE;>.EmptyIterator<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1048
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue<TE;>.EmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@5
    throw v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 1049
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$EmptyIterator;, "Ljava/util/concurrent/SynchronousQueue<TE;>.EmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@5
    throw v0
.end method

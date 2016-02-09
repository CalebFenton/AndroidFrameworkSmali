.class Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 181
    const-class v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@8
    .line 182
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 183
    const-string/jumbo v3, "item"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 182
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->itemOffset:J

    #@17
    .line 184
    sget-object v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@19
    .line 185
    const-string/jumbo v3, "next"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v3

    #@20
    .line 184
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v2

    #@24
    sput-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 148
    return-void

    #@27
    .line 186
    :catch_0
    move-exception v0

    #@28
    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@2a
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 156
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Node<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 157
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@5
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->itemOffset:J

    #@7
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@a
    .line 156
    return-void
.end method


# virtual methods
.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Node<TE;>;"
    .local p1, "cmp":Ljava/lang/Object;, "TE;"
    .local p2, "val":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->itemOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Node<TE;>;"
    .local p1, "cmp":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, "val":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->nextOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Node<TE;>;"
    .local p1, "val":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->nextOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 164
    return-void
.end method

.class final Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;
.super Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.source "AtomicReferenceFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AtomicReferenceFieldUpdaterImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
        "<TT;TV;>;"
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final cclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final offset:J

.field private final tclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final vclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 159
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 157
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "vclass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v5, 0x0

    #@1
    .line 177
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;-><init>()V

    #@4
    .line 185
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@7
    move-result-object v2

    #@8
    .line 186
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    .line 187
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    #@f
    move-result v4

    #@10
    .line 198
    .local v4, "modifiers":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v3

    #@14
    .line 207
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p2, v3, :cond_0

    #@16
    .line 208
    new-instance v5, Ljava/lang/ClassCastException;

    #@18
    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    #@1b
    throw v5

    #@1c
    .line 203
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "modifiers":I
    :catch_0
    move-exception v1

    #@1d
    .line 204
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    #@1f
    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v5

    #@23
    .line 210
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "modifiers":I
    :cond_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@26
    move-result v6

    #@27
    if-nez v6, :cond_1

    #@29
    .line 211
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v6, "Must be volatile type"

    #@2e
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v5

    #@32
    .line 213
    :cond_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 214
    if-eq v0, p1, :cond_2

    #@3a
    .line 213
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@3c
    .line 215
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@3e
    .line 216
    const-class v6, Ljava/lang/Object;

    #@40
    if-ne p2, v6, :cond_3

    #@42
    .line 217
    iput-object v5, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@44
    .line 220
    :goto_1
    sget-object v5, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@46
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@49
    move-result-wide v6

    #@4a
    iput-wide v6, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@4c
    .line 179
    return-void

    #@4d
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v0, v5

    #@4e
    .line 214
    goto :goto_0

    #@4f
    .line 219
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iput-object p2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@51
    goto :goto_1
.end method

.method private ensureProtectedAccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 298
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 299
    return-void

    #@9
    .line 301
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    .line 302
    new-instance v1, Ljava/lang/IllegalAccessException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Class "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 303
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 304
    const-string/jumbo v3, " can not access a protected member of class "

    #@26
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 305
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@2c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 306
    const-string/jumbo v3, " using an instance of "

    #@37
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    #@4e
    .line 301
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@51
    throw v0
.end method


# virtual methods
.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 258
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "expect":Ljava/lang/Object;, "TV;"
    .local p3, "update":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->updateCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 262
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@11
    move-object v1, p1

    #@12
    move-object v4, p2

    #@13
    move-object v5, p3

    #@14
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 258
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 259
    if-eqz p3, :cond_1

    #@1f
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 260
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v1

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 292
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->targetCheck(Ljava/lang/Object;)V

    #@d
    .line 294
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@11
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 292
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@18
    if-eqz v0, :cond_1

    #@1a
    goto :goto_0
.end method

.method public lazySet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 283
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    .line 286
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->updateCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 287
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@11
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@14
    .line 282
    return-void

    #@15
    .line 283
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 284
    if-eqz p2, :cond_1

    #@1b
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 285
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v1

    #@25
    if-eq v0, v1, :cond_1

    #@27
    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    .line 278
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->updateCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 279
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@11
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@14
    .line 274
    return-void

    #@15
    .line 275
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 276
    if-eqz p2, :cond_1

    #@1b
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 277
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v1

    #@25
    if-eq v0, v1, :cond_1

    #@27
    goto :goto_0
.end method

.method targetCheck(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 244
    new-instance v0, Ljava/lang/ClassCastException;

    #@a
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@d
    throw v0

    #@e
    .line 245
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 246
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->ensureProtectedAccess(Ljava/lang/Object;)V

    #@15
    .line 242
    :cond_1
    return-void
.end method

.method updateCheck(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 250
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "update":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2

    #@8
    .line 251
    if-eqz p2, :cond_0

    #@a
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@c
    if-eqz v0, :cond_0

    #@e
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 253
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 254
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->ensureProtectedAccess(Ljava/lang/Object;)V

    #@1d
    .line 249
    :cond_1
    return-void

    #@1e
    .line 252
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    #@20
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@23
    throw v0
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "expect":Ljava/lang/Object;, "TV;"
    .local p3, "update":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    .line 270
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->updateCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 271
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@11
    move-object v1, p1

    #@12
    move-object v4, p2

    #@13
    move-object v5, p3

    #@14
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 267
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@1b
    if-nez v0, :cond_0

    #@1d
    .line 268
    if-eqz p3, :cond_1

    #@1f
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 269
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v1

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    goto :goto_0
.end method

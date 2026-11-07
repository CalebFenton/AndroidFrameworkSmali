.class public Landroid/icu/impl/coll/SharedObject;
.super Ljava/lang/Object;
.source "SharedObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/SharedObject$Reference;
    }
.end annotation


# instance fields
.field private blacklist refCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 162
    return-void
.end method


# virtual methods
.method public final blacklist addRef()V
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public blacklist clone()Landroid/icu/impl/coll/SharedObject;
    .registers 3

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/SharedObject;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_f

    .line 173
    .local v0, "c":Landroid/icu/impl/coll/SharedObject;
    nop

    .line 174
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 175
    return-object v0

    .line 170
    .end local v0    # "c":Landroid/icu/impl/coll/SharedObject;
    :catch_f
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist deleteIfZeroRefCount()V
    .registers 1

    .line 198
    return-void
.end method

.method public final blacklist getRefCount()I
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final blacklist removeRef()V
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 189
    return-void
.end method

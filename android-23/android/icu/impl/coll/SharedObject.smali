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
.field private refCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@a
    .line 157
    return-void
.end method


# virtual methods
.method public final addRef()V
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@5
    return-void
.end method

.method public clone()Landroid/icu/impl/coll/SharedObject;
    .locals 3

    #@0
    .prologue
    .line 164
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/coll/SharedObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 169
    .local v0, "c":Landroid/icu/impl/coll/SharedObject;
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@b
    iput-object v2, v0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d
    .line 170
    return-object v0

    #@e
    .line 165
    .end local v0    # "c":Landroid/icu/impl/coll/SharedObject;
    :catch_0
    move-exception v1

    #@f
    .line 167
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@11
    invoke-direct {v2, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final deleteIfZeroRefCount()V
    .locals 0

    #@0
    .prologue
    .line 191
    return-void
.end method

.method public final getRefCount()I
    .locals 1

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final removeRef()V
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/icu/impl/coll/SharedObject;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 181
    return-void
.end method

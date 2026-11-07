.class final Llibcore/content/type/MimeMap$MemoizingSupplier;
.super Ljava/lang/Object;
.source "MimeMap.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/content/type/MimeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile blacklist mDelegate:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mInitialized:Z

.field private volatile blacklist mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 462
    .local p0, "this":Llibcore/content/type/MimeMap$MemoizingSupplier;, "Llibcore/content/type/MimeMap$MemoizingSupplier<TT;>;"
    .local p1, "delegate":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    .line 463
    iput-object p1, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mDelegate:Ljava/util/function/Supplier;

    .line 464
    return-void
.end method


# virtual methods
.method public whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 468
    .local p0, "this":Llibcore/content/type/MimeMap$MemoizingSupplier;, "Llibcore/content/type/MimeMap$MemoizingSupplier<TT;>;"
    iget-boolean v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    if-nez v0, :cond_1c

    .line 469
    monitor-enter p0

    .line 470
    :try_start_5
    iget-boolean v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    if-nez v0, :cond_17

    .line 471
    iget-object v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mDelegate:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mInstance:Ljava/lang/Object;

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mDelegate:Ljava/util/function/Supplier;

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mInitialized:Z

    .line 475
    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0

    .line 477
    :cond_1c
    :goto_1c
    iget-object v0, p0, Llibcore/content/type/MimeMap$MemoizingSupplier;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

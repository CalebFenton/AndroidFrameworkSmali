.class Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;
.super Ljava/lang/Object;
.source "CleanerImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Thread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;

.field final synthetic blacklist val$r:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 356
    iput-object p1, p0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;->this$0:Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;

    iput-object p2, p0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 356
    invoke-virtual {p0}, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;->run()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Thread;
    .registers 4

    .line 359
    iget-object v0, p0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-static {v0}, Ljdk/internal/misc/InnocuousThread;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 360
    .local v0, "t":Ljava/lang/Thread;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaner-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;->this$0:Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;

    iget-object v2, v2, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;->cleanerThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 362
    return-object v0
.end method

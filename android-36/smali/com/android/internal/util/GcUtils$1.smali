.class Lcom/android/internal/util/GcUtils$1;
.super Ljava/lang/Object;
.source "GcUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/GcUtils;->createFinalizationObserver(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$fence:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/internal/util/GcUtils$1;->val$fence:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/GcUtils$1;->val$fence:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 64
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    nop

    .line 66
    return-void

    .line 64
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 65
    throw v0
.end method

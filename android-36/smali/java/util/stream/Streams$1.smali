.class Ljava/util/stream/Streams$1;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$a:Ljava/lang/Runnable;

.field final synthetic blacklist val$b:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 841
    iput-object p1, p0, Ljava/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    iput-object p2, p0, Ljava/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 845
    :try_start_0
    iget-object v0, p0, Ljava/util/stream/Streams$1;->val$a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 857
    nop

    .line 858
    iget-object v0, p0, Ljava/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 859
    return-void

    .line 847
    :catchall_c
    move-exception v0

    .line 849
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_d
    iget-object v1, p0, Ljava/util/stream/Streams$1;->val$b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    .line 855
    goto :goto_1a

    .line 851
    :catchall_13
    move-exception v1

    .line 853
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_14
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 854
    :goto_17
    goto :goto_1a

    :catchall_18
    move-exception v2

    goto :goto_17

    .line 856
    .end local v1    # "e2":Ljava/lang/Throwable;
    :goto_1a
    throw v0
.end method

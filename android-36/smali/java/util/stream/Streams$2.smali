.class Ljava/util/stream/Streams$2;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$a:Ljava/util/stream/BaseStream;

.field final synthetic blacklist val$b:Ljava/util/stream/BaseStream;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 870
    iput-object p1, p0, Ljava/util/stream/Streams$2;->val$a:Ljava/util/stream/BaseStream;

    iput-object p2, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 874
    :try_start_0
    iget-object v0, p0, Ljava/util/stream/Streams$2;->val$a:Ljava/util/stream/BaseStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 886
    nop

    .line 887
    iget-object v0, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    .line 888
    return-void

    .line 876
    :catchall_c
    move-exception v0

    .line 878
    .local v0, "e1":Ljava/lang/Throwable;
    :try_start_d
    iget-object v1, p0, Ljava/util/stream/Streams$2;->val$b:Ljava/util/stream/BaseStream;

    invoke-interface {v1}, Ljava/util/stream/BaseStream;->close()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    .line 884
    goto :goto_1a

    .line 880
    :catchall_13
    move-exception v1

    .line 882
    .local v1, "e2":Ljava/lang/Throwable;
    :try_start_14
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 883
    :goto_17
    goto :goto_1a

    :catchall_18
    move-exception v2

    goto :goto_17

    .line 885
    .end local v1    # "e2":Ljava/lang/Throwable;
    :goto_1a
    throw v0
.end method

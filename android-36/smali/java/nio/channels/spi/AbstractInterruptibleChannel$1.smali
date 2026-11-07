.class Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Lsun/nio/ch/Interruptible;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V
    .registers 2
    .param p1, "this$0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist interrupt(Ljava/lang/Thread;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/Thread;

    .line 157
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-$$Nest$fgetcloseLock(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_7
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-$$Nest$fgetclosed(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 159
    monitor-exit v0

    return-void

    .line 160
    :cond_11
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-$$Nest$fputclosed(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)V

    .line 161
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1, p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-$$Nest$fputinterrupted(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_26

    .line 163
    :try_start_1c
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    goto :goto_23

    .line 164
    :catch_22
    move-exception v1

    :goto_23
    nop

    .line 165
    :try_start_24
    monitor-exit v0

    .line 166
    return-void

    .line 165
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v1
.end method

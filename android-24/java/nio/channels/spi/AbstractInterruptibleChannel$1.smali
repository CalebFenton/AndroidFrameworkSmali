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
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V
    .locals 0
    .param p1, "this$0"    # Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public interrupt(Ljava/lang/Thread;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 160
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@2
    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-get0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 161
    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@9
    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-get1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    monitor-exit v2

    #@10
    .line 162
    return-void

    #@11
    .line 163
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@13
    const/4 v3, 0x0

    #@14
    invoke-static {v1, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-set1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)Z

    #@17
    .line 164
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@19
    invoke-static {v1, p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-set0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 166
    :try_start_2
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@1e
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    :goto_0
    monitor-exit v2

    #@22
    .line 159
    return-void

    #@23
    .line 160
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1

    #@26
    .line 167
    :catch_0
    move-exception v0

    #@27
    .local v0, "x":Ljava/io/IOException;
    goto :goto_0
.end method

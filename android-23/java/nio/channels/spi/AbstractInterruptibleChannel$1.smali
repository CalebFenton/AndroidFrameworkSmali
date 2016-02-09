.class Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AbstractInterruptibleChannel;
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
    .line 42
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@2
    const/4 v2, 0x1

    #@3
    iput-boolean v2, v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    #@5
    .line 46
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    #@7
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 43
    :goto_0
    return-void

    #@b
    .line 47
    :catch_0
    move-exception v0

    #@c
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

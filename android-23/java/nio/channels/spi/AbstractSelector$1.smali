.class Ljava/nio/channels/spi/AbstractSelector$1;
.super Ljava/lang/Object;
.source "AbstractSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/spi/AbstractSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractSelector;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractSelector;)V
    .locals 0
    .param p1, "this$0"    # Ljava/nio/channels/spi/AbstractSelector;

    #@0
    .prologue
    .line 40
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelector;->wakeup()Ljava/nio/channels/Selector;

    #@5
    .line 41
    return-void
.end method

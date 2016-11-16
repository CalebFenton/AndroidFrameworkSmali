.class Ljava/nio/channels/spi/AbstractSelector$1;
.super Ljava/lang/Object;
.source "AbstractSelector.java"

# interfaces
.implements Lsun/nio/ch/Interruptible;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AbstractSelector;->begin()V
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
    .line 208
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public interrupt(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "ignore"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector$1;->this$0:Ljava/nio/channels/spi/AbstractSelector;

    #@2
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelector;->wakeup()Ljava/nio/channels/Selector;

    #@5
    .line 209
    return-void
.end method

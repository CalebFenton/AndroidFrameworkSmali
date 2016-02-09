.class public abstract Ljava/nio/channels/spi/AbstractSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AbstractSelectionKey.java"


# instance fields
.field isValid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    #@3
    .line 30
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    #@6
    .line 35
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    #@0
    .prologue
    .line 58
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 59
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    #@7
    .line 60
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;->selector()Ljava/nio/channels/Selector;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    #@d
    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AbstractSelector;->cancel(Ljava/nio/channels/SelectionKey;)V

    #@10
    .line 57
    :cond_0
    return-void
.end method

.method public final isValid()Z
    .locals 1

    #@0
    .prologue
    .line 47
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    #@2
    return v0
.end method

.class public Lsun/nio/ch/PollSelectorProvider;
.super Lsun/nio/ch/SelectorProviderImpl;
.source "PollSelectorProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lsun/nio/ch/SelectorProviderImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public inheritedChannel()Ljava/nio/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->getChannel()Ljava/nio/channels/Channel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 36
    new-instance v0, Lsun/nio/ch/PollSelectorImpl;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/PollSelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    #@5
    return-object v0
.end method

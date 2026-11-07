.class public Lsun/nio/ch/PollSelectorProvider;
.super Lsun/nio/ch/SelectorProviderImpl;
.source "PollSelectorProvider.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lsun/nio/ch/SelectorProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api inheritedChannel()Ljava/nio/channels/Channel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Lsun/nio/ch/PollSelectorImpl;

    invoke-direct {v0, p0}, Lsun/nio/ch/PollSelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method

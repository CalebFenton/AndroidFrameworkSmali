.class public Lsun/nio/ch/DefaultSelectorProvider;
.super Ljava/lang/Object;
.source "DefaultSelectorProvider.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create()Ljava/nio/channels/spi/SelectorProvider;
    .registers 1

    .line 157
    new-instance v0, Lsun/nio/ch/PollSelectorProvider;

    invoke-direct {v0}, Lsun/nio/ch/PollSelectorProvider;-><init>()V

    return-object v0
.end method

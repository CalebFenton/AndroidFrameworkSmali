.class public Lsun/nio/ch/DefaultSelectorProvider;
.super Ljava/lang/Object;
.source "DefaultSelectorProvider.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    #@0
    .prologue
    .line 135
    new-instance v0, Lsun/nio/ch/PollSelectorProvider;

    #@2
    invoke-direct {v0}, Lsun/nio/ch/PollSelectorProvider;-><init>()V

    #@5
    return-object v0
.end method

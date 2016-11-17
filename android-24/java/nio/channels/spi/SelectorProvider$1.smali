.class final Ljava/nio/channels/spi/SelectorProvider$1;
.super Ljava/lang/Object;
.source "SelectorProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/nio/channels/spi/SelectorProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider$1;->run()Ljava/nio/channels/spi/SelectorProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    #@0
    .prologue
    .line 171
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-wrap1()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 172
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-get0()Ljava/nio/channels/spi/SelectorProvider;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 173
    :cond_0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-wrap0()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 174
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-get0()Ljava/nio/channels/spi/SelectorProvider;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 175
    :cond_1
    invoke-static {}, Lsun/nio/ch/DefaultSelectorProvider;->create()Ljava/nio/channels/spi/SelectorProvider;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Ljava/nio/channels/spi/SelectorProvider;->-set0(Ljava/nio/channels/spi/SelectorProvider;)Ljava/nio/channels/spi/SelectorProvider;

    #@1d
    .line 176
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-get0()Ljava/nio/channels/spi/SelectorProvider;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

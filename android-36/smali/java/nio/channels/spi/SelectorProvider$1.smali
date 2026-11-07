.class Ljava/nio/channels/spi/SelectorProvider$1;
.super Ljava/lang/Object;
.source "SelectorProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/nio/channels/spi/SelectorProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0}, Ljava/nio/channels/spi/SelectorProvider$1;->run()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .line 178
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-$$Nest$smloadProviderFromProperty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 179
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-$$Nest$sfgetprovider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0

    .line 180
    :cond_b
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-$$Nest$smloadProviderAsService()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 181
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-$$Nest$sfgetprovider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0

    .line 182
    :cond_16
    invoke-static {}, Lsun/nio/ch/DefaultSelectorProvider;->create()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/spi/SelectorProvider;->-$$Nest$sfputprovider(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 183
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->-$$Nest$sfgetprovider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

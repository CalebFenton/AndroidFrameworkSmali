.class final Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;
.super Ljava/lang/Object;
.source "CronetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/CronetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderInfo"
.end annotation


# instance fields
.field public blacklist logSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field public blacklist provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 158
    instance-of v0, p1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;

    iget-object v1, v1, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 158
    :goto_14
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/CronetProvider$ProviderInfo;->provider:Landroid/net/connectivity/org/chromium/net/CronetProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

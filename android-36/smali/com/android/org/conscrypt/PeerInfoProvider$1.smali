.class Lcom/android/org/conscrypt/PeerInfoProvider$1;
.super Lcom/android/org/conscrypt/PeerInfoProvider;
.source "PeerInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/PeerInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/android/org/conscrypt/PeerInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHostnameOrIP()Ljava/lang/String;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPort()I
    .registers 2

    .line 36
    const/4 v0, -0x1

    return v0
.end method

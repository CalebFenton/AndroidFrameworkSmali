.class Ldalvik/system/BlockGuard$1;
.super Ljava/lang/Object;
.source "BlockGuard.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api getPolicyMask()I
    .registers 2

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onExplicitGc()V
    .registers 1

    .line 200
    return-void
.end method

.method public blacklist onNetwork()V
    .registers 1

    .line 198
    return-void
.end method

.method public blacklist test-api onReadFromDisk()V
    .registers 1

    .line 197
    return-void
.end method

.method public blacklist test-api onUnbufferedIO()V
    .registers 1

    .line 199
    return-void
.end method

.method public blacklist test-api onWriteToDisk()V
    .registers 1

    .line 196
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 195
    const-string v0, "LAX_POLICY"

    return-object v0
.end method

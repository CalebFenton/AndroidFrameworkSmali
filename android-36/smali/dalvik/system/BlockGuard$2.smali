.class Ldalvik/system/BlockGuard$2;
.super Ljava/lang/Object;
.source "BlockGuard.java"

# interfaces
.implements Ldalvik/system/BlockGuard$VmPolicy;


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

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist test-api onPathAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 216
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 215
    const-string v0, "LAX_VM_POLICY"

    return-object v0
.end method

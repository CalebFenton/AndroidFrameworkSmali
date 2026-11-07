.class public final Ldalvik/system/BlockGuard;
.super Ljava/lang/Object;
.source "BlockGuard.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/BlockGuard$Policy;,
        Ldalvik/system/BlockGuard$VmPolicy;,
        Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    }
.end annotation


# static fields
.field public static final greylist test-api LAX_POLICY:Ldalvik/system/BlockGuard$Policy;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist test-api LAX_VM_POLICY:Ldalvik/system/BlockGuard$VmPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static greylist threadPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ldalvik/system/BlockGuard$Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist vmPolicy:Ldalvik/system/BlockGuard$VmPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Ldalvik/system/BlockGuard$1;

    invoke-direct {v0}, Ldalvik/system/BlockGuard$1;-><init>()V

    sput-object v0, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    .line 214
    new-instance v0, Ldalvik/system/BlockGuard$2;

    invoke-direct {v0}, Ldalvik/system/BlockGuard$2;-><init>()V

    sput-object v0, Ldalvik/system/BlockGuard;->LAX_VM_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    .line 220
    new-instance v0, Ldalvik/system/BlockGuard$3;

    invoke-direct {v0}, Ldalvik/system/BlockGuard$3;-><init>()V

    sput-object v0, Ldalvik/system/BlockGuard;->threadPolicy:Ljava/lang/ThreadLocal;

    .line 226
    sget-object v0, Ldalvik/system/BlockGuard;->LAX_VM_POLICY:Ldalvik/system/BlockGuard$VmPolicy;

    sput-object v0, Ldalvik/system/BlockGuard;->vmPolicy:Ldalvik/system/BlockGuard$VmPolicy;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist test-api getThreadPolicy()Ldalvik/system/BlockGuard$Policy;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 240
    sget-object v0, Ldalvik/system/BlockGuard;->threadPolicy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/BlockGuard$Policy;

    return-object v0
.end method

.method public static blacklist test-api getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 270
    sget-object v0, Ldalvik/system/BlockGuard;->vmPolicy:Ldalvik/system/BlockGuard$VmPolicy;

    return-object v0
.end method

.method public static greylist test-api setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V
    .registers 3
    .param p0, "policy"    # Ldalvik/system/BlockGuard$Policy;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 257
    sget-object v0, Ldalvik/system/BlockGuard;->threadPolicy:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/BlockGuard$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public static blacklist test-api setVmPolicy(Ldalvik/system/BlockGuard$VmPolicy;)V
    .registers 2
    .param p0, "policy"    # Ldalvik/system/BlockGuard$VmPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 286
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/BlockGuard$VmPolicy;

    sput-object v0, Ldalvik/system/BlockGuard;->vmPolicy:Ldalvik/system/BlockGuard$VmPolicy;

    .line 287
    return-void
.end method

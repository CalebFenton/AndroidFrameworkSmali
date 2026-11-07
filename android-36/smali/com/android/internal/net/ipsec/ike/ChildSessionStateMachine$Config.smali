.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field public final blacklist ikeHandler:Landroid/os/Handler;

.field public final blacklist ikeSessionId:I

.field public final blacklist ipSecManager:Landroid/net/IpSecManager;

.field public final blacklist ipSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

.field public final blacklist sessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

.field public final blacklist userCbExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(ILandroid/os/Handler;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "ikeSessionId"    # I
    .param p2, "ikeHandler"    # Landroid/os/Handler;
    .param p3, "sessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "ipSecManager"    # Landroid/net/IpSecManager;
    .param p5, "ipSecSpiGenerator"    # Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;
    .param p6, "userCbExecutor"    # Ljava/util/concurrent/Executor;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ikeSessionId:I

    .line 304
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ikeHandler:Landroid/os/Handler;

    .line 305
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->sessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 306
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ipSecManager:Landroid/net/IpSecManager;

    .line 307
    iput-object p5, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->ipSecSpiGenerator:Lcom/android/internal/net/ipsec/ike/utils/IpSecSpiGenerator;

    .line 308
    iput-object p6, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$Config;->userCbExecutor:Ljava/util/concurrent/Executor;

    .line 309
    return-void
.end method

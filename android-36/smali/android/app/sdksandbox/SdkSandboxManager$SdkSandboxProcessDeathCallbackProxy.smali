.class Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;
.super Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback$Stub;
.source "SdkSandboxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/SdkSandboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdkSandboxProcessDeathCallbackProxy"
.end annotation


# instance fields
.field public final blacklist callback:Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$KDeRHNqrkqeJLJbRxye6Vwp1fBU(Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;->lambda$onSdkSandboxDied$0()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "lifecycleCallback"    # Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

    .line 790
    invoke-direct {p0}, Landroid/app/sdksandbox/ISdkSandboxProcessDeathCallback$Stub;-><init>()V

    .line 791
    iput-object p1, p0, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 792
    iput-object p2, p0, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;->callback:Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

    .line 793
    return-void
.end method

.method private synthetic blacklist lambda$onSdkSandboxDied$0()V
    .registers 2

    .line 797
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;->callback:Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;

    invoke-interface {v0}, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallback;->onSdkSandboxDied()V

    return-void
.end method


# virtual methods
.method public blacklist onSdkSandboxDied()V
    .registers 3

    .line 797
    iget-object v0, p0, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/sdksandbox/SdkSandboxManager$SdkSandboxProcessDeathCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

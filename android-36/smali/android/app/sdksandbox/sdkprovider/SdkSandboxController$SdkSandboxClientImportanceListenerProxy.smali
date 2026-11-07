.class public Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;
.super Ljava/lang/Object;
.source "SdkSandboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkSandboxClientImportanceListenerProxy"
.end annotation


# instance fields
.field public final blacklist listener:Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$XLhFeTENFA6Uyxb_7QR0PoMWXQM(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->lambda$onForegroundImportanceChanged$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 346
    iput-object p2, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->listener:Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    .line 347
    return-void
.end method

.method private synthetic blacklist lambda$onForegroundImportanceChanged$0(Z)V
    .registers 3
    .param p1, "isForeground"    # Z

    .line 351
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->listener:Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;

    invoke-interface {v0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxClientImportanceListener;->onForegroundImportanceChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onForegroundImportanceChanged(Z)V
    .registers 4
    .param p1, "isForeground"    # Z

    .line 351
    iget-object v0, p0, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController$SdkSandboxClientImportanceListenerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

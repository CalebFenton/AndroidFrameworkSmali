.class Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;
.super Landroid/hardware/display/IBrightnessListener$Stub;
.source "VirtualDisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/VirtualDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$kiilHuSH_kmKb_KtvjOI5zNir3M(Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;->lambda$onBrightnessChanged$0(F)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;

    .line 411
    invoke-direct {p0}, Landroid/hardware/display/IBrightnessListener$Stub;-><init>()V

    .line 412
    iput-object p1, p0, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 413
    iput-object p2, p0, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;->mListener:Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;

    .line 414
    return-void
.end method

.method private synthetic blacklist lambda$onBrightnessChanged$0(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 418
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;->mListener:Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;

    invoke-interface {v0, p1}, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListener;->onBrightnessChanged(F)V

    return-void
.end method


# virtual methods
.method public blacklist onBrightnessChanged(F)V
    .registers 4
    .param p1, "brightness"    # F

    .line 418
    iget-object v0, p0, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/display/VirtualDisplayConfig$BrightnessListenerDelegate;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

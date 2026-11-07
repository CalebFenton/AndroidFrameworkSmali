.class Landroid/app/VrManager$CallbackEntry$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "VrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager$CallbackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/VrManager$CallbackEntry;


# direct methods
.method public static synthetic blacklist $r8$lambda$sedj1hQPqpgOvgwjdc-E_zOxDMs(Landroid/app/VrManager$CallbackEntry$1;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/VrManager$CallbackEntry$1;->lambda$onVrStateChanged$0(Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/VrManager$CallbackEntry;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/VrManager$CallbackEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry$1;->this$0:Landroid/app/VrManager$CallbackEntry;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onVrStateChanged$0(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 35
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$1;->this$0:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    invoke-virtual {v0, p1}, Landroid/app/VrStateCallback;->onVrStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onVrStateChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 35
    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$1;->this$0:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/VrManager$CallbackEntry$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/VrManager$CallbackEntry$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/VrManager$CallbackEntry$1;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

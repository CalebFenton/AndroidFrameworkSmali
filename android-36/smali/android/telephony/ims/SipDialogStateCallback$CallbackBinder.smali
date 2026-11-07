.class Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;
.super Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;
.source "SipDialogStateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDialogStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSipDialogStateCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/SipDialogStateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$rRMWRsVgZEeOnxnrFT0BAe561gk(Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->lambda$onActiveSipDialogsChanged$1(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/SipDialogStateCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mSipDialogStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 54
    iput-object p2, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;Landroid/telephony/ims/SipDialogStateCallback-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;-><init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic blacklist lambda$onActiveSipDialogsChanged$0(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/ims/SipDialogStateCallback;
    .param p1, "dialogs"    # Ljava/util/List;

    .line 67
    invoke-virtual {p0, p1}, Landroid/telephony/ims/SipDialogStateCallback;->onActiveSipDialogsChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveSipDialogsChanged$1(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/ims/SipDialogStateCallback;
    .param p2, "dialogs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method blacklist getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist onActiveSipDialogsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SipDialogState;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "dialogs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/SipDialogState;>;"
    iget-object v0, p0, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;->mSipDialogStateCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/SipDialogStateCallback;

    .line 64
    .local v0, "callback":Landroid/telephony/ims/SipDialogStateCallback;
    if-eqz v0, :cond_16

    if-nez p1, :cond_d

    goto :goto_16

    .line 66
    :cond_d
    new-instance v1, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/SipDialogStateCallback$CallbackBinder;Landroid/telephony/ims/SipDialogStateCallback;Ljava/util/List;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 68
    return-void

    .line 64
    :cond_16
    :goto_16
    return-void
.end method

.class Landroid/app/KeyguardManager$6;
.super Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->registerWeakEscrowTokenRemovedListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1180
    iput-object p2, p0, Landroid/app/KeyguardManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/KeyguardManager$6;->val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;

    invoke-direct {p0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onWeakEscrowTokenRemoved$0(Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;JLandroid/os/UserHandle;)V
    .registers 4
    .param p0, "listener"    # Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;
    .param p1, "handle"    # J
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1186
    invoke-interface {p0, p1, p2, p3}, Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;->onWeakEscrowTokenRemoved(JLandroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public blacklist onWeakEscrowTokenRemoved(JI)V
    .registers 10
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1183
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1184
    .local v0, "user":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1186
    .local v1, "token":J
    :try_start_8
    iget-object v3, p0, Landroid/app/KeyguardManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/app/KeyguardManager$6;->val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;

    new-instance v5, Landroid/app/KeyguardManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p1, p2, v0}, Landroid/app/KeyguardManager$6$$ExternalSyntheticLambda0;-><init>(Landroid/app/KeyguardManager$WeakEscrowTokenRemovedListener;JLandroid/os/UserHandle;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_19

    .line 1188
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    nop

    .line 1190
    return-void

    .line 1188
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    throw v3
.end method

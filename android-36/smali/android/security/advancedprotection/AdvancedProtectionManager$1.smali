.class Landroid/security/advancedprotection/AdvancedProtectionManager$1;
.super Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;
.source "AdvancedProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/advancedprotection/AdvancedProtectionManager;->registerAdvancedProtectionCallback(Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/security/advancedprotection/AdvancedProtectionManager;Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/security/advancedprotection/AdvancedProtectionManager;
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

    .line 267
    iput-object p2, p0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;->val$callback:Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

    invoke-direct {p0}, Landroid/security/advancedprotection/IAdvancedProtectionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAdvancedProtectionChanged$0(Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;Z)V
    .registers 2
    .param p0, "callback"    # Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;
    .param p1, "enabled"    # Z

    .line 272
    invoke-interface {p0, p1}, Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onAdvancedProtectionChanged(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 272
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;->val$callback:Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

    new-instance v4, Landroid/security/advancedprotection/AdvancedProtectionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/security/advancedprotection/AdvancedProtectionManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;Z)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    throw v2
.end method

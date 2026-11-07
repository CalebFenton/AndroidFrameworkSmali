.class public Landroid/app/KeyguardManager$KeyguardLock;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardLock"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 526
    iput-object p1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    .line 527
    iput-object p2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    .line 528
    return-void
.end method


# virtual methods
.method public whitelist disableKeyguard()V
    .registers 5

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v3}, Landroid/app/KeyguardManager;->-$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 547
    goto :goto_19

    .line 546
    :catch_18
    move-exception v0

    .line 548
    :goto_19
    return-void
.end method

.method public whitelist reenableKeyguard()V
    .registers 4

    .line 561
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v0}, Landroid/app/KeyguardManager;->-$$Nest$fgetmWM(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    invoke-static {v2}, Landroid/app/KeyguardManager;->-$$Nest$fgetmContext(Landroid/app/KeyguardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 563
    goto :goto_17

    .line 562
    :catch_16
    move-exception v0

    .line 564
    :goto_17
    return-void
.end method

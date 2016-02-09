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


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/KeyguardManager;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/KeyguardManager;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    iput-object p1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 94
    new-instance v0, Landroid/os/Binder;

    #@7
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@a
    iput-object v0, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    #@c
    .line 98
    iput-object p2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    #@e
    .line 97
    return-void
.end method


# virtual methods
.method public disableKeyguard()V
    .locals 4

    #@0
    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    #@2
    invoke-static {v1}, Landroid/app/KeyguardManager;->-get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    #@8
    iget-object v3, p0, Landroid/app/KeyguardManager$KeyguardLock;->mTag:Ljava/lang/String;

    #@a
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 117
    :goto_0
    return-void

    #@e
    .line 120
    :catch_0
    move-exception v0

    #@f
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reenableKeyguard()V
    .locals 3

    #@0
    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager$KeyguardLock;->this$0:Landroid/app/KeyguardManager;

    #@2
    invoke-static {v1}, Landroid/app/KeyguardManager;->-get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/app/KeyguardManager$KeyguardLock;->mToken:Landroid/os/IBinder;

    #@8
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->reenableKeyguard(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 139
    :goto_0
    return-void

    #@c
    .line 142
    :catch_0
    move-exception v0

    #@d
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

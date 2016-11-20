.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;
    }
.end annotation


# instance fields
.field private final mUpdateRotationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    .line 876
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@5
    .line 866
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;

    #@7
    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;)V

    #@a
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mUpdateRotationRunnable:Ljava/lang/Runnable;

    #@c
    .line 875
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@2
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #@4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->mUpdateRotationRunnable:Ljava/lang/Runnable;

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@9
    .line 880
    return-void
.end method

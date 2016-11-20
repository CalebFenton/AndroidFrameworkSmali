.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@0
    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 870
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@3
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@7
    const/4 v1, 0x2

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    #@b
    .line 871
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    #@d
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    #@f
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    #@12
    .line 868
    return-void
.end method

.class Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@0
    .prologue
    .line 4235
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4238
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@3
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get3(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 4239
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@9
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    .line 4238
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@11
    .line 4240
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@13
    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set3(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@16
    .line 4241
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@18
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 4242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    #@20
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    #@27
    .line 4237
    :cond_0
    return-void
.end method

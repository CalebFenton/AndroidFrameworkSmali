.class Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;->bindLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@0
    .prologue
    .line 2069
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

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
    .line 2075
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@4
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    #@6
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@8
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@d
    .line 2071
    return-void
.end method

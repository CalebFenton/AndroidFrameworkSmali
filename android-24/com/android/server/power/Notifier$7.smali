.class Lcom/android/server/power/Notifier$7;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    #@2
    invoke-static {v0}, Lcom/android/server/power/Notifier;->-get2(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->finishedWakingUp()V

    #@9
    .line 394
    return-void
.end method

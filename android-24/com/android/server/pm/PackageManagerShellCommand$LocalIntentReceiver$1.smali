.class Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    #@0
    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;->this$1:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    #@2
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p5, "requiredPermission"    # Ljava/lang/String;
    .param p6, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;->this$1:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    #@2
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->-get0(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)Ljava/util/concurrent/SynchronousQueue;

    #@5
    move-result-object v1

    #@6
    const-wide/16 v2, 0x5

    #@8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@a
    invoke-virtual {v1, p2, v2, v3, v4}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1478
    return-void

    #@e
    .line 1481
    :catch_0
    move-exception v0

    #@f
    .line 1482
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

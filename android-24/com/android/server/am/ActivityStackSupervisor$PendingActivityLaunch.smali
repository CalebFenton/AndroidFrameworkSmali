.class Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final r:Lcom/android/server/am/ActivityRecord;

.field final sourceRecord:Lcom/android/server/am/ActivityRecord;

.field final stack:Lcom/android/server/am/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "_r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "_sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_startFlags"    # I
    .param p4, "_stack"    # Lcom/android/server/am/ActivityStack;
    .param p5, "_callerApp"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 466
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    #@5
    .line 467
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    #@7
    .line 468
    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    #@9
    .line 469
    iput-object p4, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    .line 470
    iput-object p5, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@d
    .line 465
    return-void
.end method


# virtual methods
.method sendErrorResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@2
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 476
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->callerApp:Lcom/android/server/am/ProcessRecord;

    #@8
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@a
    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 473
    :cond_0
    :goto_0
    return-void

    #@e
    .line 478
    :catch_0
    move-exception v0

    #@f
    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisor;->-get0()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Exception scheduling crash of failed activity launcher sourceRecord="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 480
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    #@21
    .line 479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0
.end method

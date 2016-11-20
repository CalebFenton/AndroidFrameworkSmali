.class Lcom/android/server/job/controllers/DeviceIdleJobsController$3;
.super Ljava/lang/Object;
.source "DeviceIdleJobsController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;->dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final synthetic val$filterUid:I

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;ILjava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .param p2, "val$filterUid"    # I
    .param p3, "val$pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    #@2
    iput p2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$filterUid:I

    #@4
    iput-object p3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$filterUid:I

    #@2
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 182
    return-void

    #@9
    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@b
    const-string/jumbo v1, "  #"

    #@e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 185
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@13
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@16
    .line 186
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@18
    const-string/jumbo v1, " from "

    #@1b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 187
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@20
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@23
    move-result v1

    #@24
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@27
    .line 188
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@29
    const-string/jumbo v1, ": "

    #@2c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 189
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@31
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 190
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@3a
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@3c
    and-int/lit16 v0, v0, 0x100

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 192
    const-string/jumbo v0, " RUNNABLE"

    #@43
    .line 190
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    .line 193
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    #@48
    if-eqz v0, :cond_1

    #@4a
    .line 194
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@4c
    const-string/jumbo v1, " WHITELISTED"

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$3;->val$pw:Ljava/io/PrintWriter;

    #@54
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    #@57
    .line 180
    return-void

    #@58
    .line 192
    :cond_2
    const-string/jumbo v0, " WAITING"

    #@5b
    goto :goto_0
.end method

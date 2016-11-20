.class Lcom/android/server/job/controllers/AppIdleController$1;
.super Ljava/lang/Object;
.source "AppIdleController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/controllers/AppIdleController;->dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;

.field final synthetic val$filterUid:I

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/AppIdleController;ILjava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/AppIdleController;
    .param p2, "val$filterUid"    # I
    .param p3, "val$pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController$1;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    #@2
    iput p2, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$filterUid:I

    #@4
    iput-object p3, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

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
    .line 136
    iget v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$filterUid:I

    #@2
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 137
    return-void

    #@9
    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@b
    const-string/jumbo v1, "  #"

    #@e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    .line 140
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@13
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@16
    .line 141
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@18
    const-string/jumbo v1, " from "

    #@1b
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e
    .line 142
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@20
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@23
    move-result v1

    #@24
    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@27
    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@29
    const-string/jumbo v1, ": "

    #@2c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2f
    .line 144
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@31
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    .line 145
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@3a
    and-int/lit8 v0, v0, 0x40

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 146
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@40
    const-string/jumbo v1, " RUNNABLE"

    #@43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@46
    .line 134
    :goto_0
    return-void

    #@47
    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    #@49
    const-string/jumbo v1, " WAITING"

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4f
    goto :goto_0
.end method

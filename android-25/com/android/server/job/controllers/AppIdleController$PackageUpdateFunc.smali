.class final Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;
.super Ljava/lang/Object;
.source "AppIdleController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/AppIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageUpdateFunc"
.end annotation


# instance fields
.field mChanged:Z

.field final mIdle:Z

.field final mPackage:Ljava/lang/String;

.field final mUserId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "idle"    # Z

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput p1, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mUserId:I

    #@5
    .line 73
    iput-object p2, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mPackage:Ljava/lang/String;

    #@7
    .line 74
    iput-boolean p3, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mIdle:Z

    #@9
    .line 71
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 78
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iget-object v2, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mPackage:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 79
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    #@10
    move-result v0

    #@11
    iget v2, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mUserId:I

    #@13
    if-ne v0, v2, :cond_0

    #@15
    .line 80
    iget-boolean v0, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mIdle:Z

    #@17
    if-eqz v0, :cond_1

    #@19
    const/4 v0, 0x0

    #@1a
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setAppNotIdleConstraintSatisfied(Z)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 85
    iput-boolean v1, p0, Lcom/android/server/job/controllers/AppIdleController$PackageUpdateFunc;->mChanged:Z

    #@22
    .line 77
    :cond_0
    return-void

    #@23
    :cond_1
    move v0, v1

    #@24
    .line 80
    goto :goto_0
.end method

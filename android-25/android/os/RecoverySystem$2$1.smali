.class Landroid/os/RecoverySystem$2$1;
.super Ljava/lang/Object;
.source "RecoverySystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem$2;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/RecoverySystem$2;

.field final synthetic val$listener:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$now:J

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Landroid/os/RecoverySystem$2;IJLandroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p1, "this$1"    # Landroid/os/RecoverySystem$2;
    .param p2, "val$progress"    # I
    .param p3, "val$now"    # J
    .param p5, "val$listener"    # Landroid/os/RecoverySystem$ProgressListener;

    #@0
    .prologue
    .line 364
    iput-object p1, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    #@2
    iput p2, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    #@4
    iput-wide p3, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    #@6
    iput-object p5, p0, Landroid/os/RecoverySystem$2$1;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 367
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    #@2
    iget-object v1, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    #@4
    iget v1, v1, Landroid/os/RecoverySystem$2;->lastProgress:I

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 368
    iget-wide v0, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    #@a
    iget-object v2, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    #@c
    iget-wide v2, v2, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    #@e
    sub-long/2addr v0, v2

    #@f
    const-wide/16 v2, 0x1f4

    #@11
    cmp-long v0, v0, v2

    #@13
    if-lez v0, :cond_0

    #@15
    .line 369
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    #@17
    iget v1, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    #@19
    iput v1, v0, Landroid/os/RecoverySystem$2;->lastProgress:I

    #@1b
    .line 370
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->this$1:Landroid/os/RecoverySystem$2;

    #@1d
    iget-wide v2, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    #@1f
    iput-wide v2, v0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    #@21
    .line 371
    iget-object v0, p0, Landroid/os/RecoverySystem$2$1;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    #@23
    iget v1, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    #@25
    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@28
    .line 366
    :cond_0
    return-void
.end method

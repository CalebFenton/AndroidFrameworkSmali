.class final Landroid/os/RecoverySystem$2;
.super Landroid/os/IRecoverySystemProgressListener$Stub;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field lastProgress:I

.field lastPublishTime:J

.field final synthetic val$listener:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$progressHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 2
    .param p1, "val$progressHandler"    # Landroid/os/Handler;
    .param p2, "val$listener"    # Landroid/os/RecoverySystem$ProgressListener;

    #@0
    .prologue
    .line 349
    iput-object p1, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    #@2
    iput-object p2, p0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    #@4
    invoke-direct {p0}, Landroid/os/IRecoverySystemProgressListener$Stub;-><init>()V

    #@7
    .line 350
    const/4 v0, 0x0

    #@8
    iput v0, p0, Landroid/os/RecoverySystem$2;->lastProgress:I

    #@a
    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    #@10
    .line 349
    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 7
    .param p1, "progress"    # I

    #@0
    .prologue
    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 356
    .local v4, "now":J
    iget-object v0, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    #@6
    new-instance v1, Landroid/os/RecoverySystem$2$1;

    #@8
    iget-object v6, p0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    #@a
    move-object v2, p0

    #@b
    move v3, p1

    #@c
    invoke-direct/range {v1 .. v6}, Landroid/os/RecoverySystem$2$1;-><init>(Landroid/os/RecoverySystem$2;IJLandroid/os/RecoverySystem$ProgressListener;)V

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 354
    return-void
.end method

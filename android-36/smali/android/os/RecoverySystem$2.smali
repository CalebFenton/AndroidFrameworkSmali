.class Landroid/os/RecoverySystem$2;
.super Landroid/os/IRecoverySystemProgressListener$Stub;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist lastProgress:I

.field blacklist lastPublishTime:J

.field final synthetic blacklist val$listener:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic blacklist val$progressHandler:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 3

    .line 499
    iput-object p1, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Landroid/os/IRecoverySystemProgressListener$Stub;-><init>()V

    .line 500
    const/4 p1, 0x0

    iput p1, p0, Landroid/os/RecoverySystem$2;->lastProgress:I

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    return-void
.end method


# virtual methods
.method public blacklist onProgress(I)V
    .registers 6
    .param p1, "progress"    # I

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 506
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    new-instance v3, Landroid/os/RecoverySystem$2$1;

    invoke-direct {v3, p0, p1, v0, v1}, Landroid/os/RecoverySystem$2$1;-><init>(Landroid/os/RecoverySystem$2;IJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    return-void
.end method

.class Lcom/android/server/media/MediaSessionRecord$2;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$previousFlagPlaySound:I

.field final synthetic val$stream:I

.field final synthetic val$uid:I

.field final synthetic val$useSuggested:Z


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "val$useSuggested"    # Z
    .param p3, "val$stream"    # I
    .param p4, "val$direction"    # I
    .param p5, "val$flags"    # I
    .param p6, "val$packageName"    # Ljava/lang/String;
    .param p7, "val$uid"    # I
    .param p8, "val$previousFlagPlaySound"    # I

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    #@4
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    #@6
    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    #@8
    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    #@a
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    #@c
    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    #@e
    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    #@10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$useSuggested:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 460
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    #@6
    const/4 v1, 0x0

    #@7
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 461
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@f
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    #@15
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    #@17
    .line 462
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    #@19
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    #@1b
    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    #@1d
    .line 461
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    #@20
    .line 458
    :goto_0
    return-void

    #@21
    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@23
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    #@26
    move-result-object v0

    #@27
    .line 465
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    #@29
    .line 466
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    #@2b
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$previousFlagPlaySound:I

    #@2d
    or-int/2addr v3, v1

    #@2e
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    #@30
    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    #@32
    .line 465
    const/high16 v1, -0x80000000

    #@34
    .line 464
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V

    #@37
    goto :goto_0

    #@38
    .line 469
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$2;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@3a
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;

    #@3d
    move-result-object v0

    #@3e
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$stream:I

    #@40
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$direction:I

    #@42
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$flags:I

    #@44
    .line 470
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$packageName:Ljava/lang/String;

    #@46
    iget v5, p0, Lcom/android/server/media/MediaSessionRecord$2;->val$uid:I

    #@48
    .line 469
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->adjustStreamVolumeForUid(IIILjava/lang/String;I)V

    #@4b
    goto :goto_0
.end method

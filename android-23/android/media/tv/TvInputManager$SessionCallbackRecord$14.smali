.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postTimeShiftStartPositionChanged(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

.field final synthetic val$timeMs:J


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;J)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$SessionCallbackRecord;
    .param p2, "val$timeMs"    # J

    #@0
    .prologue
    .line 552
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    iput-wide p2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$timeMs:J

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get1(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->this$1:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    #@8
    invoke-static {v1}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    #@b
    move-result-object v1

    #@c
    iget-wide v2, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$14;->val$timeMs:J

    #@e
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/TvInputManager$SessionCallback;->onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V

    #@11
    .line 554
    return-void
.end method

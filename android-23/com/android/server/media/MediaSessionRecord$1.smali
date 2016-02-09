.class Lcom/android/server/media/MediaSessionRecord$1;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@8
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get5(Lcom/android/server/media/MediaSessionRecord;)I

    #@b
    move-result v2

    #@c
    if-eq v1, v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 687
    .local v0, "needUpdate":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@11
    const/4 v2, -0x1

    #@12
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->-set10(Lcom/android/server/media/MediaSessionRecord;I)I

    #@15
    .line 688
    if-eqz v0, :cond_0

    #@17
    .line 689
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$1;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@19
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-wrap9(Lcom/android/server/media/MediaSessionRecord;)V

    #@1c
    .line 685
    :cond_0
    return-void

    #@1d
    .line 686
    .end local v0    # "needUpdate":Z
    :cond_1
    const/4 v0, 0x0

    #@1e
    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

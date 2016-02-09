.class Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->postInputUpdated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

.field final synthetic val$inputId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    .param p2, "val$inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 665
    iput-object p1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->this$1:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@2
    iput-object p2, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->val$inputId:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->this$1:Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->-get0(Landroid/media/tv/TvInputManager$TvInputCallbackRecord;)Landroid/media/tv/TvInputManager$TvInputCallback;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/tv/TvInputManager$TvInputCallbackRecord$4;->val$inputId:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$TvInputCallback;->onInputUpdated(Ljava/lang/String;)V

    #@b
    .line 667
    return-void
.end method

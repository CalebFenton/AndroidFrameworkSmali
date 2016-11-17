.class Lcom/android/server/SamplingProfilerService$1;
.super Landroid/os/FileObserver;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SamplingProfilerService;->startWorking(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SamplingProfilerService;

.field final synthetic val$dropbox:Landroid/os/DropBoxManager;


# direct methods
.method constructor <init>(Lcom/android/server/SamplingProfilerService;Ljava/lang/String;ILandroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SamplingProfilerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # I
    .param p4, "val$dropbox"    # Landroid/os/DropBoxManager;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/SamplingProfilerService$1;->this$0:Lcom/android/server/SamplingProfilerService;

    #@2
    iput-object p4, p0, Lcom/android/server/SamplingProfilerService$1;->val$dropbox:Landroid/os/DropBoxManager;

    #@4
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@7
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/SamplingProfilerService$1;->this$0:Lcom/android/server/SamplingProfilerService;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    const-string/jumbo v2, "/data/snapshots"

    #@7
    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    iget-object v2, p0, Lcom/android/server/SamplingProfilerService$1;->val$dropbox:Landroid/os/DropBoxManager;

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/server/SamplingProfilerService;->-wrap0(Lcom/android/server/SamplingProfilerService;Ljava/io/File;Landroid/os/DropBoxManager;)V

    #@f
    .line 70
    return-void
.end method

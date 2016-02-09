.class Landroid/app/ActivityThread$DropBoxReporter;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Llibcore/io/DropBox$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxReporter"
.end annotation


# instance fields
.field private dropBox:Landroid/os/DropBoxManager;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    #@0
    .prologue
    .line 5358
    iput-object p1, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private declared-synchronized ensureInitialized()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 5373
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 5374
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    #@7
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "dropbox"

    #@e
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/os/DropBoxManager;

    #@14
    iput-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit p0

    #@17
    .line 5372
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 5362
    invoke-direct {p0}, Landroid/app/ActivityThread$DropBoxReporter;->ensureInitialized()V

    #@3
    .line 5363
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    #@8
    .line 5361
    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5368
    invoke-direct {p0}, Landroid/app/ActivityThread$DropBoxReporter;->ensureInitialized()V

    #@3
    .line 5369
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 5367
    return-void
.end method

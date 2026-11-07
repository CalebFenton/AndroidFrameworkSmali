.class Landroid/app/UiAutomationConnection$1;
.super Ljava/lang/Object;
.source "UiAutomationConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomationConnection;->handleExecuteShellCommandProcess(Ljava/lang/Process;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$process:Ljava/lang/Process;

.field final synthetic blacklist val$readFromProcess:Ljava/lang/Thread;

.field final synthetic blacklist val$readStderrFromProcess:Ljava/lang/Thread;

.field final synthetic blacklist val$sink:Landroid/os/ParcelFileDescriptor;

.field final synthetic blacklist val$source:Landroid/os/ParcelFileDescriptor;

.field final synthetic blacklist val$stderrSink:Landroid/os/ParcelFileDescriptor;

.field final synthetic blacklist val$writeToProcess:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Landroid/app/UiAutomationConnection;Ljava/lang/Thread;Ljava/lang/Thread;Ljava/lang/Thread;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/Process;)V
    .registers 9
    .param p1, "this$0"    # Landroid/app/UiAutomationConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 610
    iput-object p2, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    iput-object p3, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    iput-object p4, p0, Landroid/app/UiAutomationConnection$1;->val$readStderrFromProcess:Ljava/lang/Thread;

    iput-object p5, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Landroid/app/UiAutomationConnection$1;->val$source:Landroid/os/ParcelFileDescriptor;

    iput-object p7, p0, Landroid/app/UiAutomationConnection$1;->val$stderrSink:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroid/app/UiAutomationConnection$1;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 614
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 615
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 617
    :cond_9
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    .line 618
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 620
    :cond_12
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readStderrFromProcess:Ljava/lang/Thread;

    if-eqz v0, :cond_1b

    .line 621
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readStderrFromProcess:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 625
    :cond_1b
    goto :goto_24

    .line 623
    :catch_1c
    move-exception v0

    .line 624
    .local v0, "exc":Ljava/lang/InterruptedException;
    const-string v1, "UiAutomationConnection"

    const-string v2, "At least one of the threads was interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v0    # "exc":Ljava/lang/InterruptedException;
    :goto_24
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 627
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$source:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 628
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$stderrSink:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 629
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 630
    return-void
.end method

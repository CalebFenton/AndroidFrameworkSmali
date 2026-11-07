.class final Landroid/view/contentcapture/ContentCaptureManager$Dumper;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Dumper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/contentcapture/ContentCaptureManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 992
    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 995
    const-string v0, ""

    .line 996
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ContentCaptureManager"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, "prefix2":Ljava/lang/String;
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v2}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 999
    :try_start_24
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isContentCaptureEnabled(): "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1000
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1001
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Debug: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1002
    const-string v3, " Verbose: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1003
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Context: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "User: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1005
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Service: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1006
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Flags: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1007
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Options: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v3, v3, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v3, p1}, Landroid/content/ContentCaptureOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1008
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v3}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v3

    if-eqz v3, :cond_d3

    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "prefix3":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Main session:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v4}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1012
    .end local v3    # "prefix3":Ljava/lang/String;
    goto :goto_db

    .line 1013
    :cond_d3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "No sessions"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    :goto_db
    monitor-exit v2

    .line 1016
    return-void

    .line 1015
    :catchall_dd
    move-exception v3

    monitor-exit v2
    :try_end_df
    .catchall {:try_start_24 .. :try_end_df} :catchall_dd

    throw v3
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .registers 2

    .line 1020
    const-string v0, "ContentCaptureManager"

    return-object v0
.end method

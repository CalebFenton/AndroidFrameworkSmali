.class Ljava/lang/UNIXProcess$3;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess;->initStreams([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/lang/UNIXProcess;


# direct methods
.method constructor blacklist <init>(Ljava/lang/UNIXProcess;)V
    .registers 2
    .param p1, "this$0"    # Ljava/lang/UNIXProcess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 172
    iget-object v0, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    iget-object v1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    invoke-static {v1}, Ljava/lang/UNIXProcess;->-$$Nest$fgetpid(Ljava/lang/UNIXProcess;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/UNIXProcess;->-$$Nest$mwaitForProcessExit(Ljava/lang/UNIXProcess;I)I

    move-result v0

    .line 173
    .local v0, "exitcode":I
    iget-object v1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    invoke-virtual {v1, v0}, Ljava/lang/UNIXProcess;->processExited(I)V

    .line 174
    return-void
.end method

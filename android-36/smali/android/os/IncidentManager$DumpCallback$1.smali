.class Landroid/os/IncidentManager$DumpCallback$1;
.super Landroid/os/IIncidentDumpCallback$Stub;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager$DumpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/IncidentManager$DumpCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$0DXwA0LZpnioO67XhnS_KsBPkcY(Landroid/os/IncidentManager$DumpCallback$1;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/IncidentManager$DumpCallback$1;->lambda$onDumpSection$0(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/IncidentManager$DumpCallback;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/IncidentManager$DumpCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 445
    iput-object p1, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    invoke-direct {p0}, Landroid/os/IIncidentDumpCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onDumpSection$0(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 450
    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    iget-object v1, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    invoke-static {v1}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fgetmId(Landroid/os/IncidentManager$DumpCallback;)I

    move-result v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/IncidentManager$DumpCallback;->onDumpSection(ILjava/io/OutputStream;)V

    .line 452
    return-void
.end method


# virtual methods
.method public blacklist onDumpSection(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 448
    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    invoke-static {v0}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fgetmExecutor(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 449
    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    invoke-static {v0}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fgetmExecutor(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/os/IncidentManager$DumpCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/os/IncidentManager$DumpCallback$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/IncidentManager$DumpCallback$1;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    .line 454
    :cond_17
    iget-object v0, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    iget-object v1, p0, Landroid/os/IncidentManager$DumpCallback$1;->this$0:Landroid/os/IncidentManager$DumpCallback;

    invoke-static {v1}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fgetmId(Landroid/os/IncidentManager$DumpCallback;)I

    move-result v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/IncidentManager$DumpCallback;->onDumpSection(ILjava/io/OutputStream;)V

    .line 457
    :goto_27
    return-void
.end method

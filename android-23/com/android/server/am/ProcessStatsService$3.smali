.class Lcom/android/server/am/ProcessStatsService$3;
.super Ljava/lang/Thread;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$outData:[B


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ProcessStatsService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$fds"    # [Landroid/os/ParcelFileDescriptor;
    .param p4, "val$outData"    # [B

    #@0
    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$3;->this$0:Lcom/android/server/am/ProcessStatsService;

    #@2
    iput-object p3, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    #@4
    iput-object p4, p0, Lcom/android/server/am/ProcessStatsService$3;->val$outData:[B

    #@6
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 529
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    #@2
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$fds:[Landroid/os/ParcelFileDescriptor;

    #@4
    const/4 v3, 0x1

    #@5
    aget-object v2, v2, v3

    #@7
    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@a
    .line 531
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService$3;->val$outData:[B

    #@c
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    #@f
    .line 532
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 528
    :goto_0
    return-void

    #@13
    .line 533
    :catch_0
    move-exception v0

    #@14
    .line 534
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ProcessStatsService"

    #@17
    const-string/jumbo v3, "Failure writing pipe"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    goto :goto_0
.end method

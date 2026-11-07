.class Landroid/telephony/TelephonyManager$5;
.super Landroid/telephony/ICellInfoCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Landroid/os/WorkSource;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 7373
    iput-object p2, p0, Landroid/telephony/TelephonyManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$5;->val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-direct {p0}, Landroid/telephony/ICellInfoCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfo$0(Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V
    .registers 2
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "cellInfo"    # Ljava/util/List;

    .line 7378
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/telephony/TelephonyManager$CellInfoCallback;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "errorCode"    # I
    .param p2, "exceptionName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 7389
    nop

    .line 7391
    invoke-static {p2, p3}, Landroid/telephony/TelephonyManager;->-$$Nest$smcreateThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 7389
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist onCellInfo(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 7376
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7378
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$5;->val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 7380
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7381
    nop

    .line 7383
    return-void

    .line 7380
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7381
    throw v2
.end method

.method public blacklist onError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "exceptionName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 7387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7389
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$5;->val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$5$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1, p2, p3}, Landroid/telephony/TelephonyManager$5$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 7393
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7394
    nop

    .line 7395
    return-void

    .line 7393
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7394
    throw v2
.end method

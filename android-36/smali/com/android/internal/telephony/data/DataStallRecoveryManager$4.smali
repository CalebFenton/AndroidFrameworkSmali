.class Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;
.super Landroid/database/ContentObserver;
.source "DataStallRecoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataStallRecoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 408
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 409
    invoke-static {}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$sfgetCONTENT_URL_DSRM_ENABLED_ACTIONS()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "onChange URI: "

    if-eqz p1, :cond_2e

    .line 410
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 412
    :cond_2e
    invoke-static {}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$sfgetCONTENT_URL_DSRM_DURATION_MILLIS()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 413
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataStallRecoveryManager;Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataStallRecoveryManager$4;->this$0:Lcom/android/internal/telephony/data/DataStallRecoveryManager;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_56
    return-void
.end method

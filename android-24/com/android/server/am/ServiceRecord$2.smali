.class Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "val$localPackageName"    # Ljava/lang/String;
    .param p3, "val$localForegroundId"    # I

    #@0
    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    #@0
    .prologue
    .line 553
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    #@3
    move-result-object v2

    #@4
    .line 554
    .local v2, "inm":Landroid/app/INotificationManager;
    if-nez v2, :cond_0

    #@6
    .line 555
    return-void

    #@7
    .line 558
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    #@9
    .line 559
    iget v4, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    #@b
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    #@d
    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    #@f
    .line 558
    const/4 v6, 0x0

    #@10
    invoke-interface {v2, v3, v6, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@13
    .line 552
    :goto_0
    return-void

    #@14
    .line 560
    :catch_0
    move-exception v1

    #@15
    .line 561
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ServiceRecord;->-get0()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    const-string/jumbo v4, "Error canceling notification for service"

    #@1c
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    goto :goto_0

    #@20
    .line 562
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@21
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

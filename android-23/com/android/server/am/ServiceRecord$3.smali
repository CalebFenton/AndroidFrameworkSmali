.class Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;

.field final synthetic val$localUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "val$localPackageName"    # Ljava/lang/String;
    .param p3, "val$localForegroundId"    # I
    .param p4, "val$localUserId"    # I

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    #@6
    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$localUserId:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 567
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    #@2
    .line 566
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    #@8
    .line 568
    .local v0, "nmi":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v0, :cond_0

    #@a
    .line 569
    return-void

    #@b
    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    #@d
    iget v2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    #@f
    .line 572
    iget v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localUserId:I

    #@11
    .line 571
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerInternal;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V

    #@14
    .line 565
    return-void
.end method

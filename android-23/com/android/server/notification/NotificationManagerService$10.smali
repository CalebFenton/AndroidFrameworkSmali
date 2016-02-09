.class Lcom/android/server/notification/NotificationManagerService$10;
.super Landroid/telephony/PhoneStateListener;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    #@0
    .prologue
    .line 3159
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3162
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get5(Lcom/android/server/notification/NotificationManagerService;)I

    #@5
    move-result v0

    #@6
    if-ne v0, p1, :cond_0

    #@8
    return-void

    #@9
    .line 3163
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    const-string/jumbo v0, "NotificationService"

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Call state changed: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap5(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 3164
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    #@2d
    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;I)I

    #@30
    .line 3161
    return-void
.end method

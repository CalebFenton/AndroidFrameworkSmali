.class Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$Dependencies;
.super Ljava/lang/Object;
.source "IkeAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dependencies"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMyUid()I
    .registers 2

    .line 111
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method public blacklist newWakeMessage(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;
    .registers 11
    .param p1, "alarmConfig"    # Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    .line 116
    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->message:Landroid/os/Message;

    .line 117
    .local v0, "alarmMessage":Landroid/os/Message;
    new-instance v1, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;

    iget-object v2, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->context:Landroid/content/Context;

    .line 119
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->tag:Ljava/lang/String;

    iget v5, v0, Landroid/os/Message;->what:I

    iget v6, v0, Landroid/os/Message;->arg1:I

    iget v7, v0, Landroid/os/Message;->arg2:I

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/net/ipsec/ike/utils/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 117
    return-object v1
.end method

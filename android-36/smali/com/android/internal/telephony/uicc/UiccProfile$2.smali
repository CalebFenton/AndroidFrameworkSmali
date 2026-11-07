.class Lcom/android/internal/telephony/uicc/UiccProfile$2;
.super Landroid/content/BroadcastReceiver;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 191
    :try_start_7
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmUserUnlockReceiverRegistered(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    .line 193
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$2;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mshowCarrierAppNotificationsIfPossible(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 194
    monitor-exit p1

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p0
.end method

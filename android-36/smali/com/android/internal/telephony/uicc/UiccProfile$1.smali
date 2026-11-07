.class Lcom/android/internal/telephony/uicc/UiccProfile$1;
.super Landroid/database/ContentObserver;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Handler;)V
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

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccProfile;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 179
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmProvisionCompleteContentObserverRegistered(Lcom/android/internal/telephony/uicc/UiccProfile;Z)V

    .line 181
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$1;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mshowCarrierAppNotificationsIfPossible(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 182
    monitor-exit p1

    return-void

    :catchall_21
    move-exception p0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw p0
.end method

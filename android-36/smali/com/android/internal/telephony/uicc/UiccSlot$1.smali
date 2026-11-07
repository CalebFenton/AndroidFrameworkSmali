.class Lcom/android/internal/telephony/uicc/UiccSlot$1;
.super Ljava/lang/Object;
.source "UiccSlot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 565
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 568
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_27

    .line 570
    :try_start_a
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string v0, "Reboot due to SIM swap"

    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 571
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$1;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "power"

    .line 572
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 573
    const-string p2, "SIM is added."

    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 575
    :cond_27
    :goto_27
    monitor-exit p1

    return-void

    :goto_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_25

    throw p0
.end method

.class Lcom/android/internal/telephony/data/PhoneSwitcher$4;
.super Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$AutoDataSwitchControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRequireCancelAnyPendingAutoSwitchValidation()V
    .registers 1

    .line 625
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mcancelPendingAutoDataSwitchValidation(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-void
.end method

.method public blacklist onRequireImmediatelySwitchToPhone(II)V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_8

    goto :goto_10

    .line 617
    :cond_8
    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmSubscriptionManagerService(Lcom/android/internal/telephony/data/PhoneSwitcher;)Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v1

    :goto_10
    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fputmAutoSelectedDataSubId(Lcom/android/internal/telephony/data/PhoneSwitcher;I)V

    .line 618
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 619
    invoke-static {p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluationReasonToString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 618
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mevaluateIfImmediateDataSwitchIsNeeded(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist onRequireValidation(IZ)V
    .registers 5

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    goto :goto_10

    .line 606
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmSubscriptionManagerService(Lcom/android/internal/telephony/data/PhoneSwitcher;)Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubId(I)I

    move-result v0

    .line 607
    :goto_10
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$4;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/4 p1, 0x4

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, p1, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mvalidate(Lcom/android/internal/telephony/data/PhoneSwitcher;IZILcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void
.end method

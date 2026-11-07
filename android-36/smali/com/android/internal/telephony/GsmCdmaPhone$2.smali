.class Lcom/android/internal/telephony/GsmCdmaPhone$2;
.super Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/telephony/GsmCdmaPhone$ImsManagerFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/util/concurrent/Executor;)V
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

    .line 404
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onUiccApplicationsEnabledChanged(I)V
    .registers 2

    .line 407
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    sget p1, Lcom/android/internal/telephony/GsmCdmaPhone;->ENABLE_UICC_APPS_MAX_RETRIES:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mreapplyUiccAppsEnablementIfNeeded(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    return-void
.end method

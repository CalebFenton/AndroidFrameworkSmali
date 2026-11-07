.class Lcom/android/internal/telephony/GsmCdmaPhone$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 2

    .line 427
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$3;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

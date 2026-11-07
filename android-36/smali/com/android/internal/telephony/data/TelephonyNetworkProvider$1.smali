.class Lcom/android/internal/telephony/data/TelephonyNetworkProvider$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "TelephonyNetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/TelephonyNetworkProvider;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$1;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$1;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    const-string v1, "Subscription changed."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$1;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    const-string v0, "subscription changed"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->-$$Nest$mreevaluateNetworkRequests(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/android/internal/telephony/data/TelephonyNetworkProvider$2;
.super Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/util/concurrent/Executor;)V
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

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$2;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onPreferredDataPhoneIdChanged(I)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$2;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preferred data sub phone id changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkProvider$2;->this$0:Lcom/android/internal/telephony/data/TelephonyNetworkProvider;

    const-string p1, "Preferred data subscription changed"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkProvider;->-$$Nest$mreevaluateNetworkRequests(Lcom/android/internal/telephony/data/TelephonyNetworkProvider;Ljava/lang/String;)V

    return-void
.end method

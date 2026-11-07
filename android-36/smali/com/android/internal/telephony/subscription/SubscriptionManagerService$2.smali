.class Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;
.super Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;
.source "SubscriptionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subscription/SubscriptionManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;I)V
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

    .line 534
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist set(I)Z
    .registers 6

    .line 537
    iget v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->mValue:I

    .line 538
    invoke-super {p0, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$WatchedInt;->set(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 539
    iget-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default data subId changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$mlogl(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;Ljava/lang/String;)V

    .line 540
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$2;->this$0:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-static {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subscription/SubscriptionManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_data_call"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

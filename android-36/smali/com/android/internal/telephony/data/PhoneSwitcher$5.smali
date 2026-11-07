.class Lcom/android/internal/telephony/data/PhoneSwitcher$5;
.super Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/util/concurrent/Executor;)V
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

    .line 635
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService$SubscriptionManagerServiceCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDefaultDataSubscriptionChanged(I)V
    .registers 4

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$5;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default data sub changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mevaluateIfImmediateDataSwitchIsNeeded(Lcom/android/internal/telephony/data/PhoneSwitcher;Ljava/lang/String;I)V

    return-void
.end method

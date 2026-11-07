.class Lcom/android/internal/telephony/data/PhoneSwitcher$3;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
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

    .line 565
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .registers 4

    .line 570
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$monDataEnabledChanged(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .registers 2

    .line 574
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-static {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$fgetmAutoDataSwitchController(Lcom/android/internal/telephony/data/PhoneSwitcher;)Lcom/android/internal/telephony/data/AutoDataSwitchController;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->evaluateAutoDataSwitch(I)V

    return-void
.end method

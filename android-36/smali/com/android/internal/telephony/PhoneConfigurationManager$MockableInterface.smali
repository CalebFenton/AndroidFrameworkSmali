.class public Lcom/android/internal/telephony/PhoneConfigurationManager$MockableInterface;
.super Ljava/lang/Object;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockableInterface"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMultiSimProperty()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 903
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isRebootRequiredForModemConfigChange()Z
    .registers 3

    .line 864
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->reboot_on_modem_change()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRebootRequiredForModemConfigChange: isRebootRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    return p0
.end method

.method public blacklist notifyPhoneFactoryOnMultiSimConfigChanged(Landroid/content/Context;I)V
    .registers 3

    .line 896
    invoke-static {p1, p2}, Lcom/android/internal/telephony/PhoneFactory;->onMultiSimConfigChanged(Landroid/content/Context;I)V

    return-void
.end method

.method public blacklist setMultiSimProperties(I)V
    .registers 3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_9

    .line 883
    const-string p0, ""

    goto :goto_e

    .line 878
    :cond_9
    const-string p0, "tsts"

    goto :goto_e

    .line 881
    :cond_c
    const-string p0, "dsds"

    .line 886
    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMultiSimProperties to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 887
    invoke-static {p0}, Landroid/internal/telephony/sysprop/TelephonyProperties;->multi_sim_config(Ljava/lang/String;)V

    return-void
.end method

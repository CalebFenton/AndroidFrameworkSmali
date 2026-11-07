.class public final synthetic Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneConfigurationManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    return-void
.end method


# virtual methods
.method public final whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->$r8$lambda$joxyJvdTj6Vf1A37-AT7m6GT0PY(Lcom/android/internal/telephony/PhoneConfigurationManager;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

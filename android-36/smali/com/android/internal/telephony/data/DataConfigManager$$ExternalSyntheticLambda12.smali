.class public final synthetic Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataConfigManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataConfigManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;->f$0:Lcom/android/internal/telephony/data/DataConfigManager;

    return-void
.end method


# virtual methods
.method public final whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda12;->f$0:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->$r8$lambda$kgrnxsnekECBxFwMKyXjx7IOV8Q(Lcom/android/internal/telephony/data/DataConfigManager;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

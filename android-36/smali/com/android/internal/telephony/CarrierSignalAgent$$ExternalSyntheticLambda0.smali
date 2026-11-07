.class public final synthetic Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/CarrierSignalAgent;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    return-void
.end method


# virtual methods
.method public final whitelist onCarrierConfigChanged(IIII)V
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CarrierSignalAgent;->$r8$lambda$z8_hdekA7Ud9Dpzix1USDwlWKhs(Lcom/android/internal/telephony/CarrierSignalAgent;IIII)V

    return-void
.end method

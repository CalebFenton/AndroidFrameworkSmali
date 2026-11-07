.class public final synthetic Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/data/DataServiceManager;

    return-void
.end method


# virtual methods
.method public final whitelist onCarrierConfigChanged(IIII)V
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataServiceManager;->$r8$lambda$JvjZDmxGX_bMDpTYf8_VN7ow8WA(Lcom/android/internal/telephony/data/DataServiceManager;IIII)V

    return-void
.end method

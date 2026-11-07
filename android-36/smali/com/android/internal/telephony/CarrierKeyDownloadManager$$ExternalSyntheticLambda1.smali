.class public final synthetic Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    return-void
.end method


# virtual methods
.method public final whitelist onCarrierConfigChanged(IIII)V
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/CarrierKeyDownloadManager;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->$r8$lambda$DT9lb5Cjh4s_4XW7fCmCHYGCwt8(Lcom/android/internal/telephony/CarrierKeyDownloadManager;IIII)V

    return-void
.end method

.class public Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;
.super Ljava/lang/Object;
.source "CellularNetworkSecuritySafetySource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafetyCenterManagerWrapper"
.end annotation


# instance fields
.field private final blacklist mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const-class v0, Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/safetycenter/SafetyCenterManager;

    iput-object p1, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    return-void
.end method


# virtual methods
.method public blacklist getActivityPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 4

    const/4 p0, 0x0

    const/high16 v0, 0x4000000

    .line 387
    invoke-static {p1, p0, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist setRefreshedSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;)V
    .registers 5

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    new-instance v0, Landroid/safetycenter/SafetyEvent$Builder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/safetycenter/SafetyEvent$Builder;-><init>(I)V

    .line 405
    invoke-virtual {v0, p1}, Landroid/safetycenter/SafetyEvent$Builder;->setRefreshBroadcastId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroid/safetycenter/SafetyEvent$Builder;->build()Landroid/safetycenter/SafetyEvent;

    move-result-object p1

    .line 401
    const-string v0, "AndroidCellularNetworkSecurity"

    invoke-virtual {p0, v0, p2, p1}, Landroid/safetycenter/SafetyCenterManager;->setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method

.method public blacklist setSafetySourceData(Landroid/safetycenter/SafetySourceData;)V
    .registers 4

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource$SafetyCenterManagerWrapper;->mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    new-instance v0, Landroid/safetycenter/SafetyEvent$Builder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/safetycenter/SafetyEvent$Builder;-><init>(I)V

    .line 395
    invoke-virtual {v0}, Landroid/safetycenter/SafetyEvent$Builder;->build()Landroid/safetycenter/SafetyEvent;

    move-result-object v0

    .line 392
    const-string v1, "AndroidCellularNetworkSecurity"

    invoke-virtual {p0, v1, p1, v0}, Landroid/safetycenter/SafetyCenterManager;->setSafetySourceData(Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method

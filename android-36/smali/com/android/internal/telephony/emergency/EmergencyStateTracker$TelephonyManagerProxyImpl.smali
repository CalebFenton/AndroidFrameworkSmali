.class Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;
.super Ljava/lang/Object;
.source "EmergencyStateTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/EmergencyStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelephonyManagerProxyImpl"
.end annotation


# instance fields
.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public blacklist getPhoneCount()I
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method public blacklist getSimState(I)I
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$TelephonyManagerProxyImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    return p0
.end method

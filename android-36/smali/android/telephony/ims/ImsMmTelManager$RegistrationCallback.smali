.class public Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "ImsMmTelManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsMmTelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegistrationCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRegistered(I)V
    .registers 2
    .param p1, "imsTransportType"    # I

    .line 125
    return-void
.end method

.method public whitelist onRegistering(I)V
    .registers 2
    .param p1, "imsTransportType"    # I

    .line 134
    return-void
.end method

.method public whitelist onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsTransportType"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 155
    return-void
.end method

.method public whitelist onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 143
    return-void
.end method

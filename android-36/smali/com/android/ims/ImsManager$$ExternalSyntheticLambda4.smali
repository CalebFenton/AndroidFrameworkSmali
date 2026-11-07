.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)Lcom/android/ims/MmTelFeatureConnection;
    .registers 9

    .line 0
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection;

    move-object p0, v0

    invoke-direct/range {p0 .. p7}, Lcom/android/ims/MmTelFeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    move-object p1, p0

    return-object p1
.end method

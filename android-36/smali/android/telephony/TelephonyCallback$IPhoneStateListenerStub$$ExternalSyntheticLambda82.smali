.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/MediaQualityStatus;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;->f$0:Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;->f$1:Landroid/telephony/ims/MediaQualityStatus;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;->f$0:Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda82;->f$1:Landroid/telephony/ims/MediaQualityStatus;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onMediaQualityStatusChanged$68(Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;Landroid/telephony/ims/MediaQualityStatus;)V

    return-void
.end method

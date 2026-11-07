.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsTrafficSession"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

.field private final blacklist mTrafficDirection:I

.field private final blacklist mTrafficType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->mCallback:Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrafficDirection(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->mTrafficDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrafficType(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->mTrafficType:I

    return p0
.end method

.method constructor blacklist <init>(IILandroid/telephony/ims/aidl/IImsTrafficSessionCallback;)V
    .registers 4

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->mTrafficType:I

    .line 229
    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->mTrafficDirection:I

    .line 230
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsTrafficSession;->mCallback:Landroid/telephony/ims/aidl/IImsTrafficSessionCallback;

    return-void
.end method

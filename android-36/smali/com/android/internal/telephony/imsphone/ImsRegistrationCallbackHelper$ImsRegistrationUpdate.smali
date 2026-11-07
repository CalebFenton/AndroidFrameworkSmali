.class public interface abstract Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;
.super Ljava/lang/Object;
.source "ImsRegistrationCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImsRegistrationUpdate"
.end annotation


# virtual methods
.method public abstract blacklist handleImsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
.end method

.method public abstract blacklist handleImsRegistering(I)V
.end method

.method public abstract blacklist handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
.end method

.method public abstract blacklist handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;II)V
.end method

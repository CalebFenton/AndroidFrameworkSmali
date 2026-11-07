.class public interface abstract Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImsServiceControllerCallbacks"
.end annotation


# virtual methods
.method public abstract blacklist imsServiceBindPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
.end method

.method public abstract blacklist imsServiceFeatureCreated(IIILcom/android/internal/telephony/ims/ImsServiceController;)V
.end method

.method public abstract blacklist imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V
.end method

.method public abstract blacklist imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V
.end method

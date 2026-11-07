.class public interface abstract Lcom/android/ims/ImsManager$SubscriptionManagerProxy;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscriptionManagerProxy"
.end annotation


# virtual methods
.method public abstract blacklist getActiveSubscriptionIdList()[I
.end method

.method public abstract blacklist getDefaultVoicePhoneId()I
.end method

.method public abstract blacklist getIntegerSubscriptionProperty(ILjava/lang/String;I)I
.end method

.method public abstract blacklist getSubscriptionId(I)I
.end method

.method public abstract blacklist isValidSubscriptionId(I)Z
.end method

.method public abstract blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
.end method

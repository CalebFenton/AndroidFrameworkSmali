.class public interface abstract Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;
.super Ljava/lang/Object;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationType"
.end annotation


# virtual methods
.method public abstract blacklist getDelay()I
.end method

.method public abstract blacklist getNotificationBuilder()Landroid/app/Notification$Builder;
.end method

.method public abstract blacklist getNotificationId()I
.end method

.method public abstract blacklist getNotificationTag()Ljava/lang/String;
.end method

.method public abstract blacklist getTypeId()I
.end method

.method public abstract blacklist isEnabled()Z
.end method

.method public abstract blacklist sendMessage()Z
.end method

.method public abstract blacklist setDelay(Landroid/os/PersistableBundle;)V
.end method

.method public abstract blacklist setEnabled(Landroid/os/PersistableBundle;)V
.end method

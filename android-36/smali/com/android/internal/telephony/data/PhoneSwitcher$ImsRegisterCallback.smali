.class public interface abstract Lcom/android/internal/telephony/data/PhoneSwitcher$ImsRegisterCallback;
.super Ljava/lang/Object;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImsRegisterCallback"
.end annotation


# virtual methods
.method public abstract blacklist setCallback(Landroid/content/Context;ILandroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation
.end method

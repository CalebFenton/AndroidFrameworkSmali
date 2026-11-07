.class public interface abstract Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneFactoryProxy"
.end annotation


# virtual methods
.method public abstract blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public abstract blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
.end method

.method public abstract blacklist getPhones()[Lcom/android/internal/telephony/Phone;
.end method

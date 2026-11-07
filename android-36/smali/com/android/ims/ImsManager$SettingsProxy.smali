.class public interface abstract Lcom/android/ims/ImsManager$SettingsProxy;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsProxy"
.end annotation


# virtual methods
.method public abstract blacklist getSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I
.end method

.method public abstract blacklist putSecureIntSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
.end method

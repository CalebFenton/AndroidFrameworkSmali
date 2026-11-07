.class public interface abstract Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;
.super Ljava/lang/Object;
.source "SystemUiSystemPropertiesFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlagResolver"
.end annotation


# virtual methods
.method public abstract blacklist getIntValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)I
.end method

.method public abstract blacklist getStringValue(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Ljava/lang/String;
.end method

.method public abstract blacklist isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z
.end method

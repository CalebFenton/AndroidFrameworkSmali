.class public interface abstract Lcom/android/internal/telephony/emergency/RadioOnStateListener$Callback;
.super Ljava/lang/Object;
.source "RadioOnStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/RadioOnStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist isOkToCall(Lcom/android/internal/telephony/Phone;IZ)Z
.end method

.method public abstract blacklist onComplete(Lcom/android/internal/telephony/emergency/RadioOnStateListener;Z)V
.end method

.method public abstract blacklist onTimeout(Lcom/android/internal/telephony/Phone;IZ)Z
.end method

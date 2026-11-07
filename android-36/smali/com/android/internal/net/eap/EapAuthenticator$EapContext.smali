.class public interface abstract Lcom/android/internal/net/eap/EapAuthenticator$EapContext;
.super Ljava/lang/Object;
.source "EapAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EapContext"
.end annotation


# virtual methods
.method public abstract blacklist getContext()Landroid/content/Context;
.end method

.method public abstract blacklist getLooper()Landroid/os/Looper;
.end method

.method public abstract blacklist getRandomnessFactory()Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;
.end method

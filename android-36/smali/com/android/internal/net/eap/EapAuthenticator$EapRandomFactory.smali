.class public interface abstract Lcom/android/internal/net/eap/EapAuthenticator$EapRandomFactory;
.super Ljava/lang/Object;
.source "EapAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EapRandomFactory"
.end annotation


# virtual methods
.method public abstract blacklist getRandom()Ljava/security/SecureRandom;
.end method

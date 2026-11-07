.class interface abstract Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLParametersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PSKCallbacks"
.end annotation


# virtual methods
.method public abstract blacklist chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
.end method

.method public abstract blacklist getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
.end method

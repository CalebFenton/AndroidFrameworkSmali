.class public interface abstract Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLParametersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AliasChooser"
.end annotation


# virtual methods
.method public abstract chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
.end method

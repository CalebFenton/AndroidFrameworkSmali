.class interface abstract Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/SSLParametersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AliasChooser"
.end annotation


# virtual methods
.method public abstract blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
.end method

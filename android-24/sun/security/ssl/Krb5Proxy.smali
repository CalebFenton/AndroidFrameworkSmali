.class public interface abstract Lsun/security/ssl/Krb5Proxy;
.super Ljava/lang/Object;
.source "Krb5Proxy.java"


# virtual methods
.method public abstract getClientSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;
.end method

.method public abstract getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;
.end method

.method public abstract getServerSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
.end method

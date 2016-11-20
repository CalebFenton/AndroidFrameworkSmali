.class public final Lsun/security/ssl/Krb5Helper;
.super Ljava/lang/Object;
.source "Krb5Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/Krb5Helper$1;
    }
.end annotation


# static fields
.field private static final IMPL_CLASS:Ljava/lang/String; = "sun.security.ssl.krb5.Krb5ProxyImpl"

.field private static final proxy:Lsun/security/ssl/Krb5Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Lsun/security/ssl/Krb5Helper$1;

    #@2
    invoke-direct {v0}, Lsun/security/ssl/Krb5Helper$1;-><init>()V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lsun/security/ssl/Krb5Proxy;

    #@b
    .line 48
    sput-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@d
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static ensureAvailable()V
    .locals 2

    #@0
    .prologue
    .line 71
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 72
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "Kerberos should have been available"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 70
    :cond_0
    return-void
.end method

.method public static getClientSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 1
    .param p0, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    #@3
    .line 81
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@5
    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getClientSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;
    .locals 1
    .param p0, "principal"    # Ljava/security/Principal;

    #@0
    .prologue
    .line 114
    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    #@3
    .line 115
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@5
    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;
    .locals 1
    .param p0, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    #@3
    .line 99
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@5
    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1
    .param p0, "kerberosKey"    # Ljavax/crypto/SecretKey;

    #@0
    .prologue
    .line 106
    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    #@3
    .line 107
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@5
    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getServerSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 1
    .param p0, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    #@3
    .line 90
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@5
    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getServerSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    .locals 1
    .param p0, "principalName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    #@3
    .line 124
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@5
    invoke-interface {v0, p0, p1}, Lsun/security/ssl/Krb5Proxy;->getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 67
    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

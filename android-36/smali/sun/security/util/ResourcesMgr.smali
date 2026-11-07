.class public Lsun/security/util/ResourcesMgr;
.super Ljava/lang/Object;
.source "ResourcesMgr.java"


# static fields
.field private static blacklist altBundle:Ljava/util/ResourceBundle;

.field private static blacklist bundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-r getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 40
    sget-object v0, Lsun/security/util/ResourcesMgr;->bundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_11

    .line 43
    new-instance v0, Lsun/security/util/ResourcesMgr$1;

    invoke-direct {v0}, Lsun/security/util/ResourcesMgr$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    sput-object v0, Lsun/security/util/ResourcesMgr;->bundle:Ljava/util/ResourceBundle;

    .line 52
    :cond_11
    sget-object v0, Lsun/security/util/ResourcesMgr;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "altBundleName"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lsun/security/util/ResourcesMgr;->altBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_11

    .line 60
    new-instance v0, Lsun/security/util/ResourcesMgr$2;

    invoke-direct {v0, p1}, Lsun/security/util/ResourcesMgr$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle;

    sput-object v0, Lsun/security/util/ResourcesMgr;->altBundle:Ljava/util/ResourceBundle;

    .line 68
    :cond_11
    sget-object v0, Lsun/security/util/ResourcesMgr;->altBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

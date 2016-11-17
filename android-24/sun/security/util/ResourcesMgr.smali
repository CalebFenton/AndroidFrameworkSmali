.class public Lsun/security/util/ResourcesMgr;
.super Ljava/lang/Object;
.source "ResourcesMgr.java"


# static fields
.field private static altBundle:Ljava/util/ResourceBundle;

.field private static bundle:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    sget-object v0, Lsun/security/util/ResourcesMgr;->bundle:Ljava/util/ResourceBundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 44
    new-instance v0, Lsun/security/util/ResourcesMgr$1;

    #@6
    invoke-direct {v0}, Lsun/security/util/ResourcesMgr$1;-><init>()V

    #@9
    .line 43
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/ResourceBundle;

    #@f
    sput-object v0, Lsun/security/util/ResourcesMgr;->bundle:Ljava/util/ResourceBundle;

    #@11
    .line 52
    :cond_0
    sget-object v0, Lsun/security/util/ResourcesMgr;->bundle:Ljava/util/ResourceBundle;

    #@13
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "altBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    sget-object v0, Lsun/security/util/ResourcesMgr;->altBundle:Ljava/util/ResourceBundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    new-instance v0, Lsun/security/util/ResourcesMgr$2;

    #@6
    invoke-direct {v0, p1}, Lsun/security/util/ResourcesMgr$2;-><init>(Ljava/lang/String;)V

    #@9
    .line 60
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/ResourceBundle;

    #@f
    sput-object v0, Lsun/security/util/ResourcesMgr;->altBundle:Ljava/util/ResourceBundle;

    #@11
    .line 68
    :cond_0
    sget-object v0, Lsun/security/util/ResourcesMgr;->altBundle:Ljava/util/ResourceBundle;

    #@13
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

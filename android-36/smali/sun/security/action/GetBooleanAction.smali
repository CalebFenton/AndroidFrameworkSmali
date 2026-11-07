.class public Lsun/security/action/GetBooleanAction;
.super Ljava/lang/Object;
.source "GetBooleanAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist theProp:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "theProp"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lsun/security/action/GetBooleanAction;->theProp:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static blacklist privilegedGetProperty(Ljava/lang/String;)Z
    .registers 2
    .param p0, "theProp"    # Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 90
    invoke-static {p0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 92
    :cond_b
    new-instance v0, Lsun/security/action/GetBooleanAction;

    invoke-direct {v0, p0}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 2

    .line 72
    iget-object v0, p0, Lsun/security/action/GetBooleanAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0}, Lsun/security/action/GetBooleanAction;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

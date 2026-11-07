.class public Lsun/security/action/GetIntegerAction;
.super Ljava/lang/Object;
.source "GetIntegerAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist defaultSet:Z

.field private blacklist defaultVal:I

.field private blacklist theProp:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "theProp"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "theProp"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    .line 93
    iput p2, p0, Lsun/security/action/GetIntegerAction;->defaultVal:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    .line 95
    return-void
.end method

.method public static blacklist privilegedGetProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "theProp"    # Ljava/lang/String;

    .line 130
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 133
    :cond_b
    new-instance v0, Lsun/security/action/GetIntegerAction;

    invoke-direct {v0, p0}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static blacklist privilegedGetProperty(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4
    .param p0, "theProp"    # Ljava/lang/String;
    .param p1, "defaultVal"    # I

    .line 155
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "value":Ljava/lang/Integer;
    goto :goto_16

    .line 158
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_b
    new-instance v0, Lsun/security/action/GetIntegerAction;

    invoke-direct {v0, p0}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 161
    .restart local v0    # "value":Ljava/lang/Integer;
    :goto_16
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1e

    :cond_1d
    move v1, p1

    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Integer;
    .registers 3

    .line 110
    iget-object v0, p0, Lsun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_13

    iget-boolean v1, p0, Lsun/security/action/GetIntegerAction;->defaultSet:Z

    if-eqz v1, :cond_13

    .line 112
    iget v1, p0, Lsun/security/action/GetIntegerAction;->defaultVal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 113
    :cond_13
    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lsun/security/action/GetIntegerAction;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$AuthPermissionHolder;,
        Ljavax/security/auth/Subject$ClassSet;,
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

.field private static final PRINCIPAL_SET:I = 0x1

.field private static final PRIV_CREDENTIAL_SET:I = 0x3

.field private static final PUB_CREDENTIAL_SET:I = 0x2

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field transient privCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient pubCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/security/ProtectionDomain;

    #@3
    .line 134
    sput-object v0, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    #@5
    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@6
    .line 157
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    #@c
    .line 156
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@12
    .line 159
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@14
    const/4 v1, 0x2

    #@15
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    #@18
    .line 158
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@1e
    .line 161
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@20
    const/4 v1, 0x3

    #@21
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    #@24
    .line 160
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@2a
    .line 154
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, "pubCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p4, "privCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@6
    .line 203
    if-eqz p2, :cond_0

    #@8
    .line 204
    if-nez p3, :cond_1

    #@a
    .line 206
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@c
    .line 207
    const-string/jumbo v1, "invalid.null.input.s."

    #@f
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 205
    :cond_1
    if-eqz p4, :cond_0

    #@19
    .line 209
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@1b
    .line 210
    const/4 v1, 0x1

    #@1c
    .line 209
    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    #@1f
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@25
    .line 211
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@27
    .line 212
    const/4 v1, 0x2

    #@28
    .line 211
    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    #@2b
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@31
    .line 213
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@33
    .line 214
    const/4 v1, 0x3

    #@34
    .line 213
    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    #@37
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@3d
    .line 215
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@3f
    .line 200
    return-void
.end method

.method private static createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
    .locals 1
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p1, "acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 546
    new-instance v0, Ljavax/security/auth/Subject$2;

    #@2
    invoke-direct {v0, p0, p1}, Ljavax/security/auth/Subject$2;-><init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V

    #@5
    .line 545
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/security/AccessControlContext;

    #@b
    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 343
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 344
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 345
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 347
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 348
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    .line 349
    const-string/jumbo v3, "invalid.null.action.provided"

    #@12
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 348
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 353
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@1d
    move-result-object v0

    #@1e
    .line 358
    .local v0, "currentAcc":Ljava/security/AccessControlContext;
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    #@21
    move-result-object v2

    #@22
    .line 356
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 403
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 404
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 407
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 408
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    .line 409
    const-string/jumbo v3, "invalid.null.action.provided"

    #@12
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 408
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 412
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@1d
    move-result-object v0

    #@1e
    .line 417
    .local v0, "currentAcc":Ljava/security/AccessControlContext;
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    #@21
    move-result-object v2

    #@22
    .line 415
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 456
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 457
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 458
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 461
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 462
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    .line 463
    const-string/jumbo v3, "invalid.null.action.provided"

    #@12
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 462
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 468
    :cond_1
    if-nez p2, :cond_2

    #@1c
    .line 469
    new-instance v0, Ljava/security/AccessControlContext;

    #@1e
    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    #@20
    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@23
    .line 475
    .local v0, "callerAcc":Ljava/security/AccessControlContext;
    :goto_0
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    #@26
    move-result-object v2

    #@27
    .line 473
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .end local v0    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_2
    move-object v0, p2

    #@2d
    .line 470
    goto :goto_0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v1

    #@4
    .line 521
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    #@6
    .line 522
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 525
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 526
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    .line 527
    const-string/jumbo v3, "invalid.null.action.provided"

    #@12
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 526
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 531
    :cond_1
    if-nez p2, :cond_2

    #@1c
    .line 532
    new-instance v0, Ljava/security/AccessControlContext;

    #@1e
    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    #@20
    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    #@23
    .line 538
    .local v0, "callerAcc":Ljava/security/AccessControlContext;
    :goto_0
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    #@26
    move-result-object v2

    #@27
    .line 536
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .end local v0    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_2
    move-object v0, p2

    #@2d
    .line 533
    goto :goto_0
.end method

.method private getCredHashCode(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 925
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v1

    #@4
    return v1

    #@5
    .line 926
    :catch_0
    move-exception v0

    #@6
    .line 927
    .local v0, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v1

    #@12
    return v1
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 3
    .param p0, "acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 286
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 287
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 290
    :cond_0
    if-nez p0, :cond_1

    #@d
    .line 291
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    .line 292
    const-string/jumbo v2, "invalid.null.AccessControlContext.provided"

    #@12
    .line 291
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 297
    :cond_1
    new-instance v1, Ljavax/security/auth/Subject$1;

    #@1c
    invoke-direct {v1, p0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;)V

    #@1f
    .line 296
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljavax/security/auth/Subject;

    #@25
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 947
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 952
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    #@9
    .line 951
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@f
    .line 954
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    #@11
    const/4 v1, 0x3

    #@12
    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    #@15
    .line 953
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@1b
    .line 945
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 936
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@2
    monitor-enter v0

    #@3
    .line 937
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 935
    return-void

    #@8
    .line 936
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 775
    if-nez p1, :cond_0

    #@4
    .line 776
    return v6

    #@5
    .line 778
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 779
    return v7

    #@8
    .line 781
    :cond_1
    instance-of v4, p1, Ljavax/security/auth/Subject;

    #@a
    if-eqz v4, :cond_5

    #@c
    move-object v0, p1

    #@d
    .line 783
    nop

    #@e
    nop

    #@f
    .line 787
    .local v0, "that":Ljavax/security/auth/Subject;
    iget-object v5, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@11
    monitor-enter v5

    #@12
    .line 789
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    #@14
    iget-object v4, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@16
    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .local v1, "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    monitor-exit v5

    #@1a
    .line 791
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@1c
    invoke-interface {v4, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_2

    #@22
    .line 792
    return v6

    #@23
    .line 787
    .end local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :catchall_0
    move-exception v4

    #@24
    monitor-exit v5

    #@25
    throw v4

    #@26
    .line 796
    .restart local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_2
    iget-object v5, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@28
    monitor-enter v5

    #@29
    .line 798
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    #@2b
    iget-object v4, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@2d
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@30
    .local v3, "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5

    #@31
    .line 800
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@33
    invoke-interface {v4, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_3

    #@39
    .line 801
    return v6

    #@3a
    .line 796
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v4

    #@3b
    monitor-exit v5

    #@3c
    throw v4

    #@3d
    .line 805
    .restart local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_3
    iget-object v5, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@3f
    monitor-enter v5

    #@40
    .line 807
    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    #@42
    iget-object v4, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@44
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@47
    .local v2, "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5

    #@48
    .line 809
    iget-object v4, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@4a
    invoke-interface {v4, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v4

    #@4e
    if-nez v4, :cond_4

    #@50
    .line 810
    return v6

    #@51
    .line 805
    .end local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_2
    move-exception v4

    #@52
    monitor-exit v5

    #@53
    throw v4

    #@54
    .line 812
    .restart local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_4
    return v7

    #@55
    .line 814
    .end local v0    # "that":Ljavax/security/auth/Subject;
    .end local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    .end local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_5
    return v6
.end method

.method public getPrincipals()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 604
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 605
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 606
    const-string/jumbo v1, "invalid.null.Class.provided"

    #@7
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 605
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 610
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    #@15
    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 743
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 744
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 745
    const-string/jumbo v1, "invalid.null.Class.provided"

    #@7
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 744
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 749
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    #@11
    const/4 v1, 0x3

    #@12
    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    #@15
    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 698
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    #@2
    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 700
    const-string/jumbo v1, "invalid.null.Class.provided"

    #@7
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 699
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 704
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    #@11
    const/4 v1, 0x2

    #@12
    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    #@15
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 901
    const/4 v0, 0x0

    #@1
    .line 903
    .local v0, "hashCode":I
    iget-object v5, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@3
    monitor-enter v5

    #@4
    .line 904
    :try_start_0
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .line 905
    .local v2, "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 906
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/security/Principal;

    #@16
    .line 907
    .local v1, "p":Ljava/security/Principal;
    invoke-interface {v1}, Ljava/security/Principal;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v4

    #@1a
    xor-int/2addr v0, v4

    #@1b
    goto :goto_0

    #@1c
    .end local v1    # "p":Ljava/security/Principal;
    :cond_0
    monitor-exit v5

    #@1d
    .line 911
    iget-object v5, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@1f
    monitor-enter v5

    #@20
    .line 912
    :try_start_1
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@22
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v3

    #@26
    .line 913
    .local v3, "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    .line 914
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {p0, v4}, Ljavax/security/auth/Subject;->getCredHashCode(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    move-result v4

    #@34
    xor-int/2addr v0, v4

    #@35
    goto :goto_1

    #@36
    .line 903
    .end local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    .end local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    #@37
    monitor-exit v5

    #@38
    throw v4

    #@39
    .restart local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    .restart local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    monitor-exit v5

    #@3a
    .line 917
    return v0

    #@3b
    .line 911
    .end local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v4

    #@3c
    monitor-exit v5

    #@3d
    throw v4
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 255
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@2
    return v0
.end method

.method public setReadOnly()V
    .locals 2

    #@0
    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 240
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 241
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 244
    :cond_0
    const/4 v1, 0x1

    #@c
    iput-boolean v1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    #@e
    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 825
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljavax/security/auth/Subject;->toString(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .locals 10
    .param p1, "includePrivateCredentials"    # Z

    #@0
    .prologue
    .line 835
    const-string/jumbo v7, "Subject."

    #@3
    invoke-static {v7}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 836
    .local v4, "s":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@a
    .line 838
    .local v6, "suffix":Ljava/lang/String;
    iget-object v8, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@c
    monitor-enter v8

    #@d
    .line 839
    :try_start_0
    iget-object v7, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    #@f
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .line 840
    .local v3, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_0

    #@19
    .line 841
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/security/Principal;

    #@1f
    .line 842
    .local v1, "p":Ljava/security/Principal;
    new-instance v7, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    const-string/jumbo v9, ".Principal."

    #@2b
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v9

    #@2f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    .line 843
    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    .line 842
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    .line 843
    const-string/jumbo v9, "NEWLINE"

    #@3e
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    .line 842
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    move-result-object v6

    #@4a
    goto :goto_0

    #@4b
    .end local v1    # "p":Ljava/security/Principal;
    :cond_0
    monitor-exit v8

    #@4c
    .line 847
    iget-object v8, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@4e
    monitor-enter v8

    #@4f
    .line 848
    :try_start_1
    iget-object v7, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    #@51
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@54
    move-result-object v2

    #@55
    .line 849
    .local v2, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_1

    #@5b
    .line 850
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    .line 851
    .local v0, "o":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    .line 852
    const-string/jumbo v9, ".Public.Credential."

    #@6b
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v9

    #@6f
    .line 851
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    .line 853
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    .line 851
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    .line 853
    const-string/jumbo v9, "NEWLINE"

    #@7e
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    .line 851
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@89
    move-result-object v6

    #@8a
    goto :goto_1

    #@8b
    .line 838
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :catchall_0
    move-exception v7

    #@8c
    monitor-exit v8

    #@8d
    throw v7

    #@8e
    .restart local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .restart local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :cond_1
    monitor-exit v8

    #@8f
    .line 857
    if-eqz p1, :cond_3

    #@91
    .line 858
    iget-object v8, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@93
    monitor-enter v8

    #@94
    .line 859
    :try_start_2
    iget-object v7, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    #@96
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@99
    move-result-object v2

    #@9a
    .line 860
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@9d
    move-result v7

    #@9e
    if-eqz v7, :cond_2

    #@a0
    .line 862
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a3
    move-result-object v0

    #@a4
    .line 863
    .restart local v0    # "o":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    .line 864
    const-string/jumbo v9, ".Private.Credential."

    #@b0
    .line 863
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b3
    move-result-object v9

    #@b4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    .line 865
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@bb
    move-result-object v9

    #@bc
    .line 863
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    .line 866
    const-string/jumbo v9, "NEWLINE"

    #@c3
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@c6
    move-result-object v9

    #@c7
    .line 863
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@ce
    move-result-object v6

    #@cf
    goto :goto_2

    #@d0
    .line 847
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_1
    move-exception v7

    #@d1
    monitor-exit v8

    #@d2
    throw v7

    #@d3
    .line 867
    .restart local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    #@d4
    .line 868
    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    .line 869
    const-string/jumbo v9, ".Private.Credential.inaccessible."

    #@e0
    .line 868
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v7

    #@e8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@eb
    move-result-object v6

    #@ec
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_2
    monitor-exit v8

    #@ed
    .line 875
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v7

    #@f6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v7

    #@fa
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v7

    #@fe
    return-object v7

    #@ff
    .line 858
    :catchall_2
    move-exception v7

    #@100
    monitor-exit v8

    #@101
    throw v7
.end method

.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet;,
        Ljavax/security/auth/Subject$AuthPermissionHolder;,
        Ljavax/security/auth/Subject$ClassSet;
    }
.end annotation


# static fields
.field private static final greylist-max-o NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

.field private static final greylist-max-o PRINCIPAL_SET:I = 0x1

.field private static final greylist-max-o PRIV_CREDENTIAL_SET:I = 0x3

.field private static final greylist-max-o PUB_CREDENTIAL_SET:I = 0x2

.field private static final whitelist serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field greylist-max-o principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field transient greylist-max-o privCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient greylist-max-o pubCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o readOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/ProtectionDomain;

    sput-object v0, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 156
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 158
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 160
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 162
    return-void
.end method

.method public constructor whitelist test-api <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Set<",
            "*>;)V"
        }
    .end annotation

    .line 201
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, "pubCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p4, "privCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 203
    if-eqz p2, :cond_33

    if-eqz p3, :cond_33

    if-eqz p4, :cond_33

    .line 209
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 211
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 213
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 215
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 216
    return-void

    .line 206
    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    .line 207
    const-string v1, "invalid.null.input.s."

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
    .registers 3
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p1, "acc"    # Ljava/security/AccessControlContext;

    .line 557
    new-instance v0, Ljavax/security/auth/Subject$2;

    invoke-direct {v0, p0, p1}, Ljavax/security/auth/Subject$2;-><init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V

    .line 558
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    .line 557
    return-object v0
.end method

.method public static whitelist test-api doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 5
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 346
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 347
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 348
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 350
    :cond_b
    if-eqz p1, :cond_1b

    .line 356
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    .line 359
    .local v1, "currentAcc":Ljava/security/AccessControlContext;
    nop

    .line 361
    invoke-static {p0, v1}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 360
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    return-object v2

    .line 351
    .end local v1    # "currentAcc":Ljava/security/AccessControlContext;
    :cond_1b
    new-instance v1, Ljava/lang/NullPointerException;

    .line 352
    const-string v2, "invalid.null.action.provided"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 5
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 408
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 409
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 410
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 413
    :cond_b
    if-eqz p1, :cond_1b

    .line 418
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    .line 421
    .local v1, "currentAcc":Ljava/security/AccessControlContext;
    nop

    .line 423
    invoke-static {p0, v1}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 422
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 421
    return-object v2

    .line 414
    .end local v1    # "currentAcc":Ljava/security/AccessControlContext;
    :cond_1b
    new-instance v1, Ljava/lang/NullPointerException;

    .line 415
    const-string v2, "invalid.null.action.provided"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 6
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .line 465
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 466
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 467
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 470
    :cond_b
    if-eqz p1, :cond_23

    .line 477
    if-nez p2, :cond_17

    .line 478
    new-instance v1, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v1, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    goto :goto_18

    .line 479
    :cond_17
    move-object v1, p2

    :goto_18
    nop

    .line 482
    .local v1, "callerAcc":Ljava/security/AccessControlContext;
    nop

    .line 484
    invoke-static {p0, v1}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 483
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 482
    return-object v2

    .line 471
    .end local v1    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_23
    new-instance v1, Ljava/lang/NullPointerException;

    .line 472
    const-string v2, "invalid.null.action.provided"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 6
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction<",
            "TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .line 532
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 533
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 534
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 537
    :cond_b
    if-eqz p1, :cond_23

    .line 543
    if-nez p2, :cond_17

    .line 544
    new-instance v1, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v1, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    goto :goto_18

    .line 545
    :cond_17
    move-object v1, p2

    :goto_18
    nop

    .line 548
    .local v1, "callerAcc":Ljava/security/AccessControlContext;
    nop

    .line 550
    invoke-static {p0, v1}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 549
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 548
    return-object v2

    .line 538
    .end local v1    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_23
    new-instance v1, Ljava/lang/NullPointerException;

    .line 539
    const-string v2, "invalid.null.action.provided"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getCredHashCode(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 943
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 944
    :catch_5
    move-exception v0

    .line 945
    .local v0, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static whitelist test-api getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .registers 4
    .param p0, "acc"    # Ljava/security/AccessControlContext;

    .line 285
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 286
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 287
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 290
    :cond_b
    if-eqz p0, :cond_19

    .line 296
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;)V

    .line 297
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/Subject;

    .line 296
    return-object v1

    .line 291
    :cond_19
    new-instance v1, Ljava/lang/NullPointerException;

    .line 292
    const-string v2, "invalid.null.AccessControlContext.provided"

    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 966
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 968
    .local v0, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "readOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 970
    const-string v1, "principals"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 973
    .local v1, "inputPrincs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    if-eqz v1, :cond_4a

    .line 978
    const/4 v2, 0x1

    :try_start_19
    new-instance v3, Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {v3, p0, v2, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_24} :catch_25

    .line 985
    goto :goto_31

    .line 980
    :catch_25
    move-exception v3

    .line 983
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v4, Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {v4, p0, v2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 984
    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 989
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :goto_31
    new-instance v2, Ljavax/security/auth/Subject$SecureSet;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 990
    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 991
    new-instance v2, Ljavax/security/auth/Subject$SecureSet;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 992
    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 993
    return-void

    .line 974
    :cond_4a
    new-instance v2, Ljava/lang/NullPointerException;

    .line 975
    const-string v3, "invalid.null.input.s."

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    .line 955
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 956
    monitor-exit v0

    .line 957
    return-void

    .line 956
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 793
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 794
    return v0

    .line 796
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 797
    return v1

    .line 799
    :cond_8
    instance-of v2, p1, Ljavax/security/auth/Subject;

    if-eqz v2, :cond_55

    .line 801
    move-object v2, p1

    check-cast v2, Ljavax/security/auth/Subject;

    .line 805
    .local v2, "that":Ljavax/security/auth/Subject;
    iget-object v3, v2, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v3

    .line 807
    :try_start_12
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v2, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 808
    .local v4, "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_52

    .line 809
    iget-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 810
    return v0

    .line 814
    :cond_23
    iget-object v5, v2, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 816
    :try_start_26
    new-instance v3, Ljava/util/HashSet;

    iget-object v6, v2, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 817
    .local v3, "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_4f

    .line 818
    iget-object v5, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 819
    return v0

    .line 823
    :cond_37
    iget-object v6, v2, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v6

    .line 825
    :try_start_3a
    new-instance v5, Ljava/util/HashSet;

    iget-object v7, v2, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 826
    .local v5, "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_4c

    .line 827
    iget-object v6, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 828
    return v0

    .line 830
    :cond_4b
    return v1

    .line 826
    .end local v5    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    .line 817
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    .line 808
    .end local v4    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 832
    .end local v2    # "that":Ljavax/security/auth/Subject;
    :cond_55
    return v0
.end method

.method public whitelist test-api getPrincipals()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 618
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_9

    .line 624
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0

    .line 619
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 620
    const-string v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPrivateCredentials()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 761
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_9

    .line 767
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0

    .line 762
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 763
    const-string v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getPublicCredentials()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 714
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_9

    .line 720
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0

    .line 715
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 716
    const-string v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 919
    const/4 v0, 0x0

    .line 921
    .local v0, "hashCode":I
    iget-object v1, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v1

    .line 922
    :try_start_4
    iget-object v2, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 923
    .local v2, "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 924
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Principal;

    .line 925
    .local v3, "p":Ljava/security/Principal;
    invoke-interface {v3}, Ljava/security/Principal;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 926
    .end local v3    # "p":Ljava/security/Principal;
    goto :goto_a

    .line 927
    .end local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_3b

    .line 929
    iget-object v2, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v2

    .line 930
    :try_start_20
    iget-object v1, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 931
    .local v1, "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 932
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/security/auth/Subject;->getCredHashCode(Ljava/lang/Object;)I

    move-result v3

    xor-int/2addr v0, v3

    goto :goto_26

    .line 934
    .end local v1    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_36
    monitor-exit v2

    .line 935
    return v0

    .line 934
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw v1

    .line 927
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public whitelist test-api setReadOnly()V
    .registers 3

    .line 239
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 240
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 241
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 244
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 245
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/security/auth/Subject;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o toString(Z)Ljava/lang/String;
    .registers 9
    .param p1, "includePrivateCredentials"    # Z

    .line 853
    const-string v0, "Subject."

    invoke-static {v0}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    .line 856
    .local v1, "suffix":Ljava/lang/String;
    iget-object v2, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v2

    .line 857
    :try_start_b
    iget-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 858
    .local v3, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 859
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Principal;

    .line 860
    .local v4, "p":Ljava/security/Principal;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Principal."

    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 861
    invoke-interface {v4}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NEWLINE"

    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 862
    .end local v4    # "p":Ljava/security/Principal;
    goto :goto_11

    .line 863
    .end local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :cond_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_fb

    .line 865
    iget-object v3, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v3

    .line 866
    :try_start_4c
    iget-object v2, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 867
    .local v2, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 868
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 869
    .local v4, "o":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Public.Credential."

    .line 870
    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 871
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NEWLINE"

    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 872
    .end local v4    # "o":Ljava/lang/Object;
    goto :goto_52

    .line 873
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_4c .. :try_end_88} :catchall_f8

    .line 875
    if-eqz p1, :cond_e6

    .line 876
    iget-object v2, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v2

    .line 877
    :try_start_8d
    iget-object v3, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 878
    .local v3, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_e3

    if-eqz v4, :cond_e1

    .line 880
    :try_start_99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 881
    .restart local v4    # "o":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Private.Credential."

    .line 882
    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 883
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "NEWLINE"

    .line 884
    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_c6
    .catch Ljava/lang/SecurityException; {:try_start_99 .. :try_end_c6} :catch_c8
    .catchall {:try_start_99 .. :try_end_c6} :catchall_e3

    move-object v1, v5

    .line 889
    .end local v4    # "o":Ljava/lang/Object;
    goto :goto_93

    .line 885
    :catch_c8
    move-exception v4

    .line 886
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Private.Credential.inaccessible."

    .line 887
    invoke-static {v6}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 888
    .end local v1    # "suffix":Ljava/lang/String;
    .local v5, "suffix":Ljava/lang/String;
    move-object v1, v5

    .line 891
    .end local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v5    # "suffix":Ljava/lang/String;
    .restart local v1    # "suffix":Ljava/lang/String;
    :cond_e1
    monitor-exit v2

    goto :goto_e6

    :catchall_e3
    move-exception v3

    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_c9 .. :try_end_e5} :catchall_e3

    throw v3

    .line 893
    :cond_e6
    :goto_e6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 873
    :catchall_f8
    move-exception v2

    :try_start_f9
    monitor-exit v3
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v2

    .line 863
    :catchall_fb
    move-exception v3

    :try_start_fc
    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v3
.end method

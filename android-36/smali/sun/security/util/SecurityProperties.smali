.class public Lsun/security/util/SecurityProperties;
.super Ljava/lang/Object;
.source "SecurityProperties.java"


# static fields
.field public static final blacklist INCLUDE_JAR_NAME_IN_EXCEPTIONS:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    nop

    .line 36
    const-string v0, "jar"

    invoke-static {v0}, Lsun/security/util/SecurityProperties;->includedInExceptions(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lsun/security/util/SecurityProperties;->INCLUDE_JAR_NAME_IN_EXCEPTIONS:Z

    .line 35
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getOverridableProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "propName"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 57
    invoke-static {p0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 59
    :cond_b
    return-object v0
.end method

.method public static blacklist includedInExceptions(Ljava/lang/String;)Z
    .registers 8
    .param p0, "refName"    # Ljava/lang/String;

    .line 72
    const-string v0, "jdk.includeInExceptions"

    invoke-static {v0}, Lsun/security/util/SecurityProperties;->privilegedGetOverridable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 74
    return v1

    .line 77
    :cond_a
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    move v4, v1

    :goto_12
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    .line 79
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 81
    const/4 v1, 0x1

    return v1

    .line 78
    .end local v5    # "token":Ljava/lang/String;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 84
    :cond_25
    return v1
.end method

.method static synthetic blacklist lambda$privilegedGetOverridable$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "propName"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lsun/security/util/SecurityProperties;->getOverridableProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist privilegedGetOverridable(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "propName"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 48
    invoke-static {p0}, Lsun/security/util/SecurityProperties;->getOverridableProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_b
    new-instance v0, Lsun/security/util/SecurityProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lsun/security/util/SecurityProperties$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

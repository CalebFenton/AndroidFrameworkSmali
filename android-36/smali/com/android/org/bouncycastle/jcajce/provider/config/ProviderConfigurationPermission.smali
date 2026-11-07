.class public Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# instance fields
.field private final blacklist actions:Ljava/lang/String;

.field private final blacklist permissionMask:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 65
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    return-void
.end method

.method private blacklist calculateMask(Ljava/lang/String;)I
    .registers 4

    .line 71
    new-instance p0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " ,"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 74
    :cond_c
    :goto_c
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 76
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "threadlocalecimplicitlyca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 82
    :cond_21
    const-string v1, "ecimplicitlyca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    or-int/lit8 p1, p1, 0x2

    goto :goto_c

    .line 86
    :cond_2c
    const-string v1, "threadlocaldhdefaultparams"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    or-int/lit8 p1, p1, 0x4

    goto :goto_c

    .line 90
    :cond_37
    const-string v1, "dhdefaultparams"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    or-int/lit8 p1, p1, 0x8

    goto :goto_c

    .line 94
    :cond_42
    const-string v1, "acceptableeccurves"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    or-int/lit8 p1, p1, 0x10

    goto :goto_c

    .line 98
    :cond_4d
    const-string v1, "additionalecparameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    or-int/lit8 p1, p1, 0x20

    goto :goto_c

    .line 102
    :cond_58
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x3f

    goto :goto_c

    :cond_63
    if-eqz p1, :cond_66

    return p1

    .line 110
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown permissions passed to mask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 149
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 151
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v1, v3, :cond_20

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 159
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 5

    .line 124
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 129
    :cond_6
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 134
    :cond_15
    check-cast p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 136
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget p1, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v1
.end method

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final blacklist ACCEPTABLE_EC_CURVES:I = 0x10

.field private static final blacklist ACCEPTABLE_EC_CURVES_STR:Ljava/lang/String; = "acceptableeccurves"

.field private static final blacklist ADDITIONAL_EC_PARAMETERS:I = 0x20

.field private static final blacklist ADDITIONAL_EC_PARAMETERS_STR:Ljava/lang/String; = "additionalecparameters"

.field private static final blacklist ALL:I = 0x3f

.field private static final blacklist ALL_STR:Ljava/lang/String; = "all"

.field private static final blacklist DH_DEFAULT_PARAMS:I = 0x8

.field private static final blacklist DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "dhdefaultparams"

.field private static final blacklist EC_IMPLICITLY_CA:I = 0x2

.field private static final blacklist EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final blacklist THREAD_LOCAL_DH_DEFAULT_PARAMS:I = 0x4

.field private static final blacklist THREAD_LOCAL_DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final blacklist THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final blacklist THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final blacklist actions:Ljava/lang/String;

.field private final blacklist permissionMask:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, "all"

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 58
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 65
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 66
    return-void
.end method

.method private blacklist calculateMask(Ljava/lang/String;)I
    .registers 6
    .param p1, "actions"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " ,"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, "tok":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 74
    .local v1, "mask":I
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 76
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "threadlocalecimplicitlyca"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 80
    or-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 82
    :cond_22
    const-string v3, "ecimplicitlyca"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 84
    or-int/lit8 v1, v1, 0x2

    goto :goto_64

    .line 86
    :cond_2d
    const-string/jumbo v3, "threadlocaldhdefaultparams"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 88
    or-int/lit8 v1, v1, 0x4

    goto :goto_64

    .line 90
    :cond_39
    const-string v3, "dhdefaultparams"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 92
    or-int/lit8 v1, v1, 0x8

    goto :goto_64

    .line 94
    :cond_44
    const-string v3, "acceptableeccurves"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 96
    or-int/lit8 v1, v1, 0x10

    goto :goto_64

    .line 98
    :cond_4f
    const-string v3, "additionalecparameters"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 100
    or-int/lit8 v1, v1, 0x20

    goto :goto_64

    .line 102
    :cond_5a
    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 104
    or-int/lit8 v1, v1, 0x3f

    .line 106
    .end local v2    # "s":Ljava/lang/String;
    :cond_64
    :goto_64
    goto :goto_c

    .line 108
    :cond_65
    if-eqz v1, :cond_68

    .line 113
    return v1

    .line 110
    :cond_68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown permissions passed to mask"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 144
    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 149
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 151
    .local v1, "other":Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v3, v4, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 154
    .end local v1    # "other":Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    :cond_23
    return v2
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 6
    .param p1, "permission"    # Ljava/security/Permission;

    .line 124
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 126
    return v1

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 131
    return v1

    .line 134
    :cond_15
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 136
    .local v0, "other":Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

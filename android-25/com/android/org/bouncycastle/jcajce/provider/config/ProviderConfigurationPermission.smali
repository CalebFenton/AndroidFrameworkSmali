.class public Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final ALL:I = 0xf

.field private static final ALL_STR:Ljava/lang/String; = "all"

.field private static final DH_DEFAULT_PARAMS:I = 0x8

.field private static final DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "dhdefaultparams"

.field private static final EC_IMPLICITLY_CA:I = 0x2

.field private static final EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final THREAD_LOCAL_DH_DEFAULT_PARAMS:I = 0x4

.field private static final THREAD_LOCAL_DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    const-string/jumbo v0, "all"

    #@6
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    #@8
    .line 51
    const/16 v0, 0xf

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@c
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 57
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    #@5
    .line 58
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@b
    .line 54
    return-void
.end method

.method private calculateMask(Ljava/lang/String;)I
    .locals 5
    .param p1, "actions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    new-instance v2, Ljava/util/StringTokenizer;

    #@2
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, " ,"

    #@9
    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 65
    .local v2, "tok":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    #@d
    .line 67
    .local v0, "mask":I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_5

    #@13
    .line 69
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 71
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v3, "threadlocalecimplicitlyca"

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 73
    or-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 75
    :cond_1
    const-string/jumbo v3, "ecimplicitlyca"

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 77
    or-int/lit8 v0, v0, 0x2

    #@2e
    goto :goto_0

    #@2f
    .line 79
    :cond_2
    const-string/jumbo v3, "threadlocaldhdefaultparams"

    #@32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_3

    #@38
    .line 81
    or-int/lit8 v0, v0, 0x4

    #@3a
    goto :goto_0

    #@3b
    .line 83
    :cond_3
    const-string/jumbo v3, "dhdefaultparams"

    #@3e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_4

    #@44
    .line 85
    or-int/lit8 v0, v0, 0x8

    #@46
    goto :goto_0

    #@47
    .line 87
    :cond_4
    const-string/jumbo v3, "all"

    #@4a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v3

    #@4e
    if-eqz v3, :cond_0

    #@50
    .line 89
    or-int/lit8 v0, v0, 0xf

    #@52
    goto :goto_0

    #@53
    .line 93
    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    #@55
    .line 95
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@57
    const-string/jumbo v4, "unknown permissions passed to mask"

    #@5a
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v3

    #@5e
    .line 98
    :cond_6
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 127
    if-ne p1, p0, :cond_0

    #@3
    .line 129
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 132
    :cond_0
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 134
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@c
    .line 136
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@e
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@10
    if-ne v2, v3, :cond_1

    #@12
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    :cond_1
    return v1

    #@1f
    .line 139
    .end local v0    # "other":Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    :cond_2
    return v1
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 4
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 109
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 111
    return v1

    #@6
    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 116
    return v1

    #@15
    :cond_1
    move-object v0, p1

    #@16
    .line 119
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    #@18
    .line 121
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@1a
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@1c
    and-int/2addr v2, v3

    #@1d
    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    #@1f
    if-ne v2, v3, :cond_2

    #@21
    const/4 v1, 0x1

    #@22
    :cond_2
    return v1
.end method

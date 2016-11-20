.class public final Lsun/security/jca/ProviderList;
.super Ljava/lang/Object;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/ProviderList$1;,
        Lsun/security/jca/ProviderList$2;,
        Lsun/security/jca/ProviderList$ServiceList;
    }
.end annotation


# static fields
.field static final EMPTY:Lsun/security/jca/ProviderList;

.field private static final EMPTY_PROVIDER:Ljava/security/Provider;

.field private static final P0:[Ljava/security/Provider;

.field private static final PC0:[Lsun/security/jca/ProviderConfig;

.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private volatile allLoaded:Z

.field private final configs:[Lsun/security/jca/ProviderConfig;

.field private final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 59
    const-string/jumbo v0, "jca"

    #@4
    const-string/jumbo v1, "ProviderList"

    #@7
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@a
    move-result-object v0

    #@b
    .line 58
    sput-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@d
    .line 61
    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    #@f
    sput-object v0, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    #@11
    .line 63
    new-array v0, v2, [Ljava/security/Provider;

    #@13
    sput-object v0, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    #@15
    .line 66
    new-instance v0, Lsun/security/jca/ProviderList;

    #@17
    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-direct {v0, v1, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    #@1d
    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    #@1f
    .line 71
    new-instance v0, Lsun/security/jca/ProviderList$1;

    #@21
    const-string/jumbo v1, "##Empty##"

    #@24
    const-string/jumbo v2, "initialization in progress"

    #@27
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@29
    invoke-direct {v0, v1, v4, v5, v2}, Lsun/security/jca/ProviderList$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@2c
    .line 70
    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    #@2e
    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 142
    new-instance v7, Lsun/security/jca/ProviderList$2;

    #@6
    invoke-direct {v7, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    #@9
    iput-object v7, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    #@b
    .line 163
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 164
    .local v3, "configList":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    const/4 v5, 0x1

    #@11
    .line 165
    .local v5, "i":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "security.provider."

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    invoke-static {v7}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 166
    .local v4, "entry":Ljava/lang/String;
    if-nez v4, :cond_1

    #@2b
    .line 190
    :goto_1
    sget-object v7, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    #@2d
    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@30
    move-result-object v7

    #@31
    check-cast v7, [Lsun/security/jca/ProviderConfig;

    #@33
    iput-object v7, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@35
    .line 191
    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@37
    if-eqz v7, :cond_0

    #@39
    .line 192
    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@3b
    new-instance v8, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v9, "provider configuration: "

    #@43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@52
    .line 162
    :cond_0
    return-void

    #@53
    .line 169
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@5a
    move-result v7

    #@5b
    if-nez v7, :cond_2

    #@5d
    .line 171
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5f
    new-instance v8, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v9, "invalid entry for security.provider."

    #@67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@76
    goto :goto_1

    #@77
    .line 175
    :cond_2
    const/16 v7, 0x20

    #@79
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    #@7c
    move-result v6

    #@7d
    .line 177
    .local v6, "k":I
    const/4 v7, -0x1

    #@7e
    if-ne v6, v7, :cond_4

    #@80
    .line 178
    new-instance v2, Lsun/security/jca/ProviderConfig;

    #@82
    invoke-direct {v2, v4}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    #@85
    .line 186
    .local v2, "config":Lsun/security/jca/ProviderConfig;
    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@88
    move-result v7

    #@89
    if-nez v7, :cond_3

    #@8b
    .line 187
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8e
    .line 164
    :cond_3
    add-int/lit8 v5, v5, 0x1

    #@90
    goto :goto_0

    #@91
    .line 180
    .end local v2    # "config":Lsun/security/jca/ProviderConfig;
    :cond_4
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    .line 181
    .local v1, "className":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    #@97
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    .line 182
    .local v0, "argument":Ljava/lang/String;
    new-instance v2, Lsun/security/jca/ProviderConfig;

    #@a1
    invoke-direct {v2, v1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a4
    .restart local v2    # "config":Lsun/security/jca/ProviderConfig;
    goto :goto_2
.end method

.method synthetic constructor <init>(Lsun/security/jca/ProviderList;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lsun/security/jca/ProviderList;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>([Lsun/security/jca/ProviderConfig;Z)V
    .locals 1
    .param p1, "configs"    # [Lsun/security/jca/ProviderConfig;
    .param p2, "allLoaded"    # Z

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    new-instance v0, Lsun/security/jca/ProviderList$2;

    #@5
    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    #@8
    iput-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    #@a
    .line 155
    iput-object p1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@c
    .line 156
    iput-boolean p2, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    #@e
    .line 154
    return-void
.end method

.method public static add(Lsun/security/jca/ProviderList;Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .locals 1
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 91
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static fromSecurityProperties()Lsun/security/jca/ProviderList;
    .locals 1

    #@0
    .prologue
    .line 83
    new-instance v0, Lsun/security/jca/ProviderList$3;

    #@2
    invoke-direct {v0}, Lsun/security/jca/ProviderList$3;-><init>()V

    #@5
    .line 82
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lsun/security/jca/ProviderList;

    #@b
    return-object v0
.end method

.method private getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 247
    .local v0, "index":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@9
    aget-object v1, v1, v0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    const/4 v1, 0x0

    #@d
    goto :goto_0
.end method

.method public static insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    .locals 5
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@7
    move-result-object v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 97
    return-object p0

    #@b
    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@d
    .line 100
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@12
    move-result-object v2

    #@13
    .line 99
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@16
    .line 101
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    .line 102
    .local v1, "n":I
    if-ltz p2, :cond_1

    #@1c
    if-le p2, v1, :cond_2

    #@1e
    .line 103
    :cond_1
    move p2, v1

    #@1f
    .line 105
    :cond_2
    new-instance v2, Lsun/security/jca/ProviderConfig;

    #@21
    invoke-direct {v2, p1}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    #@24
    invoke-interface {v0, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@27
    .line 106
    new-instance v3, Lsun/security/jca/ProviderList;

    #@29
    sget-object v2, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    #@2b
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, [Lsun/security/jca/ProviderConfig;

    #@31
    const/4 v4, 0x1

    #@32
    invoke-direct {v3, v2, v4}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    #@35
    return-object v3
.end method

.method private loadAll()I
    .locals 5

    #@0
    .prologue
    .line 272
    iget-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 273
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@6
    array-length v3, v3

    #@7
    return v3

    #@8
    .line 275
    :cond_0
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 276
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    #@e
    const-string/jumbo v4, "Loading all providers"

    #@11
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@14
    .line 277
    new-instance v3, Ljava/lang/Exception;

    #@16
    const-string/jumbo v4, "Call trace"

    #@19
    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    #@1f
    .line 279
    :cond_1
    const/4 v1, 0x0

    #@20
    .line 280
    .local v1, "n":I
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@23
    array-length v3, v3

    #@24
    if-ge v0, v3, :cond_3

    #@26
    .line 281
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@28
    aget-object v3, v3, v0

    #@2a
    invoke-virtual {v3}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    #@2d
    move-result-object v2

    #@2e
    .line 282
    .local v2, "p":Ljava/security/Provider;
    if-eqz v2, :cond_2

    #@30
    .line 283
    add-int/lit8 v1, v1, 0x1

    #@32
    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 286
    .end local v2    # "p":Ljava/security/Provider;
    :cond_3
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@37
    array-length v3, v3

    #@38
    if-ne v1, v3, :cond_4

    #@3a
    .line 287
    const/4 v3, 0x1

    #@3b
    iput-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    #@3d
    .line 289
    :cond_4
    return v1
.end method

.method public static varargs newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .locals 4
    .param p0, "providers"    # [Ljava/security/Provider;

    #@0
    .prologue
    .line 128
    array-length v2, p0

    #@1
    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    #@3
    .line 129
    .local v0, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 130
    new-instance v2, Lsun/security/jca/ProviderConfig;

    #@9
    aget-object v3, p0, v1

    #@b
    invoke-direct {v2, v3}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    #@e
    aput-object v2, v0, v1

    #@10
    .line 129
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 132
    :cond_0
    new-instance v2, Lsun/security/jca/ProviderList;

    #@15
    const/4 v3, 0x1

    #@16
    invoke-direct {v2, v0, v3}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    #@19
    return-object v2
.end method

.method public static remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .locals 8
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@3
    move-result-object v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 112
    return-object p0

    #@7
    .line 115
    :cond_0
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->size()I

    #@a
    move-result v4

    #@b
    add-int/lit8 v4, v4, -0x1

    #@d
    new-array v1, v4, [Lsun/security/jca/ProviderConfig;

    #@f
    .line 116
    .local v1, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v2, 0x0

    #@10
    .line 117
    .local v2, "j":I
    iget-object v5, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@12
    const/4 v4, 0x0

    #@13
    array-length v6, v5

    #@14
    move v3, v2

    #@15
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v4, v6, :cond_1

    #@17
    aget-object v0, v5, v4

    #@19
    .line 118
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v7

    #@25
    if-nez v7, :cond_2

    #@27
    .line 119
    add-int/lit8 v2, v3, 0x1

    #@29
    .end local v3    # "j":I
    .restart local v2    # "j":I
    aput-object v0, v1, v3

    #@2b
    .line 117
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@2d
    move v3, v2

    #@2e
    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    #@2f
    .line 122
    .end local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_1
    new-instance v4, Lsun/security/jca/ProviderList;

    #@31
    const/4 v5, 0x1

    #@32
    invoke-direct {v4, v1, v5}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    #@35
    return-object v4

    #@36
    .restart local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_2
    move v2, v3

    #@37
    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@3
    array-length v2, v2

    #@4
    if-ge v0, v2, :cond_1

    #@6
    .line 262
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    #@9
    move-result-object v1

    #@a
    .line 263
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 264
    return v0

    #@15
    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 267
    .end local v1    # "p":Ljava/security/Provider;
    :cond_1
    const/4 v2, -0x1

    #@19
    return v2
.end method

.method getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .locals 12
    .param p1, "jarClassNames"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 203
    new-instance v4, Ljava/util/ArrayList;

    #@3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 204
    .local v4, "newConfigs":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    array-length v8, p1

    #@7
    move v7, v6

    #@8
    :goto_0
    if-ge v7, v8, :cond_2

    #@a
    aget-object v0, p1, v7

    #@c
    .line 205
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ProviderConfig;

    #@e
    invoke-direct {v3, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    #@11
    .line 206
    .local v3, "newConfig":Lsun/security/jca/ProviderConfig;
    iget-object v9, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@13
    array-length v10, v9

    #@14
    move v5, v6

    #@15
    :goto_1
    if-ge v5, v10, :cond_0

    #@17
    aget-object v1, v9, v5

    #@19
    .line 212
    .local v1, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v1, v3}, Lsun/security/jca/ProviderConfig;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v11

    #@1d
    if-eqz v11, :cond_1

    #@1f
    .line 213
    move-object v3, v1

    #@20
    .line 217
    .end local v1    # "config":Lsun/security/jca/ProviderConfig;
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    .line 204
    add-int/lit8 v5, v7, 0x1

    #@25
    move v7, v5

    #@26
    goto :goto_0

    #@27
    .line 206
    .restart local v1    # "config":Lsun/security/jca/ProviderConfig;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 219
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "config":Lsun/security/jca/ProviderConfig;
    .end local v3    # "newConfig":Lsun/security/jca/ProviderConfig;
    :cond_2
    sget-object v5, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    #@2c
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, [Lsun/security/jca/ProviderConfig;

    #@32
    .line 220
    .local v2, "configArray":[Lsun/security/jca/ProviderConfig;
    new-instance v5, Lsun/security/jca/ProviderList;

    #@34
    invoke-direct {v5, v2, v6}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    #@37
    return-object v5
.end method

.method getProvider(I)Ljava/security/Provider;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 232
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@2
    aget-object v1, v1, p1

    #@4
    invoke-virtual {v1}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    #@7
    move-result-object v0

    #@8
    .line 233
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "p":Ljava/security/Provider;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "p":Ljava/security/Provider;
    :cond_0
    sget-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    #@d
    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList;->getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;

    #@4
    move-result-object v0

    #@5
    .line 253
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    if-nez v0, :cond_0

    #@7
    :goto_0
    return-object v1

    #@8
    :cond_0
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    #@b
    move-result-object v1

    #@c
    goto :goto_0
.end method

.method public getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 329
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@4
    array-length v3, v3

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 330
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    #@a
    move-result-object v1

    #@b
    .line 331
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    #@e
    move-result-object v2

    #@f
    .line 332
    .local v2, "s":Ljava/security/Provider$Service;
    if-eqz v2, :cond_0

    #@11
    .line 333
    return-object v2

    #@12
    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 336
    .end local v1    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_1
    return-object v4
.end method

.method public getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 349
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 359
    .local p2, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 360
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "alg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 361
    .local v0, "alg":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ServiceId;

    #@17
    invoke-direct {v3, p1, v0}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    goto :goto_0

    #@1e
    .line 363
    .end local v0    # "alg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    #@21
    move-result-object v3

    #@22
    return-object v3
.end method

.method public getServices(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 367
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V

    #@5
    return-object v0
.end method

.method public providers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method removeInvalid()Lsun/security/jca/ProviderList;
    .locals 8

    #@0
    .prologue
    .line 298
    invoke-direct {p0}, Lsun/security/jca/ProviderList;->loadAll()I

    #@3
    move-result v4

    #@4
    .line 299
    .local v4, "n":I
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@6
    array-length v6, v6

    #@7
    if-ne v4, v6, :cond_0

    #@9
    .line 300
    return-object p0

    #@a
    .line 302
    :cond_0
    new-array v5, v4, [Lsun/security/jca/ProviderConfig;

    #@c
    .line 303
    .local v5, "newConfigs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    const/4 v2, 0x0

    #@e
    .local v2, "j":I
    :goto_0
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@10
    array-length v6, v6

    #@11
    if-ge v1, v6, :cond_2

    #@13
    .line 304
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@15
    aget-object v0, v6, v1

    #@17
    .line 305
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->isLoaded()Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 306
    add-int/lit8 v3, v2, 0x1

    #@1f
    .end local v2    # "j":I
    .local v3, "j":I
    aput-object v0, v5, v2

    #@21
    move v2, v3

    #@22
    .line 303
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 309
    .end local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_2
    new-instance v6, Lsun/security/jca/ProviderList;

    #@27
    const/4 v7, 0x1

    #@28
    invoke-direct {v6, v5, v7}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    #@2b
    return-object v6
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toArray()[Ljava/security/Provider;
    .locals 2

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/security/Provider;

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

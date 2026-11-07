.class public final Lsun/security/jca/ProviderList;
.super Ljava/lang/Object;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/ProviderList$ServiceList;
    }
.end annotation


# static fields
.field static final blacklist EMPTY:Lsun/security/jca/ProviderList;

.field private static final blacklist EMPTY_PROVIDER:Ljava/security/Provider;

.field private static final blacklist P0:[Ljava/security/Provider;

.field private static final blacklist PC0:[Lsun/security/jca/ProviderConfig;

.field static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private volatile blacklist allLoaded:Z

.field private final blacklist configs:[Lsun/security/jca/ProviderConfig;

.field private final blacklist userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetconfigs(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;
    .registers 1

    iget-object p0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 58
    nop

    .line 59
    const-string v0, "jca"

    const-string v1, "ProviderList"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    .line 61
    const/4 v0, 0x0

    new-array v1, v0, [Lsun/security/jca/ProviderConfig;

    sput-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    .line 63
    new-array v0, v0, [Ljava/security/Provider;

    sput-object v0, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    .line 66
    new-instance v0, Lsun/security/jca/ProviderList;

    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    .line 70
    new-instance v0, Lsun/security/jca/ProviderList$1;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "initialization in progress"

    const-string v4, "##Empty##"

    invoke-direct {v0, v4, v1, v2, v3}, Lsun/security/jca/ProviderList$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 8

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lsun/security/jca/ProviderList$3;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$3;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    const/4 v1, 0x1

    .line 166
    .local v1, "i":I
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "security.provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "entry":Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 168
    goto :goto_4d

    .line 170
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_74

    .line 172
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry for security.provider."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    nop

    .line 191
    .end local v1    # "i":I
    .end local v2    # "entry":Ljava/lang/String;
    :goto_4d
    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/security/jca/ProviderConfig;

    iput-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 192
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_73

    .line 193
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 195
    :cond_73
    return-void

    .line 176
    .restart local v1    # "i":I
    .restart local v2    # "entry":Ljava/lang/String;
    :cond_74
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 178
    .local v3, "k":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_83

    .line 179
    new-instance v4, Lsun/security/jca/ProviderConfig;

    invoke-direct {v4, v2}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    .local v4, "config":Lsun/security/jca/ProviderConfig;
    goto :goto_98

    .line 181
    .end local v4    # "config":Lsun/security/jca/ProviderConfig;
    :cond_83
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "className":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "argument":Ljava/lang/String;
    new-instance v6, Lsun/security/jca/ProviderConfig;

    invoke-direct {v6, v4, v5}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 187
    .end local v5    # "argument":Ljava/lang/String;
    .local v4, "config":Lsun/security/jca/ProviderConfig;
    :goto_98
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 188
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2    # "entry":Ljava/lang/String;
    .end local v3    # "k":I
    .end local v4    # "config":Lsun/security/jca/ProviderConfig;
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10
.end method

.method synthetic constructor blacklist <init>(Lsun/security/jca/ProviderList-IA;)V
    .registers 2

    invoke-direct {p0}, Lsun/security/jca/ProviderList;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>([Lsun/security/jca/ProviderConfig;Z)V
    .registers 4
    .param p1, "configs"    # [Lsun/security/jca/ProviderConfig;
    .param p2, "allLoaded"    # Z

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lsun/security/jca/ProviderList$3;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$3;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    .line 156
    iput-object p1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 157
    iput-boolean p2, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    .line 158
    return-void
.end method

.method public static blacklist add(Lsun/security/jca/ProviderList;Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .registers 3
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;

    .line 92
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method static blacklist fromSecurityProperties()Lsun/security/jca/ProviderList;
    .registers 1

    .line 83
    new-instance v0, Lsun/security/jca/ProviderList$2;

    invoke-direct {v0}, Lsun/security/jca/ProviderList$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method private blacklist getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 248
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v1, v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public static blacklist insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    .registers 8
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;
    .param p2, "position"    # I

    .line 97
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 98
    return-object p0

    .line 100
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 101
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 103
    .local v1, "n":I
    if-ltz p2, :cond_1e

    if-le p2, v1, :cond_1f

    .line 104
    :cond_1e
    move p2, v1

    .line 106
    :cond_1f
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, p1}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    invoke-interface {v0, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 107
    new-instance v2, Lsun/security/jca/ProviderList;

    sget-object v3, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/jca/ProviderConfig;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v2
.end method

.method private blacklist loadAll()I
    .registers 4

    .line 273
    iget-boolean v0, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    if-eqz v0, :cond_8

    .line 274
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v0, v0

    return v0

    .line 276
    :cond_8
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1d

    .line 277
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string v1, "Loading all providers"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Call trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    :cond_1d
    const/4 v0, 0x0

    .line 281
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 282
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v2

    .line 283
    .local v2, "p":Ljava/security/Provider;
    if-eqz v2, :cond_30

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 281
    .end local v2    # "p":Ljava/security/Provider;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 287
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v1, v1

    if-ne v0, v1, :cond_3b

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    .line 290
    :cond_3b
    return v0
.end method

.method public static varargs blacklist newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .registers 5
    .param p0, "providers"    # [Ljava/security/Provider;

    .line 129
    array-length v0, p0

    new-array v0, v0, [Lsun/security/jca/ProviderConfig;

    .line 130
    .local v0, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 131
    new-instance v2, Lsun/security/jca/ProviderConfig;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    aput-object v2, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 133
    .end local v1    # "i":I
    :cond_13
    new-instance v1, Lsun/security/jca/ProviderList;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v1
.end method

.method public static blacklist remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .registers 10
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "name"    # Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_7

    .line 113
    return-object p0

    .line 116
    :cond_7
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Lsun/security/jca/ProviderConfig;

    .line 117
    .local v0, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v2, 0x0

    .line 118
    .local v2, "j":I
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_2e

    aget-object v6, v3, v5

    .line 119
    .local v6, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v6}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 120
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "j":I
    .local v7, "j":I
    aput-object v6, v0, v2

    move v2, v7

    .line 118
    .end local v6    # "config":Lsun/security/jca/ProviderConfig;
    .end local v7    # "j":I
    .restart local v2    # "j":I
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 123
    :cond_2e
    new-instance v3, Lsun/security/jca/ProviderList;

    invoke-direct {v3, v0, v1}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v3
.end method


# virtual methods
.method public blacklist getIndex(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 263
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    .line 264
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 265
    return v0

    .line 262
    .end local v1    # "p":Ljava/security/Provider;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    .end local v0    # "i":I
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .registers 13
    .param p1, "jarClassNames"    # [Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "newConfigs":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_2a

    aget-object v4, p1, v3

    .line 206
    .local v4, "className":Ljava/lang/String;
    new-instance v5, Lsun/security/jca/ProviderConfig;

    invoke-direct {v5, v4}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    .line 207
    .local v5, "newConfig":Lsun/security/jca/ProviderConfig;
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v7, v6

    move v8, v2

    :goto_15
    if-ge v8, v7, :cond_24

    aget-object v9, v6, v8

    .line 213
    .local v9, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v9, v5}, Lsun/security/jca/ProviderConfig;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 214
    move-object v5, v9

    .line 215
    goto :goto_24

    .line 207
    .end local v9    # "config":Lsun/security/jca/ProviderConfig;
    :cond_21
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 218
    :cond_24
    :goto_24
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "newConfig":Lsun/security/jca/ProviderConfig;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 220
    :cond_2a
    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/security/jca/ProviderConfig;

    .line 221
    .local v1, "configArray":[Lsun/security/jca/ProviderConfig;
    new-instance v3, Lsun/security/jca/ProviderList;

    invoke-direct {v3, v1, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v3
.end method

.method blacklist getProvider(I)Ljava/security/Provider;
    .registers 4
    .param p1, "index"    # I

    .line 233
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 234
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_e

    :cond_c
    sget-object v1, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    :goto_e
    return-object v1
.end method

.method public blacklist getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 253
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList;->getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;

    move-result-object v0

    .line 254
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public greylist getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 331
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    .line 332
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 333
    .local v2, "s":Ljava/security/Provider$Service;
    if-eqz v2, :cond_11

    .line 334
    return-object v2

    .line 330
    .end local v1    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    .local p2, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, "alg":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ServiceId;

    invoke-direct {v3, p1, v2}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v2    # "alg":Ljava/lang/String;
    goto :goto_9

    .line 364
    :cond_1e
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getServices(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/jca/ServiceId;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .line 368
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V

    return-object v0
.end method

.method public blacklist providers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    return-object v0
.end method

.method blacklist removeInvalid()Lsun/security/jca/ProviderList;
    .registers 7

    .line 299
    invoke-direct {p0}, Lsun/security/jca/ProviderList;->loadAll()I

    move-result v0

    .line 300
    .local v0, "n":I
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 301
    return-object p0

    .line 303
    :cond_a
    new-array v1, v0, [Lsun/security/jca/ProviderConfig;

    .line 304
    .local v1, "newConfigs":[Lsun/security/jca/ProviderConfig;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    iget-object v4, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v4, v4

    if-ge v2, v4, :cond_25

    .line 305
    iget-object v4, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v4, v4, v2

    .line 306
    .local v4, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v4}, Lsun/security/jca/ProviderConfig;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 307
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aput-object v4, v1, v3

    move v3, v5

    .line 304
    .end local v4    # "config":Lsun/security/jca/ProviderConfig;
    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 310
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_25
    new-instance v2, Lsun/security/jca/ProviderList;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v2
.end method

.method public blacklist size()I
    .registers 2

    .line 225
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v0, v0

    return v0
.end method

.method public blacklist toArray()[Ljava/security/Provider;
    .registers 3

    .line 315
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

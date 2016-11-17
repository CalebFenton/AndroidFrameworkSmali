.class final Lsun/security/jca/ProviderConfig;
.super Ljava/lang/Object;
.source "ProviderConfig.java"


# static fields
.field private static final CL_STRING:[Ljava/lang/Class;

.field private static final MAX_LOAD_TRIES:I = 0x1e

.field private static final P11_SOL_ARG:Ljava/lang/String; = "${java.home}/lib/security/sunpkcs11-solaris.cfg"

.field private static final P11_SOL_NAME:Ljava/lang/String; = "sun.security.pkcs11.SunPKCS11"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final argument:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private isLoading:Z

.field private volatile provider:Ljava/security/Provider;

.field private tries:I


# direct methods
.method static synthetic -get0(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Lsun/security/util/Debug;
    .locals 1

    #@0
    sget-object v0, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lsun/security/jca/ProviderConfig;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lsun/security/jca/ProviderConfig;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->disableLoad()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "jca"

    #@3
    const-string/jumbo v1, "ProviderConfig"

    #@6
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    #@9
    move-result-object v0

    #@a
    .line 45
    sput-object v0, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@c
    .line 61
    const/4 v0, 0x1

    #@d
    new-array v0, v0, [Ljava/lang/Class;

    #@f
    const-class v1, Ljava/lang/String;

    #@11
    const/4 v2, 0x0

    #@12
    aput-object v1, v0, v2

    #@14
    sput-object v0, Lsun/security/jca/ProviderConfig;->CL_STRING:[Ljava/lang/Class;

    #@16
    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, p1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    const-string/jumbo v0, "sun.security.pkcs11.SunPKCS11"

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const-string/jumbo v0, "${java.home}/lib/security/sunpkcs11-solaris.cfg"

    #@f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 82
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->checkSunPKCS11Solaris()V

    #@18
    .line 84
    :cond_0
    iput-object p1, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@1a
    .line 85
    invoke-static {p2}, Lsun/security/jca/ProviderConfig;->expand(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@20
    .line 80
    return-void
.end method

.method constructor <init>(Ljava/security/Provider;)V
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 93
    invoke-virtual {p1}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@d
    .line 94
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@12
    .line 95
    iput-object p1, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;

    #@14
    .line 92
    return-void
.end method

.method private checkSunPKCS11Solaris()V
    .locals 2

    #@0
    .prologue
    .line 103
    new-instance v1, Lsun/security/jca/ProviderConfig$1;

    #@2
    invoke-direct {v1, p0}, Lsun/security/jca/ProviderConfig$1;-><init>(Lsun/security/jca/ProviderConfig;)V

    #@5
    .line 102
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/Boolean;

    #@b
    .line 116
    .local v0, "o":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 117
    const/16 v1, 0x1e

    #@11
    iput v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    #@13
    .line 101
    :cond_0
    return-void
.end method

.method private disableLoad()V
    .locals 1

    #@0
    .prologue
    .line 132
    const/16 v0, 0x1e

    #@2
    iput v0, p0, Lsun/security/jca/ProviderConfig;->tries:I

    #@4
    .line 131
    return-void
.end method

.method private doLoadProvider()Ljava/security/Provider;
    .locals 1

    #@0
    .prologue
    .line 206
    new-instance v0, Lsun/security/jca/ProviderConfig$2;

    #@2
    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$2;-><init>(Lsun/security/jca/ProviderConfig;)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/security/Provider;

    #@b
    return-object v0
.end method

.method private static expand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    const-string/jumbo v0, "${"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 281
    return-object p0

    #@a
    .line 283
    :cond_0
    new-instance v0, Lsun/security/jca/ProviderConfig$3;

    #@c
    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$3;-><init>(Ljava/lang/String;)V

    #@f
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    return-object v0
.end method

.method private hasArgument()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 122
    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 247
    if-eqz p2, :cond_1

    #@3
    .line 248
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    .line 253
    .local v2, "provClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->hasArgument()Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_2

    #@d
    .line 254
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    .line 259
    .local v1, "obj":Ljava/lang/Object;
    :goto_1
    instance-of v3, v1, Ljava/security/Provider;

    #@13
    if-eqz v3, :cond_3

    #@15
    .line 260
    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 261
    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v5, "Loaded provider "

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@32
    .line 263
    :cond_0
    check-cast v1, Ljava/security/Provider;

    #@34
    .end local v1    # "obj":Ljava/lang/Object;
    return-object v1

    #@35
    .line 250
    .end local v2    # "provClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@38
    move-result-object v2

    #@39
    .restart local v2    # "provClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    #@3a
    .line 256
    :cond_2
    sget-object v3, Lsun/security/jca/ProviderConfig;->CL_STRING:[Ljava/lang/Class;

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@3f
    move-result-object v0

    #@40
    .line 257
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    #@41
    new-array v3, v3, [Ljava/lang/Object;

    #@43
    iget-object v4, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@45
    const/4 v5, 0x0

    #@46
    aput-object v4, v3, v5

    #@48
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    .restart local v1    # "obj":Ljava/lang/Object;
    goto :goto_1

    #@4d
    .line 265
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_3
    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@4f
    if-eqz v3, :cond_4

    #@51
    .line 266
    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@53
    new-instance v4, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    const-string/jumbo v5, " is not a provider"

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@6a
    .line 268
    :cond_4
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->disableLoad()V

    #@6d
    .line 269
    return-object v6
.end method

.method private shouldLoad()Z
    .locals 2

    #@0
    .prologue
    .line 127
    iget v0, p0, Lsun/security/jca/ProviderConfig;->tries:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 140
    if-ne p0, p1, :cond_0

    #@3
    .line 141
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 143
    :cond_0
    instance-of v2, p1, Lsun/security/jca/ProviderConfig;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 144
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 146
    check-cast v0, Lsun/security/jca/ProviderConfig;

    #@d
    .line 147
    .local v0, "other":Lsun/security/jca/ProviderConfig;
    iget-object v2, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@f
    iget-object v3, v0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 148
    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@19
    iget-object v2, v0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 147
    :cond_2
    return v1
.end method

.method declared-synchronized getProvider()Ljava/security/Provider;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 168
    :try_start_0
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@4
    .line 169
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 170
    return-object v0

    #@8
    .line 172
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->shouldLoad()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    monitor-exit p0

    #@f
    .line 173
    return-object v4

    #@10
    .line 175
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    #@12
    if-eqz v1, :cond_3

    #@14
    .line 178
    sget-object v1, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 179
    sget-object v1, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Recursion loading provider: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@31
    .line 180
    new-instance v1, Ljava/lang/Exception;

    #@33
    const-string/jumbo v2, "Call trace"

    #@36
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3c
    :cond_2
    monitor-exit p0

    #@3d
    .line 182
    return-object v4

    #@3e
    .line 185
    :cond_3
    const/4 v1, 0x1

    #@3f
    :try_start_3
    iput-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    #@41
    .line 186
    iget v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    #@43
    add-int/lit8 v1, v1, 0x1

    #@45
    iput v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    #@47
    .line 187
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    move-result-object v0

    #@4b
    .line 189
    const/4 v1, 0x0

    #@4c
    :try_start_4
    iput-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    #@4e
    .line 191
    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@50
    monitor-exit p0

    #@51
    .line 192
    return-object v0

    #@52
    .line 188
    :catchall_0
    move-exception v1

    #@53
    .line 189
    const/4 v2, 0x0

    #@54
    :try_start_5
    iput-boolean v2, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    #@56
    .line 188
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@57
    .end local v0    # "p":Ljava/security/Provider;
    :catchall_1
    move-exception v1

    #@58
    monitor-exit p0

    #@59
    throw v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method isLoaded()Z
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->hasArgument()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "(\'"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "\')"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0

    #@2a
    .line 159
    :cond_0
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    #@2c
    return-object v0
.end method

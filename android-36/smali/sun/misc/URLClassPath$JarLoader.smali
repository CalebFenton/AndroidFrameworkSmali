.class Lsun/misc/URLClassPath$JarLoader;
.super Lsun/misc/URLClassPath$Loader;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/URLClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JarLoader"
.end annotation


# instance fields
.field private final greylist-max-o acc:Ljava/security/AccessControlContext;

.field private greylist-max-o closed:Z

.field private final greylist-max-o csu:Ljava/net/URL;

.field private greylist-max-o handler:Ljava/net/URLStreamHandler;

.field private blacklist index:Ljdk/internal/util/jar/JarIndex;

.field private greylist-max-o jar:Ljava/util/jar/JarFile;

.field private final greylist-max-o lmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetacc(Lsun/misc/URLClassPath$JarLoader;)Ljava/security/AccessControlContext;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcsu(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethandler(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URLStreamHandler;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetindex(Lsun/misc/URLClassPath$JarLoader;)Ljdk/internal/util/jar/JarIndex;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetjar(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlmap(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputindex(Lsun/misc/URLClassPath$JarLoader;Ljdk/internal/util/jar/JarIndex;)V
    .registers 2

    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputjar(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)V
    .registers 2

    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetJarFile(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 2

    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/net/URL;Ljava/net/URLStreamHandler;Ljava/util/HashMap;Ljava/security/AccessControlContext;)V
    .registers 11
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "jarHandler"    # Ljava/net/URLStreamHandler;
    .param p4, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/net/URLStreamHandler;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/misc/URLClassPath$Loader;",
            ">;",
            "Ljava/security/AccessControlContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    .local p3, "loaderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lsun/misc/URLClassPath$Loader;>;"
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "jar"

    const-string v2, ""

    const/4 v3, -0x1

    move-object v5, p2

    .end local p2    # "jarHandler":Ljava/net/URLStreamHandler;
    .local v5, "jarHandler":Ljava/net/URLStreamHandler;
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Lsun/misc/URLClassPath$Loader;-><init>(Ljava/net/URL;)V

    .line 817
    const/4 p2, 0x0

    iput-boolean p2, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    .line 832
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    .line 833
    iput-object v5, p0, Lsun/misc/URLClassPath$JarLoader;->handler:Ljava/net/URLStreamHandler;

    .line 834
    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    .line 835
    iput-object p4, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    .line 837
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 838
    return-void
.end method

.method static greylist-max-o checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;
    .registers 3
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lsun/misc/URLClassPath;->-$$Nest$sfgetDISABLE_JAR_CHECKING()Z

    move-result v0

    if-nez v0, :cond_23

    .line 904
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->startsWithLocHeader()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_23

    .line 905
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Jar file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 907
    .local v0, "x":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 910
    goto :goto_22

    .line 908
    :catch_1e
    move-exception v1

    .line 909
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 911
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_22
    throw v0

    .line 914
    .end local v0    # "x":Ljava/io/IOException;
    :cond_23
    :goto_23
    return-object p0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    if-nez v0, :cond_17

    .line 862
    :try_start_4
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$1;

    invoke-direct {v0, p0}, Lsun/misc/URLClassPath$JarLoader$1;-><init>(Lsun/misc/URLClassPath$JarLoader;)V

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/security/PrivilegedActionException; {:try_start_4 .. :try_end_e} :catch_f

    .line 897
    goto :goto_17

    .line 895
    :catch_f
    move-exception v0

    .line 896
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 899
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o getJarFile(Ljava/net/URL;)Ljava/util/jar/JarFile;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    invoke-direct {p0, p1}, Lsun/misc/URLClassPath$JarLoader;->isOptimizable(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 920
    new-instance v0, Lsun/misc/FileURLMapper;

    invoke-direct {v0, p1}, Lsun/misc/FileURLMapper;-><init>(Ljava/net/URL;)V

    .line 921
    .local v0, "p":Lsun/misc/FileURLMapper;
    invoke-virtual {v0}, Lsun/misc/FileURLMapper;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 924
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v1

    return-object v1

    .line 922
    :cond_1f
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    .end local v0    # "p":Lsun/misc/FileURLMapper;
    :cond_29
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 927
    .local v0, "uc":Ljava/net/URLConnection;
    const-string v1, "UA-Java-Version"

    sget-object v2, Lsun/misc/URLClassPath;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    move-object v1, v0

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    .line 929
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    invoke-static {v1}, Lsun/misc/URLClassPath$JarLoader;->checkJar(Ljava/util/jar/JarFile;)Ljava/util/jar/JarFile;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o isOptimizable(Ljava/net/URL;)Z
    .registers 4
    .param p1, "url"    # Ljava/net/URL;

    .line 856
    const-string v0, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;
    .registers 8
    .param p1, "base"    # Ljava/net/URL;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    .line 1201
    .local v1, "urls":[Ljava/net/URL;
    const/4 v2, 0x0

    .line 1202
    .local v2, "i":I
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1203
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1204
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 1205
    nop

    .end local v3    # "path":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1206
    goto :goto_c

    .line 1207
    :cond_21
    return-object v1
.end method

.method private greylist-max-o parseExtensionsDependencies()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    return-void
.end method


# virtual methods
.method greylist-max-o checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .param p3, "entry"    # Ljava/util/jar/JarEntry;

    .line 953
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lsun/net/www/ParseUtil;->encodePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 954
    .local v1, "url":Ljava/net/URL;
    if-eqz p2, :cond_14

    .line 955
    invoke-static {v1}, Lsun/misc/URLClassPath;->check(Ljava/net/URL;)V
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_1d
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_14} :catch_1b

    .line 964
    :cond_14
    nop

    .line 966
    new-instance v0, Lsun/misc/URLClassPath$JarLoader$2;

    invoke-direct {v0, p0, p1, v1, p3}, Lsun/misc/URLClassPath$JarLoader$2;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V

    return-object v0

    .line 962
    .end local v1    # "url":Ljava/net/URL;
    :catch_1b
    move-exception v1

    .line 963
    .local v1, "e":Ljava/security/AccessControlException;
    return-object v0

    .line 960
    .end local v1    # "e":Ljava/security/AccessControlException;
    :catch_1d
    move-exception v1

    .line 961
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 957
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1f
    move-exception v1

    .line 958
    .local v1, "e":Ljava/net/MalformedURLException;
    return-object v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    iget-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    if-nez v0, :cond_f

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/misc/URLClassPath$JarLoader;->closed:Z

    .line 846
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 847
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    .line 849
    :cond_f
    return-void
.end method

.method greylist-max-o findResource(Ljava/lang/String;Z)Ljava/net/URL;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 1014
    invoke-virtual {p0, p1, p2}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v0

    .line 1015
    .local v0, "rsc":Lsun/misc/Resource;
    if-eqz v0, :cond_b

    .line 1016
    invoke-virtual {v0}, Lsun/misc/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1018
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getClassPath()[Ljava/net/URL;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1164
    return-object v1

    .line 1167
    :cond_6
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V

    .line 1168
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->parseExtensionsDependencies()V

    .line 1169
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->hasClassPathAttribute()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1170
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 1171
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_31

    .line 1172
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 1173
    .local v2, "attr":Ljava/util/jar/Attributes;
    if-eqz v2, :cond_31

    .line 1174
    sget-object v3, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    .line 1175
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_31

    .line 1176
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {p0, v1, v3}, Lsun/misc/URLClassPath$JarLoader;->parseClassPath(Ljava/net/URL;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v1

    return-object v1

    .line 1181
    .end local v0    # "man":Ljava/util/jar/Manifest;
    .end local v2    # "attr":Ljava/util/jar/Attributes;
    .end local v3    # "value":Ljava/lang/String;
    :cond_31
    return-object v1
.end method

.method blacklist getIndex()Ljdk/internal/util/jar/JarIndex;
    .registers 3

    .line 937
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_7

    .line 940
    nop

    .line 941
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    return-object v0

    .line 938
    :catch_7
    move-exception v0

    .line 939
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist getJarFile()Ljava/util/jar/JarFile;
    .registers 2

    .line 852
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    return-object v0
.end method

.method greylist-max-o getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z

    .line 1026
    :try_start_0
    invoke-direct {p0}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_21

    .line 1029
    nop

    .line 1030
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 1031
    .local v0, "entry":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_11

    .line 1032
    invoke-virtual {p0, p1, p2, v0}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v1

    return-object v1

    .line 1034
    :cond_11
    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    if-nez v1, :cond_17

    .line 1035
    const/4 v1, 0x0

    return-object v1

    .line 1037
    :cond_17
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1038
    .local v1, "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v1}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v2

    return-object v2

    .line 1027
    .end local v0    # "entry":Ljava/util/jar/JarEntry;
    .end local v1    # "visited":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_21
    move-exception v0

    .line 1028
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method greylist-max-o getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;
    .registers 22
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "check"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/misc/Resource;"
        }
    .end annotation

    .line 1053
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v0, 0x0

    .line 1054
    .local v0, "count":I
    const/4 v5, 0x0

    .line 1059
    .local v5, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v6, v1, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    invoke-virtual {v6, v2}, Ljdk/internal/util/jar/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v6

    move-object v5, v6

    const/4 v7, 0x0

    if-nez v6, :cond_15

    .line 1060
    return-object v7

    .line 1063
    :cond_15
    :goto_15
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    .line 1064
    .local v6, "size":I
    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 1066
    .local v8, "jarFiles":[Ljava/lang/String;
    :goto_21
    if-ge v0, v6, :cond_df

    .line 1067
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "count":I
    .local v9, "count":I
    aget-object v10, v8, v0

    .line 1072
    .local v10, "jarName":Ljava/lang/String;
    :try_start_27
    new-instance v0, Ljava/net/URL;

    iget-object v11, v1, Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;

    invoke-direct {v0, v11, v10}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v11, v0

    .line 1073
    .local v11, "url":Ljava/net/URL;
    invoke-static {v11}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "urlNoFragString":Ljava/lang/String;
    iget-object v12, v1, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/misc/URLClassPath$JarLoader;

    move-object v13, v12

    .local v13, "newLoader":Lsun/misc/URLClassPath$JarLoader;
    if-nez v12, :cond_7f

    .line 1078
    new-instance v12, Lsun/misc/URLClassPath$JarLoader$3;

    invoke-direct {v12, v1, v11}, Lsun/misc/URLClassPath$JarLoader$3;-><init>(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)V

    iget-object v14, v1, Lsun/misc/URLClassPath$JarLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v12, v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/misc/URLClassPath$JarLoader;

    move-object v13, v12

    .line 1090
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Ljdk/internal/util/jar/JarIndex;

    move-result-object v12

    .line 1091
    .local v12, "newIndex":Ljdk/internal/util/jar/JarIndex;
    if-eqz v12, :cond_71

    .line 1092
    const-string v14, "/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 1093
    .local v14, "pos":I
    iget-object v15, v1, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;
    :try_end_5a
    .catch Ljava/security/PrivilegedActionException; {:try_start_27 .. :try_end_5a} :catch_d2
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_5a} :catch_cc

    move-object/from16 v16, v7

    const/4 v7, -0x1

    if-ne v14, v7, :cond_64

    .line 1094
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    goto :goto_6d

    :cond_64
    add-int/lit8 v7, v14, 0x1

    move-object/from16 v17, v5

    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v17, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    :try_start_69
    invoke-virtual {v10, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1093
    :goto_6d
    invoke-virtual {v12, v15, v5}, Ljdk/internal/util/jar/JarIndex;->merge(Ljdk/internal/util/jar/JarIndex;Ljava/lang/String;)V

    goto :goto_75

    .line 1091
    .end local v14    # "pos":I
    .end local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_71
    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .line 1098
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_75
    iget-object v5, v1, Lsun/misc/URLClassPath$JarLoader;->lmap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/security/PrivilegedActionException; {:try_start_69 .. :try_end_7a} :catch_7d
    .catch Ljava/net/MalformedURLException; {:try_start_69 .. :try_end_7a} :catch_7b

    goto :goto_83

    .line 1102
    .end local v0    # "urlNoFragString":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "newIndex":Ljdk/internal/util/jar/JarIndex;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    :catch_7b
    move-exception v0

    goto :goto_d1

    .line 1100
    :catch_7d
    move-exception v0

    goto :goto_d7

    .line 1074
    .end local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v0    # "urlNoFragString":Ljava/lang/String;
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    :cond_7f
    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .line 1104
    .end local v0    # "urlNoFragString":Ljava/lang/String;
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_83
    nop

    .line 1110
    invoke-static {v11}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move v5, v0

    .line 1111
    .local v5, "visitedURL":Z
    if-nez v5, :cond_b8

    .line 1113
    :try_start_91
    invoke-direct {v13}, Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_b1

    .line 1116
    nop

    .line 1117
    iget-object v0, v13, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 1118
    .local v0, "entry":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_a2

    .line 1119
    invoke-virtual {v13, v2, v3, v0}, Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;

    move-result-object v7

    return-object v7

    .line 1126
    :cond_a2
    invoke-virtual {v13, v2}, Lsun/misc/URLClassPath$JarLoader;->validIndex(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a9

    goto :goto_b8

    .line 1128
    :cond_a9
    new-instance v7, Lsun/misc/InvalidJarIndexException;

    const-string v12, "Invalid index"

    invoke-direct {v7, v12}, Lsun/misc/InvalidJarIndexException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1114
    .end local v0    # "entry":Ljava/util/jar/JarEntry;
    :catch_b1
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 1137
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b8
    :goto_b8
    if-nez v5, :cond_d8

    if-eq v13, v1, :cond_d8

    .line 1138
    invoke-virtual {v13}, Lsun/misc/URLClassPath$JarLoader;->getIndex()Ljdk/internal/util/jar/JarIndex;

    move-result-object v0

    if-nez v0, :cond_c3

    .line 1139
    goto :goto_d8

    .line 1144
    :cond_c3
    invoke-virtual {v13, v2, v3, v4}, Lsun/misc/URLClassPath$JarLoader;->getResource(Ljava/lang/String;ZLjava/util/Set;)Lsun/misc/Resource;

    move-result-object v0

    move-object v7, v0

    .local v7, "res":Lsun/misc/Resource;
    if-eqz v0, :cond_cb

    .line 1146
    return-object v7

    .line 1148
    .end local v5    # "visitedURL":Z
    .end local v10    # "jarName":Ljava/lang/String;
    .end local v11    # "url":Ljava/net/URL;
    .end local v13    # "newLoader":Lsun/misc/URLClassPath$JarLoader;
    :cond_cb
    goto :goto_d8

    .line 1102
    .end local v7    # "res":Lsun/misc/Resource;
    .end local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v5, "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v10    # "jarName":Ljava/lang/String;
    :catch_cc
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .line 1103
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_d1
    goto :goto_d8

    .line 1100
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_d2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .line 1101
    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    .restart local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_d7
    nop

    .line 1066
    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    .end local v10    # "jarName":Ljava/lang/String;
    :cond_d8
    :goto_d8
    move v0, v9

    move-object/from16 v7, v16

    move-object/from16 v5, v17

    goto/16 :goto_21

    .line 1151
    .end local v9    # "count":I
    .end local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local v0, "count":I
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_df
    move-object/from16 v17, v5

    move-object/from16 v16, v7

    .end local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v5, v1, Lsun/misc/URLClassPath$JarLoader;->index:Ljdk/internal/util/jar/JarIndex;

    invoke-virtual {v5, v2}, Ljdk/internal/util/jar/JarIndex;->get(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v5

    .line 1154
    .end local v6    # "size":I
    .end local v17    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "jarFilesList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lt v0, v6, :cond_f0

    .line 1155
    return-object v16

    .line 1154
    :cond_f0
    move-object/from16 v7, v16

    goto/16 :goto_15
.end method

.method greylist-max-o validIndex(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 989
    move-object v0, p1

    .line 991
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    .local v3, "pos":I
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_10

    .line 992
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 997
    :cond_10
    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 998
    .local v2, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 999
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 1000
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1001
    .local v7, "entryName":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    if-eq v8, v5, :cond_31

    .line 1002
    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1003
    :cond_31
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1004
    const/4 v1, 0x1

    return v1

    .line 1007
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    :cond_39
    return v4
.end method

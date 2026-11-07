.class public Ljdk/internal/access/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# static fields
.field private static blacklist javaIOFileDescriptorAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

.field private static final blacklist javaLangAccess:Ljava/lang/JavaLangAccess;

.field private static blacklist javaObjectInputStreamAccess:Ljdk/internal/access/JavaObjectInputStreamAccess;

.field private static blacklist javaUtilCollectionAccess:Ljdk/internal/access/JavaUtilCollectionAccess;

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljdk/internal/access/SharedSecrets;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 49
    new-instance v0, Ljava/lang/JavaLangAccess;

    invoke-direct {v0}, Ljava/lang/JavaLangAccess;-><init>()V

    sput-object v0, Ljdk/internal/access/SharedSecrets;->javaLangAccess:Ljava/lang/JavaLangAccess;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensureClassInitialized(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 415
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljdk/internal/access/SharedSecrets;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0, p0}, Ljdk/internal/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 416
    return-void
.end method

.method public static blacklist getJavaIOFileDescriptorAccess()Ljdk/internal/access/JavaIOFileDescriptorAccess;
    .registers 2

    .line 254
    sget-object v0, Ljdk/internal/access/SharedSecrets;->javaIOFileDescriptorAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    .line 255
    .local v0, "access":Ljdk/internal/access/JavaIOFileDescriptorAccess;
    if-nez v0, :cond_b

    .line 256
    const-class v1, Ljava/io/FileDescriptor;

    invoke-static {v1}, Ljdk/internal/access/SharedSecrets;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 257
    sget-object v0, Ljdk/internal/access/SharedSecrets;->javaIOFileDescriptorAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    .line 259
    :cond_b
    return-object v0
.end method

.method public static blacklist getJavaLangAccess()Ljava/lang/JavaLangAccess;
    .registers 1

    .line 125
    sget-object v0, Ljdk/internal/access/SharedSecrets;->javaLangAccess:Ljava/lang/JavaLangAccess;

    return-object v0
.end method

.method public static blacklist getJavaObjectInputStreamAccess()Ljdk/internal/access/JavaObjectInputStreamAccess;
    .registers 2

    .line 332
    sget-object v0, Ljdk/internal/access/SharedSecrets;->javaObjectInputStreamAccess:Ljdk/internal/access/JavaObjectInputStreamAccess;

    .line 333
    .local v0, "access":Ljdk/internal/access/JavaObjectInputStreamAccess;
    if-nez v0, :cond_b

    .line 334
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-static {v1}, Ljdk/internal/access/SharedSecrets;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 335
    sget-object v0, Ljdk/internal/access/SharedSecrets;->javaObjectInputStreamAccess:Ljdk/internal/access/JavaObjectInputStreamAccess;

    .line 337
    :cond_b
    return-object v0
.end method

.method public static blacklist getJavaUtilCollectionAccess()Ljdk/internal/access/JavaUtilCollectionAccess;
    .registers 4

    .line 95
    sget-object v0, Ljdk/internal/access/SharedSecrets;->javaUtilCollectionAccess:Ljdk/internal/access/JavaUtilCollectionAccess;

    .line 96
    .local v0, "access":Ljdk/internal/access/JavaUtilCollectionAccess;
    if-nez v0, :cond_11

    .line 98
    :try_start_4
    const-string v1, "java.util.ImmutableCollections$Access"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 99
    sget-object v1, Ljdk/internal/access/SharedSecrets;->javaUtilCollectionAccess:Ljdk/internal/access/JavaUtilCollectionAccess;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_d} :catch_f

    move-object v0, v1

    .line 100
    :goto_e
    goto :goto_11

    :catch_f
    move-exception v1

    goto :goto_e

    .line 102
    :cond_11
    :goto_11
    return-object v0
.end method

.method public static blacklist setJavaIOFileDescriptorAccess(Ljdk/internal/access/JavaIOFileDescriptorAccess;)V
    .registers 1
    .param p0, "jiofda"    # Ljdk/internal/access/JavaIOFileDescriptorAccess;

    .line 236
    sput-object p0, Ljdk/internal/access/SharedSecrets;->javaIOFileDescriptorAccess:Ljdk/internal/access/JavaIOFileDescriptorAccess;

    .line 237
    return-void
.end method

.method public static blacklist setJavaObjectInputStreamAccess(Ljdk/internal/access/JavaObjectInputStreamAccess;)V
    .registers 1
    .param p0, "access"    # Ljdk/internal/access/JavaObjectInputStreamAccess;

    .line 340
    sput-object p0, Ljdk/internal/access/SharedSecrets;->javaObjectInputStreamAccess:Ljdk/internal/access/JavaObjectInputStreamAccess;

    .line 341
    return-void
.end method

.method public static blacklist setJavaUtilCollectionAccess(Ljdk/internal/access/JavaUtilCollectionAccess;)V
    .registers 1
    .param p0, "juca"    # Ljdk/internal/access/JavaUtilCollectionAccess;

    .line 92
    sput-object p0, Ljdk/internal/access/SharedSecrets;->javaUtilCollectionAccess:Ljdk/internal/access/JavaUtilCollectionAccess;

    .line 93
    return-void
.end method

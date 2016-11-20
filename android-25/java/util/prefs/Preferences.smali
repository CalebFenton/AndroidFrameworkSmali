.class public abstract Ljava/util/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final MAX_KEY_LENGTH:I = 0x50

.field public static final MAX_NAME_LENGTH:I = 0x50

.field public static final MAX_VALUE_LENGTH:I = 0x2000

.field private static factory:Ljava/util/prefs/PreferencesFactory;

.field private static prefsPerm:Ljava/security/Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 228
    invoke-static {}, Ljava/util/prefs/Preferences;->findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@6
    .line 392
    new-instance v0, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v1, "preferences"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    sput-object v0, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    #@10
    .line 225
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;
    .locals 4

    #@0
    .prologue
    .line 233
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    #@2
    invoke-static {v3}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/prefs/PreferencesFactory;

    #@8
    .line 234
    .local v2, "result":Ljava/util/prefs/PreferencesFactory;
    if-eqz v2, :cond_0

    #@a
    .line 235
    return-object v2

    #@b
    .line 238
    :cond_0
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    #@d
    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v1

    #@15
    .local v1, "impl$iterator":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Ljava/util/prefs/PreferencesFactory;

    #@21
    .line 239
    .local v0, "impl":Ljava/util/prefs/PreferencesFactory;
    return-object v0

    #@22
    .line 242
    .end local v0    # "impl":Ljava/util/prefs/PreferencesFactory;
    :cond_1
    new-instance v3, Ljava/util/prefs/FileSystemPreferencesFactory;

    #@24
    invoke-direct {v3}, Ljava/util/prefs/FileSystemPreferencesFactory;-><init>()V

    #@27
    return-object v3
.end method

.method public static importPreferences(Ljava/io/InputStream;)V
    .locals 0
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 1219
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->importPreferences(Ljava/io/InputStream;)V

    #@3
    .line 1217
    return-void
.end method

.method private static nodeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;

    #@0
    .prologue
    const/16 v5, 0x2e

    #@2
    const/4 v4, 0x0

    #@3
    .line 376
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    .line 378
    const-string/jumbo v4, "Arrays have no associated preferences node."

    #@e
    .line 377
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 379
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 380
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@19
    move-result v2

    #@1a
    .line 381
    .local v2, "pkgEndIndex":I
    if-gez v2, :cond_1

    #@1c
    .line 382
    const-string/jumbo v3, "/<unnamed>"

    #@1f
    return-object v3

    #@20
    .line 383
    :cond_1
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 384
    .local v1, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "/"

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const/16 v4, 0x2f

    #@32
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3
.end method

.method public static setPreferencesFactory(Ljava/util/prefs/PreferencesFactory;)Ljava/util/prefs/PreferencesFactory;
    .locals 1
    .param p0, "pf"    # Ljava/util/prefs/PreferencesFactory;

    #@0
    .prologue
    .line 250
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@2
    .line 251
    .local v0, "previous":Ljava/util/prefs/PreferencesFactory;
    sput-object p0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@4
    .line 252
    return-object v0
.end method

.method public static systemNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    #@0
    .prologue
    .line 365
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0}, Ljava/util/prefs/Preferences;->nodeName(Ljava/lang/Class;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static systemRoot()Ljava/util/prefs/Preferences;
    .locals 2

    #@0
    .prologue
    .line 429
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 431
    sget-object v1, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 433
    :cond_0
    sget-object v1, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@d
    invoke-interface {v1}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public static userNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    #@0
    .prologue
    .line 316
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0}, Ljava/util/prefs/Preferences;->nodeName(Ljava/lang/Class;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static userRoot()Ljava/util/prefs/Preferences;
    .locals 2

    #@0
    .prologue
    .line 408
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 409
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 410
    sget-object v1, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@b
    .line 412
    :cond_0
    sget-object v1, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@d
    invoke-interface {v1}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method


# virtual methods
.method public abstract absolutePath()Ljava/lang/String;
.end method

.method public abstract addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract childrenNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportNode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract exportSubtree(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getByteArray(Ljava/lang/String;[B)[B
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract isUserNode()Z
.end method

.method public abstract keys()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
.end method

.method public abstract nodeExists(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract parent()Ljava/util/prefs/Preferences;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract putDouble(Ljava/lang/String;D)V
.end method

.method public abstract putFloat(Ljava/lang/String;F)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract removeNode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

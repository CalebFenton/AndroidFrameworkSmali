.class public abstract Ljava/util/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final whitelist test-api MAX_KEY_LENGTH:I = 0x50

.field public static final whitelist test-api MAX_NAME_LENGTH:I = 0x50

.field public static final whitelist test-api MAX_VALUE_LENGTH:I = 0x2000

.field private static greylist-max-o factory:Ljava/util/prefs/PreferencesFactory;

.field private static greylist-max-o prefsPerm:Ljava/security/Permission;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 229
    invoke-static {}, Ljava/util/prefs/Preferences;->factory()Ljava/util/prefs/PreferencesFactory;

    move-result-object v0

    sput-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 480
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "preferences"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    return-void
.end method

.method private static blacklist factory()Ljava/util/prefs/PreferencesFactory;
    .registers 3

    .line 319
    const-class v0, Ljava/util/prefs/PreferencesFactory;

    invoke-static {v0}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/PreferencesFactory;

    .line 320
    .local v0, "result":Ljava/util/prefs/PreferencesFactory;
    if-eqz v0, :cond_b

    .line 321
    return-object v0

    .line 324
    :cond_b
    const-class v1, Ljava/util/prefs/PreferencesFactory;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/PreferencesFactory;

    .line 325
    .local v1, "impl":Ljava/util/prefs/PreferencesFactory;
    return-object v1

    .line 328
    .end local v1    # "impl":Ljava/util/prefs/PreferencesFactory;
    :cond_22
    new-instance v1, Ljava/util/prefs/FileSystemPreferencesFactory;

    invoke-direct {v1}, Ljava/util/prefs/FileSystemPreferencesFactory;-><init>()V

    return-object v1
.end method

.method public static whitelist test-api importPreferences(Ljava/io/InputStream;)V
    .registers 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    .line 1309
    invoke-static {p0}, Ljava/util/prefs/XmlSupport;->importPreferences(Ljava/io/InputStream;)V

    .line 1310
    return-void
.end method

.method private static greylist-max-o nodeName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 464
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_34

    .line 467
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 469
    .local v2, "pkgEndIndex":I
    if-gez v2, :cond_15

    .line 470
    const-string v1, "/<unnamed>"

    return-object v1

    .line 471
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 465
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "pkgEndIndex":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays have no associated preferences node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o setPreferencesFactory(Ljava/util/prefs/PreferencesFactory;)Ljava/util/prefs/PreferencesFactory;
    .registers 2
    .param p0, "pf"    # Ljava/util/prefs/PreferencesFactory;

    .line 335
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 336
    .local v0, "previous":Ljava/util/prefs/PreferencesFactory;
    sput-object p0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    .line 337
    return-object v0
.end method

.method public static whitelist test-api systemNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .line 453
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->nodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api systemRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .line 519
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 520
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 521
    sget-object v1, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 523
    :cond_b
    sget-object v1, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v1}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api userNodeForPackage(Ljava/lang/Class;)Ljava/util/prefs/Preferences;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/prefs/Preferences;"
        }
    .end annotation

    .line 403
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-static {p0}, Ljava/util/prefs/Preferences;->nodeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api userRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .line 497
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 498
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 499
    sget-object v1, Ljava/util/prefs/Preferences;->prefsPerm:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 501
    :cond_b
    sget-object v1, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    invoke-interface {v1}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract whitelist test-api absolutePath()Ljava/lang/String;
.end method

.method public abstract whitelist test-api addNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract whitelist test-api addPreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract whitelist test-api childrenNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api exportNode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api exportSubtree(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract whitelist test-api getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract whitelist test-api getByteArray(Ljava/lang/String;[B)[B
.end method

.method public abstract whitelist test-api getDouble(Ljava/lang/String;D)D
.end method

.method public abstract whitelist test-api getFloat(Ljava/lang/String;F)F
.end method

.method public abstract whitelist test-api getInt(Ljava/lang/String;I)I
.end method

.method public abstract whitelist test-api getLong(Ljava/lang/String;J)J
.end method

.method public abstract whitelist test-api isUserNode()Z
.end method

.method public abstract whitelist test-api keys()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api name()Ljava/lang/String;
.end method

.method public abstract whitelist test-api node(Ljava/lang/String;)Ljava/util/prefs/Preferences;
.end method

.method public abstract whitelist test-api nodeExists(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api parent()Ljava/util/prefs/Preferences;
.end method

.method public abstract whitelist test-api put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract whitelist test-api putByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract whitelist test-api putDouble(Ljava/lang/String;D)V
.end method

.method public abstract whitelist test-api putFloat(Ljava/lang/String;F)V
.end method

.method public abstract whitelist test-api putInt(Ljava/lang/String;I)V
.end method

.method public abstract whitelist test-api putLong(Ljava/lang/String;J)V
.end method

.method public abstract whitelist test-api remove(Ljava/lang/String;)V
.end method

.method public abstract whitelist test-api removeNode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api removeNodeChangeListener(Ljava/util/prefs/NodeChangeListener;)V
.end method

.method public abstract whitelist test-api removePreferenceChangeListener(Ljava/util/prefs/PreferenceChangeListener;)V
.end method

.method public abstract whitelist test-api sync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

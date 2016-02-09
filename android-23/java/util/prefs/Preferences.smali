.class public abstract Ljava/util/prefs/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final MAX_KEY_LENGTH:I = 0x50

.field public static final MAX_NAME_LENGTH:I = 0x50

.field public static final MAX_VALUE_LENGTH:I = 0x2000

.field private static volatile factory:Ljava/util/prefs/PreferencesFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 102
    invoke-static {}, Ljava/util/prefs/Preferences;->findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@6
    .line 85
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static findPreferencesFactory()Ljava/util/prefs/PreferencesFactory;
    .locals 4

    #@0
    .prologue
    .line 115
    const-class v3, Ljava/util/prefs/PreferencesFactory;

    #@2
    invoke-static {v3}, Ljava/util/ServiceLoader;->loadFromSystemProperty(Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/prefs/PreferencesFactory;

    #@8
    .line 116
    .local v2, "result":Ljava/util/prefs/PreferencesFactory;
    if-eqz v2, :cond_0

    #@a
    .line 117
    return-object v2

    #@b
    .line 120
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
    .line 121
    .local v0, "impl":Ljava/util/prefs/PreferencesFactory;
    return-object v0

    #@22
    .line 124
    .end local v0    # "impl":Ljava/util/prefs/PreferencesFactory;
    :cond_1
    new-instance v3, Ljava/util/prefs/FilePreferencesFactoryImpl;

    #@24
    invoke-direct {v3}, Ljava/util/prefs/FilePreferencesFactoryImpl;-><init>()V

    #@27
    return-object v3
.end method

.method private static getNodeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 859
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@3
    move-result-object v0

    #@4
    .line 860
    .local v0, "p":Ljava/lang/Package;
    if-nez v0, :cond_0

    #@6
    .line 861
    const-string/jumbo v1, "/<unnamed>"

    #@9
    return-object v1

    #@a
    .line 863
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "/"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    const/16 v3, 0x2e

    #@1c
    const/16 v4, 0x2f

    #@1e
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public static importPreferences(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "istream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/InvalidPreferencesFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 450
    if-nez p0, :cond_0

    #@2
    .line 451
    new-instance v0, Ljava/net/MalformedURLException;

    #@4
    const-string/jumbo v1, "Inputstream cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 453
    :cond_0
    invoke-static {p0}, Ljava/util/prefs/XMLParser;->importPrefs(Ljava/io/InputStream;)V

    #@e
    .line 449
    return-void
.end method

.method public static setPreferencesFactory(Ljava/util/prefs/PreferencesFactory;)Ljava/util/prefs/PreferencesFactory;
    .locals 1
    .param p0, "pf"    # Ljava/util/prefs/PreferencesFactory;

    #@0
    .prologue
    .line 108
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@2
    .line 109
    .local v0, "previous":Ljava/util/prefs/PreferencesFactory;
    sput-object p0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@4
    .line 110
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
    .line 814
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@2
    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0}, Ljava/util/prefs/Preferences;->getNodeName(Ljava/lang/Class;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 828
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@2
    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->systemRoot()Ljava/util/prefs/Preferences;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    .line 854
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@2
    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0}, Ljava/util/prefs/Preferences;->getNodeName(Ljava/lang/Class;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static userRoot()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 877
    sget-object v0, Ljava/util/prefs/Preferences;->factory:Ljava/util/prefs/PreferencesFactory;

    #@2
    invoke-interface {v0}, Ljava/util/prefs/PreferencesFactory;->userRoot()Ljava/util/prefs/Preferences;

    #@5
    move-result-object v0

    #@6
    return-object v0
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

.class public Ljava/util/prefs/FilePreferencesImpl;
.super Ljava/util/prefs/AbstractPreferences;
.source "FilePreferencesImpl.java"


# static fields
.field private static final PREFS_FILE_NAME:Ljava/lang/String; = "prefs.xml"


# instance fields
.field private dir:Ljava/io/File;

.field private final path:Ljava/lang/String;

.field private prefs:Ljava/util/Properties;

.field private prefsFile:Ljava/io/File;

.field private removed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/prefs/FilePreferencesImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isUserNode"    # Z

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v1, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    #@7
    .line 53
    new-instance v0, Ljava/util/HashSet;

    #@9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@c
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    #@e
    .line 56
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    #@15
    .line 72
    iput-object p1, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@17
    .line 73
    iput-boolean p2, p0, Ljava/util/prefs/FilePreferencesImpl;->userNode:Z

    #@19
    .line 74
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    #@1c
    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    #@3
    .line 53
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    #@a
    .line 56
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    #@11
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    check-cast p1, Ljava/util/prefs/FilePreferencesImpl;

    #@18
    .end local p1    # "parent":Ljava/util/prefs/AbstractPreferences;
    iget-object v1, p1, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@2e
    .line 83
    invoke-direct {p0}, Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V

    #@31
    .line 80
    return-void
.end method

.method private initPrefs()V
    .locals 3

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    #@2
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    #@9
    .line 88
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    #@b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    :goto_0
    iput-boolean v0, p0, Ljava/util/prefs/FilePreferencesImpl;->newNode:Z

    #@14
    .line 89
    new-instance v0, Ljava/io/File;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    iget-object v2, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "prefs.xml"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@35
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    #@37
    .line 90
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    #@39
    invoke-static {v0}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@3f
    .line 86
    return-void

    #@40
    .line 88
    :cond_0
    const/4 v0, 0x1

    #@41
    goto :goto_0
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    #@5
    .line 110
    .local v0, "child":Ljava/util/prefs/FilePreferencesImpl;
    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    #@2
    new-instance v2, Ljava/util/prefs/FilePreferencesImpl$1;

    #@4
    invoke-direct {v2, p0}, Ljava/util/prefs/FilePreferencesImpl$1;-><init>(Ljava/util/prefs/FilePreferencesImpl;)V

    #@7
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 100
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 101
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Cannot get child names for "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 102
    const-string/jumbo v3, " (path is "

    #@26
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 102
    iget-object v3, p0, Ljava/util/prefs/FilePreferencesImpl;->path:Ljava/lang/String;

    #@2c
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 102
    const-string/jumbo v3, ")"

    #@33
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1

    #@3f
    .line 104
    :cond_0
    return-object v0
.end method

.method protected flushSpi()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->isRemoved()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 118
    return-void

    #@7
    .line 121
    :cond_0
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    #@9
    invoke-static {v4}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    #@c
    move-result-object v0

    #@d
    .line 123
    .local v0, "currentPrefs":Ljava/util/Properties;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    #@f
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .line 124
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v0, v4}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 137
    .end local v0    # "currentPrefs":Ljava/util/Properties;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    #@22
    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/util/prefs/BackingStoreException;

    #@24
    invoke-direct {v4, v1}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v4

    #@28
    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentPrefs":Ljava/util/Properties;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    #@2a
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@2d
    .line 128
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    #@2f
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v2

    #@33
    .line 129
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    .line 131
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@3f
    invoke-virtual {v4, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    goto :goto_1

    #@47
    .line 133
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    #@49
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    #@4c
    .line 135
    iput-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@4e
    .line 136
    iget-object v4, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    #@50
    iget-object v5, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@52
    invoke-static {v4, v5}, Ljava/util/prefs/XMLParser;->writeXmlPreferences(Ljava/io/File;Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@55
    .line 114
    return-void
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 145
    :try_start_0
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 146
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    #@7
    invoke-static {v1}, Ljava/util/prefs/XMLParser;->readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@d
    .line 148
    :cond_0
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 149
    :catch_0
    move-exception v0

    #@15
    .line 151
    .local v0, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@2
    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    .line 158
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@9
    move-result v1

    #@a
    new-array v1, v1, [Ljava/lang/String;

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, [Ljava/lang/String;

    #@12
    return-object v1
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@5
    .line 164
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a
    .line 162
    return-void
.end method

.method protected removeNodeSpi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->prefsFile:Ljava/io/File;

    #@2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@5
    .line 170
    iget-object v1, p0, Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;

    #@7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@a
    move-result v0

    #@b
    .line 171
    .local v0, "removeSucceed":Z
    if-nez v0, :cond_0

    #@d
    .line 172
    new-instance v1, Ljava/util/prefs/BackingStoreException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Cannot remove "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/util/prefs/BackingStoreException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 168
    :cond_0
    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->prefs:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 179
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->updated:Ljava/util/Set;

    #@7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@a
    .line 180
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl;->removed:Ljava/util/Set;

    #@c
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 177
    return-void
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl;->flushSpi()V

    #@3
    .line 184
    return-void
.end method

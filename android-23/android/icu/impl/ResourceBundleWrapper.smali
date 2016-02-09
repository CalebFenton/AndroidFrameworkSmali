.class public Landroid/icu/impl/ResourceBundleWrapper;
.super Landroid/icu/util/UResourceBundle;
.source "ResourceBundleWrapper.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private baseName:Ljava/lang/String;

.field private bundle:Ljava/util/ResourceBundle;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "resourceBundleWrapper"

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    sput-boolean v0, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    #@9
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 1
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    #@4
    .line 28
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    #@6
    .line 29
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    #@8
    .line 30
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    #@a
    .line 31
    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    #@c
    .line 35
    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    #@e
    .line 34
    return-void
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 6
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    #@0
    .prologue
    .line 103
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "b":Landroid/icu/util/UResourceBundle;
    if-nez v0, :cond_1

    #@6
    .line 105
    const-string/jumbo v1, "_"

    #@9
    .line 106
    .local v1, "separator":Ljava/lang/String;
    const/16 v2, 0x2f

    #@b
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v2

    #@f
    if-ltz v2, :cond_0

    #@11
    .line 107
    const-string/jumbo v1, "/"

    #@14
    .line 109
    :cond_0
    new-instance v2, Ljava/util/MissingResourceException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Could not find the bundle "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, ""

    #@35
    const-string/jumbo v5, ""

    #@38
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 111
    .end local v1    # "separator":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private initKeysVector()V
    .locals 4

    #@0
    .prologue
    .line 68
    move-object v0, p0

    #@1
    .line 69
    .local v0, "current":Landroid/icu/impl/ResourceBundleWrapper;
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6
    iput-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    #@8
    .line 70
    :goto_0
    if-eqz v0, :cond_2

    #@a
    .line 71
    iget-object v3, v0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    #@c
    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@f
    move-result-object v1

    #@10
    .line 72
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 73
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/String;

    #@1c
    .line 74
    .local v2, "elem":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    #@1e
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_0

    #@24
    .line 75
    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    #@26
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_1

    #@2a
    .line 78
    .end local v2    # "elem":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/ResourceBundleWrapper;->getParent()Landroid/icu/util/UResourceBundle;

    #@2d
    move-result-object v0

    #@2e
    .end local v0    # "current":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    #@30
    .restart local v0    # "current":Landroid/icu/impl/ResourceBundleWrapper;
    goto :goto_0

    #@31
    .line 67
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method protected static declared-synchronized instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 26
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/ClassLoader;
    .param p3, "disableFallback"    # Z

    #@0
    .prologue
    const-class v23, Landroid/icu/impl/ResourceBundleWrapper;

    #@2
    monitor-enter v23

    #@3
    .line 116
    if-nez p2, :cond_0

    #@5
    .line 117
    :try_start_0
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object p2

    #@9
    .line 119
    :cond_0
    move-object/from16 v6, p2

    #@b
    .line 120
    .local v6, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v17, p0

    #@d
    .line 121
    .local v17, "name":Ljava/lang/String;
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@10
    move-result-object v8

    #@11
    .line 122
    .local v8, "defaultLocale":Landroid/icu/util/ULocale;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@14
    move-result v22

    #@15
    if-eqz v22, :cond_1

    #@17
    .line 123
    new-instance v22, Ljava/lang/StringBuilder;

    #@19
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    move-object/from16 v0, v22

    #@1e
    move-object/from16 v1, v17

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v22

    #@24
    const-string/jumbo v24, "_"

    #@27
    move-object/from16 v0, v22

    #@29
    move-object/from16 v1, v24

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v22

    #@2f
    move-object/from16 v0, v22

    #@31
    move-object/from16 v1, p1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v22

    #@37
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v17

    #@3b
    .line 126
    :cond_1
    move-object/from16 v0, v17

    #@3d
    invoke-static {v6, v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroid/icu/impl/ResourceBundleWrapper;

    #@43
    .line 127
    .local v3, "b":Landroid/icu/impl/ResourceBundleWrapper;
    if-nez v3, :cond_7

    #@45
    .line 128
    const/16 v18, 0x0

    #@47
    .line 129
    .local v18, "parent":Landroid/icu/impl/ResourceBundleWrapper;
    const/16 v22, 0x5f

    #@49
    move-object/from16 v0, p1

    #@4b
    move/from16 v1, v22

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@50
    move-result v14

    #@51
    .line 131
    .local v14, "i":I
    const/4 v15, 0x0

    #@52
    .line 132
    .local v15, "loadFromProperties":Z
    const/16 v22, -0x1

    #@54
    move/from16 v0, v22

    #@56
    if-eq v14, v0, :cond_9

    #@58
    .line 133
    const/16 v22, 0x0

    #@5a
    move-object/from16 v0, p1

    #@5c
    move/from16 v1, v22

    #@5e
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@61
    move-result-object v16

    #@62
    .line 134
    .local v16, "locName":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    #@64
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    move-object/from16 v0, v22

    #@69
    move-object/from16 v1, p0

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v22

    #@6f
    const-string/jumbo v24, "_"

    #@72
    move-object/from16 v0, v22

    #@74
    move-object/from16 v1, v24

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v22

    #@7a
    move-object/from16 v0, v22

    #@7c
    move-object/from16 v1, v16

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v22

    #@82
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v22

    #@86
    move-object/from16 v0, v22

    #@88
    invoke-static {v6, v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@8b
    move-result-object v18

    #@8c
    .end local v18    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;

    #@8e
    .line 135
    .local v18, "parent":Landroid/icu/impl/ResourceBundleWrapper;
    if-nez v18, :cond_2

    #@90
    .line 136
    move-object/from16 v0, p0

    #@92
    move-object/from16 v1, v16

    #@94
    move/from16 v2, p3

    #@96
    invoke-static {v0, v1, v6, v2}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@99
    move-result-object v18

    #@9a
    .end local v18    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@9c
    .line 145
    .end local v16    # "locName":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    #@9e
    invoke-virtual {v6, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@a1
    move-result-object v22

    #@a2
    const-class v24, Ljava/util/ResourceBundle;

    #@a4
    move-object/from16 v0, v22

    #@a6
    move-object/from16 v1, v24

    #@a8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@ab
    move-result-object v7

    #@ac
    .line 146
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@af
    move-result-object v5

    #@b0
    check-cast v5, Ljava/util/ResourceBundle;

    #@b2
    .line 147
    .local v5, "bx":Ljava/util/ResourceBundle;
    new-instance v4, Landroid/icu/impl/ResourceBundleWrapper;

    #@b4
    invoke-direct {v4, v5}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@b7
    .line 148
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .local v4, "b":Landroid/icu/impl/ResourceBundleWrapper;
    if-eqz v18, :cond_3

    #@b9
    .line 149
    :try_start_2
    move-object/from16 v0, v18

    #@bb
    invoke-virtual {v4, v0}, Landroid/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V

    #@be
    .line 151
    :cond_3
    move-object/from16 v0, p0

    #@c0
    iput-object v0, v4, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    #@c2
    .line 152
    move-object/from16 v0, p1

    #@c4
    iput-object v0, v4, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@c6
    .line 165
    .end local v5    # "bx":Ljava/util/ResourceBundle;
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :goto_1
    if-eqz v15, :cond_e

    #@c8
    .line 167
    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    #@ca
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@cd
    const/16 v24, 0x2e

    #@cf
    const/16 v25, 0x2f

    #@d1
    move-object/from16 v0, v17

    #@d3
    move/from16 v1, v24

    #@d5
    move/from16 v2, v25

    #@d7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@da
    move-result-object v24

    #@db
    move-object/from16 v0, v22

    #@dd
    move-object/from16 v1, v24

    #@df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v22

    #@e3
    const-string/jumbo v24, ".properties"

    #@e6
    move-object/from16 v0, v22

    #@e8
    move-object/from16 v1, v24

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v22

    #@ee
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v19

    #@f2
    .line 169
    .local v19, "resName":Ljava/lang/String;
    new-instance v22, Landroid/icu/impl/ResourceBundleWrapper$1;

    #@f4
    move-object/from16 v0, v22

    #@f6
    move-object/from16 v1, v19

    #@f8
    invoke-direct {v0, v6, v1}, Landroid/icu/impl/ResourceBundleWrapper$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    #@fb
    .line 168
    invoke-static/range {v22 .. v22}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@fe
    move-result-object v20

    #@ff
    check-cast v20, Ljava/io/InputStream;

    #@101
    .line 179
    .local v20, "stream":Ljava/io/InputStream;
    if-eqz v20, :cond_d

    #@103
    .line 181
    new-instance v21, Ljava/io/BufferedInputStream;

    #@105
    move-object/from16 v0, v21

    #@107
    move-object/from16 v1, v20

    #@109
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@10c
    .line 183
    .end local v20    # "stream":Ljava/io/InputStream;
    .local v21, "stream":Ljava/io/InputStream;
    :try_start_4
    new-instance v3, Landroid/icu/impl/ResourceBundleWrapper;

    #@10e
    new-instance v22, Ljava/util/PropertyResourceBundle;

    #@110
    move-object/from16 v0, v22

    #@112
    move-object/from16 v1, v21

    #@114
    invoke-direct {v0, v1}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    #@117
    move-object/from16 v0, v22

    #@119
    invoke-direct {v3, v0}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@11c
    .line 184
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    if-eqz v18, :cond_4

    #@11e
    .line 185
    :try_start_5
    move-object/from16 v0, v18

    #@120
    invoke-virtual {v3, v0}, Landroid/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V

    #@123
    .line 187
    :cond_4
    move-object/from16 v0, p0

    #@125
    iput-object v0, v3, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    #@127
    .line 188
    move-object/from16 v0, p1

    #@129
    iput-object v0, v3, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@12b
    .line 193
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@12e
    :goto_2
    move-object/from16 v20, v21

    #@130
    .line 202
    .end local v21    # "stream":Ljava/io/InputStream;
    .restart local v20    # "stream":Ljava/io/InputStream;
    :goto_3
    if-nez v3, :cond_5

    #@132
    .line 203
    :try_start_7
    invoke-virtual {v8}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@135
    move-result-object v9

    #@136
    .line 204
    .local v9, "defaultName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@139
    move-result v22

    #@13a
    if-lez v22, :cond_5

    #@13c
    const/16 v22, 0x5f

    #@13e
    move-object/from16 v0, p1

    #@140
    move/from16 v1, v22

    #@142
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@145
    move-result v22

    #@146
    if-gez v22, :cond_5

    #@148
    move-object/from16 v0, p1

    #@14a
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@14d
    move-result v22

    #@14e
    const/16 v24, -0x1

    #@150
    move/from16 v0, v22

    #@152
    move/from16 v1, v24

    #@154
    if-ne v0, v1, :cond_5

    #@156
    .line 205
    new-instance v22, Ljava/lang/StringBuilder;

    #@158
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    move-object/from16 v0, v22

    #@15d
    move-object/from16 v1, p0

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v22

    #@163
    const-string/jumbo v24, "_"

    #@166
    move-object/from16 v0, v22

    #@168
    move-object/from16 v1, v24

    #@16a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v22

    #@16e
    move-object/from16 v0, v22

    #@170
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v22

    #@174
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@177
    move-result-object v22

    #@178
    move-object/from16 v0, v22

    #@17a
    invoke-static {v6, v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@17d
    move-result-object v22

    #@17e
    move-object/from16 v0, v22

    #@180
    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    #@182
    move-object v3, v0

    #@183
    .line 206
    if-nez v3, :cond_5

    #@185
    .line 207
    move-object/from16 v0, p0

    #@187
    move/from16 v1, p3

    #@189
    invoke-static {v0, v9, v6, v1}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@18c
    move-result-object v22

    #@18d
    move-object/from16 v0, v22

    #@18f
    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    #@191
    move-object v3, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@192
    .line 212
    .end local v9    # "defaultName":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    #@194
    .line 213
    move-object/from16 v3, v18

    #@196
    .line 222
    .end local v19    # "resName":Ljava/lang/String;
    .end local v20    # "stream":Ljava/io/InputStream;
    :cond_6
    :goto_4
    :try_start_8
    move-object/from16 v0, v17

    #@198
    invoke-static {v6, v0, v8, v3}, Landroid/icu/impl/ResourceBundleWrapper;->addToCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    #@19b
    move-result-object v3

    #@19c
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v3, Landroid/icu/impl/ResourceBundleWrapper;

    #@19e
    .line 225
    .end local v14    # "i":I
    .end local v15    # "loadFromProperties":Z
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :cond_7
    if-eqz v3, :cond_c

    #@1a0
    .line 226
    invoke-direct {v3}, Landroid/icu/impl/ResourceBundleWrapper;->initKeysVector()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1a3
    :cond_8
    :goto_5
    monitor-exit v23

    #@1a4
    .line 231
    return-object v3

    #@1a5
    .line 138
    .restart local v14    # "i":I
    .restart local v15    # "loadFromProperties":Z
    .local v18, "parent":Landroid/icu/impl/ResourceBundleWrapper;
    :cond_9
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@1a8
    move-result v22

    #@1a9
    if-lez v22, :cond_2

    #@1ab
    .line 139
    move-object/from16 v0, p0

    #@1ad
    invoke-static {v6, v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@1b0
    move-result-object v18

    #@1b1
    .end local v18    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;

    #@1b3
    .line 140
    .local v18, "parent":Landroid/icu/impl/ResourceBundleWrapper;
    if-nez v18, :cond_2

    #@1b5
    .line 141
    const-string/jumbo v22, ""

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    move-object/from16 v1, v22

    #@1bc
    move/from16 v2, p3

    #@1be
    invoke-static {v0, v1, v6, v2}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    #@1c1
    move-result-object v18

    #@1c2
    .end local v18    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;

    #@1c4
    .restart local v18    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_0

    #@1c6
    .line 158
    .end local v18    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    :catch_0
    move-exception v11

    #@1c7
    .line 159
    .local v11, "e":Ljava/lang/Exception;
    :goto_6
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    #@1c9
    if-eqz v22, :cond_a

    #@1cb
    .line 160
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1cd
    const-string/jumbo v24, "failure"

    #@1d0
    move-object/from16 v0, v22

    #@1d2
    move-object/from16 v1, v24

    #@1d4
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d7
    .line 161
    :cond_a
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    #@1d9
    if-eqz v22, :cond_f

    #@1db
    .line 162
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1dd
    move-object/from16 v0, v22

    #@1df
    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1e2
    move-object v4, v3

    #@1e3
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_1

    #@1e5
    .line 156
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :catch_1
    move-exception v12

    #@1e6
    .line 157
    .local v12, "e":Ljava/lang/NoClassDefFoundError;
    :goto_7
    const/4 v15, 0x1

    #@1e7
    move-object v4, v3

    #@1e8
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_1

    #@1ea
    .line 154
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v12    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :catch_2
    move-exception v10

    #@1eb
    .line 155
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    :goto_8
    const/4 v15, 0x1

    #@1ec
    move-object v4, v3

    #@1ed
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_1

    #@1ef
    .line 194
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v19    # "resName":Ljava/lang/String;
    .restart local v21    # "stream":Ljava/io/InputStream;
    :catch_3
    move-exception v13

    #@1f0
    .local v13, "ex":Ljava/lang/Exception;
    goto/16 :goto_2

    #@1f2
    .line 189
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :catch_4
    move-exception v13

    #@1f3
    .restart local v13    # "ex":Ljava/lang/Exception;
    move-object v3, v4

    #@1f4
    .line 193
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :goto_9
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@1f7
    goto/16 :goto_2

    #@1f9
    .line 194
    :catch_5
    move-exception v13

    #@1fa
    goto/16 :goto_2

    #@1fc
    .line 191
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :catchall_0
    move-exception v22

    #@1fd
    move-object v3, v4

    #@1fe
    .line 193
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :goto_a
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@201
    .line 191
    :goto_b
    :try_start_c
    throw v22
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@202
    .line 215
    .end local v21    # "stream":Ljava/io/InputStream;
    :catch_6
    move-exception v11

    #@203
    .line 216
    .end local v19    # "resName":Ljava/lang/String;
    .restart local v11    # "e":Ljava/lang/Exception;
    :goto_c
    :try_start_d
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    #@205
    if-eqz v22, :cond_b

    #@207
    .line 217
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@209
    const-string/jumbo v24, "failure"

    #@20c
    move-object/from16 v0, v22

    #@20e
    move-object/from16 v1, v24

    #@210
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@213
    .line 218
    :cond_b
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    #@215
    if-eqz v22, :cond_6

    #@217
    .line 219
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@219
    move-object/from16 v0, v22

    #@21b
    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    #@21e
    goto/16 :goto_4

    #@220
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "defaultLocale":Landroid/icu/util/ULocale;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v15    # "loadFromProperties":Z
    .end local v17    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v22

    #@221
    monitor-exit v23

    #@222
    throw v22

    #@223
    .line 194
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v6    # "cl":Ljava/lang/ClassLoader;
    .restart local v8    # "defaultLocale":Landroid/icu/util/ULocale;
    .restart local v14    # "i":I
    .restart local v15    # "loadFromProperties":Z
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v19    # "resName":Ljava/lang/String;
    .restart local v21    # "stream":Ljava/io/InputStream;
    :catch_7
    move-exception v13

    #@224
    .restart local v13    # "ex":Ljava/lang/Exception;
    goto :goto_b

    #@225
    .line 228
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v14    # "i":I
    .end local v15    # "loadFromProperties":Z
    .end local v19    # "resName":Ljava/lang/String;
    .end local v21    # "stream":Ljava/io/InputStream;
    :cond_c
    :try_start_e
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    #@227
    if-eqz v22, :cond_8

    #@229
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22b
    new-instance v24, Ljava/lang/StringBuilder;

    #@22d
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@230
    const-string/jumbo v25, "Returning null for "

    #@233
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v24

    #@237
    move-object/from16 v0, v24

    #@239
    move-object/from16 v1, p0

    #@23b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23e
    move-result-object v24

    #@23f
    const-string/jumbo v25, "_"

    #@242
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@245
    move-result-object v24

    #@246
    move-object/from16 v0, v24

    #@248
    move-object/from16 v1, p1

    #@24a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24d
    move-result-object v24

    #@24e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@251
    move-result-object v24

    #@252
    move-object/from16 v0, v22

    #@254
    move-object/from16 v1, v24

    #@256
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@259
    goto/16 :goto_5

    #@25b
    .line 215
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v14    # "i":I
    .restart local v15    # "loadFromProperties":Z
    :catch_8
    move-exception v11

    #@25c
    .restart local v11    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@25d
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto :goto_c

    #@25e
    .line 191
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v19    # "resName":Ljava/lang/String;
    .restart local v21    # "stream":Ljava/io/InputStream;
    :catchall_2
    move-exception v22

    #@25f
    goto :goto_a

    #@260
    .line 189
    :catch_9
    move-exception v13

    #@261
    .restart local v13    # "ex":Ljava/lang/Exception;
    goto :goto_9

    #@262
    .line 154
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v13    # "ex":Ljava/lang/Exception;
    .end local v19    # "resName":Ljava/lang/String;
    .end local v21    # "stream":Ljava/io/InputStream;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v5    # "bx":Ljava/util/ResourceBundle;
    .restart local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    :catch_a
    move-exception v10

    #@263
    .restart local v10    # "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    #@264
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto :goto_8

    #@265
    .line 156
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :catch_b
    move-exception v12

    #@266
    .restart local v12    # "e":Ljava/lang/NoClassDefFoundError;
    move-object v3, v4

    #@267
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_7

    #@269
    .line 158
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v12    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :catch_c
    move-exception v11

    #@26a
    .restart local v11    # "e":Ljava/lang/Exception;
    move-object v3, v4

    #@26b
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_6

    #@26d
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v5    # "bx":Ljava/util/ResourceBundle;
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v19    # "resName":Ljava/lang/String;
    .restart local v20    # "stream":Ljava/io/InputStream;
    :cond_d
    move-object v3, v4

    #@26e
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_3

    #@270
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v19    # "resName":Ljava/lang/String;
    .end local v20    # "stream":Ljava/io/InputStream;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    :cond_e
    move-object v3, v4

    #@271
    .end local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_4

    #@273
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_f
    move-object v4, v3

    #@274
    .end local v3    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v4    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    goto/16 :goto_1
.end method


# virtual methods
.method protected getBaseName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    #@2
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x2e

    #@c
    const/16 v2, 0x2f

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/icu/util/UResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->parent:Ljava/util/ResourceBundle;

    #@2
    check-cast v0, Landroid/icu/util/UResourceBundle;

    #@4
    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 2

    #@0
    .prologue
    .line 90
    new-instance v0, Landroid/icu/util/ULocale;

    #@2
    iget-object v1, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "aKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    move-object v0, p0

    #@1
    .line 44
    .local v0, "current":Landroid/icu/impl/ResourceBundleWrapper;
    const/4 v2, 0x0

    #@2
    .line 45
    .local v2, "obj":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    #@4
    .line 47
    :try_start_0
    iget-object v3, v0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    #@6
    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    .line 53
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    #@c
    .line 54
    new-instance v3, Ljava/util/MissingResourceException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Can\'t find resource for bundle "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    .line 55
    iget-object v5, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    #@1c
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 56
    const-string/jumbo v5, ", key "

    #@23
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 57
    invoke-virtual {p0}, Landroid/icu/impl/ResourceBundleWrapper;->getClass()Ljava/lang/Class;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    .line 54
    invoke-direct {v3, v4, v5, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 49
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@3c
    .line 50
    .local v1, "ex":Ljava/util/MissingResourceException;
    invoke-virtual {v0}, Landroid/icu/impl/ResourceBundleWrapper;->getParent()Landroid/icu/util/UResourceBundle;

    #@3f
    move-result-object v0

    #@40
    .end local v0    # "current":Landroid/icu/impl/ResourceBundleWrapper;
    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    #@42
    .restart local v0    # "current":Landroid/icu/impl/ResourceBundleWrapper;
    goto :goto_0

    #@43
    .line 60
    .end local v1    # "ex":Ljava/util/MissingResourceException;
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method protected setLoadingStatus(I)V
    .locals 0
    .param p1, "newStatus"    # I

    #@0
    .prologue
    .line 38
    return-void
.end method

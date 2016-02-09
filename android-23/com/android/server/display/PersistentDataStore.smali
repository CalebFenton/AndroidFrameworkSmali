.class final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private mLoaded:Z

.field private mRememberedWifiDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@a
    .line 75
    new-instance v0, Landroid/util/AtomicFile;

    #@c
    new-instance v1, Ljava/io/File;

    #@e
    const-string/jumbo v2, "/data/system/display-manager-state.xml"

    #@11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@17
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@19
    .line 74
    return-void
.end method

.method private clearState()V
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 182
    return-void
.end method

.method private findRememberedWifiDisplay(Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 163
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 164
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/hardware/display/WifiDisplay;

    #@11
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 165
    return v1

    #@1c
    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 168
    :cond_1
    const/4 v2, -0x1

    #@20
    return v2
.end method

.method private load()V
    .locals 7

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V

    #@3
    .line 191
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 198
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v4

    #@d
    .line 199
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/BufferedInputStream;

    #@f
    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@12
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@14
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1b
    .line 200
    invoke-direct {p0, v4}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 208
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21
    .line 186
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@22
    .line 192
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@23
    .line 193
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void

    #@24
    .line 204
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@25
    .line 205
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v5, "DisplayManager"

    #@28
    const-string/jumbo v6, "Failed to load display manager persistent store data."

    #@2b
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 206
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .line 208
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    goto :goto_0

    #@35
    .line 201
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@36
    .line 202
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "DisplayManager"

    #@39
    const-string/jumbo v6, "Failed to load display manager persistent store data."

    #@3c
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 203
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 208
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    goto :goto_0

    #@46
    .line 207
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@47
    .line 208
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4a
    .line 207
    throw v5
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    const-string/jumbo v1, "display-manager-state"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@6
    .line 238
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v0

    #@a
    .line 239
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 240
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "remembered-wifi-displays"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20
    goto :goto_0

    #@21
    .line 236
    :cond_1
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 173
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->load()V

    #@7
    .line 174
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    #@a
    .line 171
    :cond_0
    return-void
.end method

.method private loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v7

    #@6
    .line 249
    .local v7, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_4

    #@c
    .line 250
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v5, "wifi-display"

    #@13
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 251
    const-string/jumbo v0, "deviceAddress"

    #@1c
    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 252
    .local v1, "deviceAddress":Ljava/lang/String;
    const-string/jumbo v0, "deviceName"

    #@23
    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 253
    .local v2, "deviceName":Ljava/lang/String;
    const-string/jumbo v0, "deviceAlias"

    #@2a
    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 254
    .local v3, "deviceAlias":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@30
    if-nez v2, :cond_2

    #@32
    .line 255
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@34
    .line 256
    const-string/jumbo v4, "Missing deviceAddress or deviceName attribute on wifi-display."

    #@37
    .line 255
    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 258
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    if-ltz v0, :cond_3

    #@41
    .line 259
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@43
    .line 260
    const-string/jumbo v4, "Found duplicate wifi display device address."

    #@46
    .line 259
    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 263
    :cond_3
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@4c
    .line 264
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@4e
    move v5, v4

    #@4f
    move v6, v4

    #@50
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@53
    .line 263
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 247
    .end local v1    # "deviceAddress":Ljava/lang/String;
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "deviceAlias":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private save()V
    .locals 6

    #@0
    .prologue
    .line 215
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 216
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@7
    .line 218
    .local v3, "success":Z
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 219
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/BufferedOutputStream;

    #@e
    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@11
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@13
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1a
    .line 220
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1d
    .line 221
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 222
    const/4 v3, 0x1

    #@21
    .line 224
    if-eqz v3, :cond_0

    #@23
    .line 225
    :try_start_2
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@28
    .line 212
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_0
    return-void

    #@29
    .line 227
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2b
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 230
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    #@30
    .line 231
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "DisplayManager"

    #@33
    const-string/jumbo v5, "Failed to save display manager persistent store data."

    #@36
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 223
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_0
    move-exception v4

    #@3b
    .line 224
    if-eqz v3, :cond_1

    #@3d
    .line 225
    :try_start_3
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@3f
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@42
    .line 223
    :goto_1
    throw v4

    #@43
    .line 227
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@45
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@48
    goto :goto_1
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 271
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v2

    #@6
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 272
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@c
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@f
    .line 273
    const-string/jumbo v2, "display-manager-state"

    #@12
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 274
    const-string/jumbo v2, "remembered-wifi-displays"

    #@18
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 275
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "display$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/hardware/display/WifiDisplay;

    #@2d
    .line 276
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v2, "wifi-display"

    #@30
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 277
    const-string/jumbo v2, "deviceAddress"

    #@36
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 278
    const-string/jumbo v2, "deviceName"

    #@40
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 279
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    if-eqz v2, :cond_0

    #@4d
    .line 280
    const-string/jumbo v2, "deviceAlias"

    #@50
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 282
    :cond_0
    const-string/jumbo v2, "wifi-display"

    #@5a
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    goto :goto_0

    #@5e
    .line 284
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const-string/jumbo v2, "remembered-wifi-displays"

    #@61
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@64
    .line 285
    const-string/jumbo v2, "display-manager-state"

    #@67
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6a
    .line 286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@6d
    .line 270
    return-void
.end method

.method private setDirty()V
    .locals 1

    #@0
    .prologue
    .line 179
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@3
    .line 178
    return-void
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 100
    if-eqz p1, :cond_1

    #@2
    .line 101
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@5
    .line 103
    const/4 v3, 0x0

    #@6
    .line 104
    .local v3, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@d
    move-result v7

    #@e
    .line 105
    .local v7, "index":I
    if-ltz v7, :cond_0

    #@10
    .line 106
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/hardware/display/WifiDisplay;

    #@18
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    .line 108
    .end local v3    # "alias":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-static {v0, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 109
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@28
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 110
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    #@37
    move-result v5

    #@38
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    #@3b
    move-result v6

    #@3c
    .line 109
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@3f
    return-object v0

    #@40
    .line 113
    .end local v7    # "index":I
    :cond_1
    return-object p1
.end method

.method public applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .locals 6
    .param p1, "displays"    # [Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 117
    move-object v3, p1

    #@2
    .line 118
    .local v3, "results":[Landroid/hardware/display/WifiDisplay;
    if-eqz v3, :cond_2

    #@4
    .line 119
    array-length v0, p1

    #@5
    .line 120
    .local v0, "count":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@8
    .line 121
    aget-object v4, p1, v1

    #@a
    invoke-virtual {p0, v4}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@d
    move-result-object v2

    #@e
    .line 122
    .local v2, "result":Landroid/hardware/display/WifiDisplay;
    aget-object v4, p1, v1

    #@10
    if-eq v2, v4, :cond_1

    #@12
    .line 123
    if-ne v3, p1, :cond_0

    #@14
    .line 124
    new-array v3, v0, [Landroid/hardware/display/WifiDisplay;

    #@16
    .line 125
    invoke-static {p1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 127
    :cond_0
    aput-object v2, v3, v1

    #@1b
    .line 120
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 131
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/hardware/display/WifiDisplay;
    :cond_2
    return-object v3
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@4
    move-result v0

    #@5
    .line 153
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    .line 154
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@c
    .line 155
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    #@f
    .line 156
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 158
    :cond_0
    return v1
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 88
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    .line 89
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/hardware/display/WifiDisplay;

    #@11
    return-object v1

    #@12
    .line 91
    :cond_0
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .locals 2

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 96
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@5
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    #@d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    #@13
    return-object v0
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .locals 4
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 135
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@4
    .line 137
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 138
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@e
    .line 139
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/hardware/display/WifiDisplay;

    #@16
    .line 140
    .local v1, "other":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 141
    return v3

    #@1d
    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 147
    .end local v1    # "other":Landroid/hardware/display/WifiDisplay;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    #@25
    .line 148
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0
.end method

.method public saveIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 80
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->save()V

    #@7
    .line 81
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@a
    .line 78
    :cond_0
    return-void
.end method

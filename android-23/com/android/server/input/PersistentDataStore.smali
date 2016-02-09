.class final Lcom/android/server/input/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/input/PersistentDataStore$InputDeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 67
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@a
    .line 78
    new-instance v0, Landroid/util/AtomicFile;

    #@c
    new-instance v1, Ljava/io/File;

    #@e
    const-string/jumbo v2, "/data/system/input-manager-state.xml"

    #@11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@14
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@17
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@19
    .line 77
    return-void
.end method

.method private clearState()V
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 201
    return-void
.end method

.method private getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 180
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    #@4
    .line 181
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@c
    .line 182
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_0

    #@e
    if-eqz p2, :cond_0

    #@10
    .line 183
    new-instance v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@12
    .end local v0    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-direct {v0, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState;)V

    #@15
    .line 184
    .restart local v0    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 185
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@1d
    .line 187
    :cond_0
    return-object v0
.end method

.method private load()V
    .locals 7

    #@0
    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    #@3
    .line 210
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 217
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v4

    #@d
    .line 218
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
    .line 219
    invoke-direct {p0, v4}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 227
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21
    .line 205
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@22
    .line 211
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@23
    .line 212
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void

    #@24
    .line 223
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@25
    .line 224
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v5, "InputManager"

    #@28
    const-string/jumbo v6, "Failed to load input manager persistent store data."

    #@2b
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 225
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .line 227
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    goto :goto_0

    #@35
    .line 220
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@36
    .line 221
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "InputManager"

    #@39
    const-string/jumbo v6, "Failed to load input manager persistent store data."

    #@3c
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 222
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 227
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    goto :goto_0

    #@46
    .line 226
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@47
    .line 227
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4a
    .line 226
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
    .line 256
    const-string/jumbo v1, "input-manager-state"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@6
    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v0

    #@a
    .line 258
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "input-devices"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 260
    invoke-direct {p0, p1}, Lcom/android/server/input/PersistentDataStore;->loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20
    goto :goto_0

    #@21
    .line 255
    :cond_1
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 192
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->load()V

    #@7
    .line 193
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    #@a
    .line 190
    :cond_0
    return-void
.end method

.method private loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 268
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_3

    #@b
    .line 269
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const-string/jumbo v4, "input-device"

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 270
    const-string/jumbo v3, "descriptor"

    #@1b
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 271
    .local v0, "descriptor":Ljava/lang/String;
    if-nez v0, :cond_1

    #@21
    .line 272
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@23
    .line 273
    const-string/jumbo v4, "Missing descriptor attribute on input-device."

    #@26
    .line 272
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 275
    :cond_1
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 276
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@34
    const-string/jumbo v4, "Found duplicate input device."

    #@37
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 279
    :cond_2
    new-instance v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@3d
    invoke-direct {v2, v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState;)V

    #@40
    .line 280
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@43
    .line 281
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@45
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    goto :goto_0

    #@49
    .line 266
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_3
    return-void
.end method

.method private save()V
    .locals 6

    #@0
    .prologue
    .line 234
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 235
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@7
    .line 237
    .local v3, "success":Z
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 238
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
    .line 239
    invoke-direct {p0, v2}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1d
    .line 240
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 241
    const/4 v3, 0x1

    #@21
    .line 243
    if-eqz v3, :cond_0

    #@23
    .line 244
    :try_start_2
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@28
    .line 231
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_0
    return-void

    #@29
    .line 246
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2b
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e
    goto :goto_0

    #@2f
    .line 249
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    #@30
    .line 250
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "InputManager"

    #@33
    const-string/jumbo v5, "Failed to save input manager persistent store data."

    #@36
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 242
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_0
    move-exception v4

    #@3b
    .line 243
    if-eqz v3, :cond_1

    #@3d
    .line 244
    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@3f
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@42
    .line 242
    :goto_1
    throw v4

    #@43
    .line 246
    :cond_1
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@45
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@48
    goto :goto_1
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 287
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v4

    #@6
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 288
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@c
    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@f
    .line 289
    const-string/jumbo v4, "input-manager-state"

    #@12
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 290
    const-string/jumbo v4, "input-devices"

    #@18
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 291
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v2

    #@25
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/util/Map$Entry;

    #@31
    .line 292
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/lang/String;

    #@37
    .line 293
    .local v0, "descriptor":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@3d
    .line 294
    .local v3, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    const-string/jumbo v4, "input-device"

    #@40
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 295
    const-string/jumbo v4, "descriptor"

    #@46
    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 296
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@4c
    .line 297
    const-string/jumbo v4, "input-device"

    #@4f
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    goto :goto_0

    #@53
    .line 299
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    .end local v3    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_0
    const-string/jumbo v4, "input-devices"

    #@56
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@59
    .line 300
    const-string/jumbo v4, "input-manager-state"

    #@5c
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5f
    .line 301
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@62
    .line 286
    return-void
.end method

.method private setDirty()V
    .locals 1

    #@0
    .prologue
    .line 198
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@3
    .line 197
    return-void
.end method


# virtual methods
.method public addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 137
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 138
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 139
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 140
    return v2

    #@f
    .line 142
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 113
    const/4 v2, 0x0

    #@2
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@5
    move-result-object v0

    #@6
    .line 114
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getCurrentKeyboardLayout()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    :cond_0
    return-object v1
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 129
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_0

    #@7
    .line 130
    const-class v1, Ljava/lang/String;

    #@9
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Ljava/lang/String;

    #@f
    return-object v1

    #@10
    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayouts()[Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    #@0
    .prologue
    .line 89
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v1

    #@5
    .line 90
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v1, :cond_0

    #@7
    .line 91
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@9
    return-object v2

    #@a
    .line 94
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    #@d
    move-result-object v0

    #@e
    .line 95
    .local v0, "cal":Landroid/hardware/input/TouchCalibration;
    if-nez v0, :cond_1

    #@10
    .line 96
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@12
    return-object v2

    #@13
    .line 98
    :cond_1
    return-object v0
.end method

.method public removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 147
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 148
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 149
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 150
    return v2

    #@f
    .line 152
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 166
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "state$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@17
    .line 167
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 168
    const/4 v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 171
    .end local v1    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_1
    if-eqz v0, :cond_2

    #@21
    .line 172
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@24
    .line 173
    const/4 v3, 0x1

    #@25
    return v3

    #@26
    .line 175
    :cond_2
    const/4 v3, 0x0

    #@27
    return v3
.end method

.method public saveIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->save()V

    #@7
    .line 84
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@a
    .line 81
    :cond_0
    return-void
.end method

.method public setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 119
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 120
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 121
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 122
    return v2

    #@f
    .line 124
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 102
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 104
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 105
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 106
    return v2

    #@f
    .line 109
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public switchKeyboardLayout(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 156
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 157
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 158
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@10
    .line 159
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 161
    :cond_0
    return v2
.end method

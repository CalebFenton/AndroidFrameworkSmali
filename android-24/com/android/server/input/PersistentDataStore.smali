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
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 74
    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@a
    .line 85
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
    .line 84
    return-void
.end method

.method private clearState()V
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 226
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
    .line 205
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    #@4
    .line 206
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@c
    .line 207
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_0

    #@e
    if-eqz p2, :cond_0

    #@10
    .line 208
    new-instance v0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@12
    .end local v0    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-direct {v0, v2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState;)V

    #@15
    .line 209
    .restart local v0    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 210
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@1d
    .line 212
    :cond_0
    return-object v0
.end method

.method private load()V
    .locals 7

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V

    #@3
    .line 235
    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 242
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v4

    #@d
    .line 243
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
    .line 244
    invoke-direct {p0, v4}, Lcom/android/server/input/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 252
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21
    .line 230
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@22
    .line 236
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@23
    .line 237
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void

    #@24
    .line 248
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@25
    .line 249
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v5, "InputManager"

    #@28
    const-string/jumbo v6, "Failed to load input manager persistent store data."

    #@2b
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 250
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .line 252
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    goto :goto_0

    #@35
    .line 245
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@36
    .line 246
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "InputManager"

    #@39
    const-string/jumbo v6, "Failed to load input manager persistent store data."

    #@3c
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 247
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->clearState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 252
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    goto :goto_0

    #@46
    .line 251
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@47
    .line 252
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4a
    .line 251
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
    .line 281
    const-string/jumbo v1, "input-manager-state"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@6
    .line 282
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v0

    #@a
    .line 283
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 284
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
    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/input/PersistentDataStore;->loadInputDevicesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20
    goto :goto_0

    #@21
    .line 280
    :cond_1
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->load()V

    #@7
    .line 218
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    #@a
    .line 215
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
    .line 292
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 293
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_3

    #@b
    .line 294
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
    .line 295
    const-string/jumbo v3, "descriptor"

    #@1b
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 296
    .local v0, "descriptor":Ljava/lang/String;
    if-nez v0, :cond_1

    #@21
    .line 297
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@23
    .line 298
    const-string/jumbo v4, "Missing descriptor attribute on input-device."

    #@26
    .line 297
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 301
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@34
    const-string/jumbo v4, "Found duplicate input device."

    #@37
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 304
    :cond_2
    new-instance v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@3d
    invoke-direct {v2, v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;-><init>(Lcom/android/server/input/PersistentDataStore$InputDeviceState;)V

    #@40
    .line 305
    .local v2, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v2, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@43
    .line 306
    iget-object v3, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@45
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    goto :goto_0

    #@49
    .line 291
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_3
    return-void
.end method

.method private save()V
    .locals 6

    #@0
    .prologue
    .line 259
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 260
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@7
    .line 262
    .local v3, "success":Z
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 263
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
    .line 264
    invoke-direct {p0, v2}, Lcom/android/server/input/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1d
    .line 265
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 266
    const/4 v3, 0x1

    #@21
    .line 268
    if-eqz v3, :cond_0

    #@23
    .line 269
    :try_start_2
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@28
    .line 256
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_0
    return-void

    #@29
    .line 271
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
    .line 274
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    #@30
    .line 275
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "InputManager"

    #@33
    const-string/jumbo v5, "Failed to save input manager persistent store data."

    #@36
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 267
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_0
    move-exception v4

    #@3b
    .line 268
    if-eqz v3, :cond_1

    #@3d
    .line 269
    :try_start_3
    iget-object v5, p0, Lcom/android/server/input/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@3f
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@42
    .line 267
    :goto_1
    throw v4

    #@43
    .line 271
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
    .line 312
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v4

    #@6
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 313
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@c
    invoke-interface {p1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@f
    .line 314
    const-string/jumbo v4, "input-manager-state"

    #@12
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 315
    const-string/jumbo v4, "input-devices"

    #@18
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 316
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
    .line 317
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/lang/String;

    #@37
    .line 318
    .local v0, "descriptor":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@3d
    .line 319
    .local v3, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    const-string/jumbo v4, "input-device"

    #@40
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 320
    const-string/jumbo v4, "descriptor"

    #@46
    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 321
    invoke-virtual {v3, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@4c
    .line 322
    const-string/jumbo v4, "input-device"

    #@4f
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@52
    goto :goto_0

    #@53
    .line 324
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    .end local v3    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_0
    const-string/jumbo v4, "input-devices"

    #@56
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@59
    .line 325
    const-string/jumbo v4, "input-manager-state"

    #@5c
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5f
    .line 326
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@62
    .line 311
    return-void
.end method

.method private setDirty()V
    .locals 1

    #@0
    .prologue
    .line 223
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@3
    .line 222
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
    .line 161
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 162
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->addKeyboardLayout(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 163
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 164
    return v2

    #@f
    .line 166
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "PersistentDataStore"

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    const-string/jumbo v5, "  mLoaded="

    #@23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    iget-boolean v5, p0, Lcom/android/server/input/PersistentDataStore;->mLoaded:Z

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, "  mDirty="

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    iget-boolean v5, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string/jumbo v5, "  InputDeviceStates:"

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@68
    .line 334
    const/4 v2, 0x0

    #@69
    .line 335
    .local v2, "i":I
    iget-object v4, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    #@6b
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@6e
    move-result-object v4

    #@6f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v1

    #@73
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_0

    #@79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Ljava/util/Map$Entry;

    #@7f
    .line 336
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    const-string/jumbo v5, "    "

    #@8b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    add-int/lit8 v3, v2, 0x1

    #@91
    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    const-string/jumbo v5, ": "

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9f
    move-result-object v4

    #@a0
    check-cast v4, Ljava/lang/String;

    #@a2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@b0
    move-result-object v4

    #@b1
    check-cast v4, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@b3
    new-instance v5, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    const-string/jumbo v6, "      "

    #@bf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v5

    #@c3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v5

    #@c7
    invoke-static {v4, p1, v5}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->-wrap0(Lcom/android/server/input/PersistentDataStore$InputDeviceState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@ca
    move v2, v3

    #@cb
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    #@cc
    .line 329
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/input/PersistentDataStore$InputDeviceState;>;"
    :cond_0
    return-void
.end method

.method public getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    const/4 v2, 0x0

    #@2
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@5
    move-result-object v0

    #@6
    .line 121
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

.method public getKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 143
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@5
    move-result-object v0

    #@6
    .line 144
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_0

    #@8
    .line 145
    return-object v2

    #@9
    .line 147
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getKeyboardLayout(Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 135
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, p1, v1}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 136
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v0, :cond_0

    #@7
    .line 137
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
    .line 139
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
    .line 96
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v1

    #@5
    .line 97
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-nez v1, :cond_0

    #@7
    .line 98
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@9
    return-object v2

    #@a
    .line 101
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->getTouchCalibration(I)Landroid/hardware/input/TouchCalibration;

    #@d
    move-result-object v0

    #@e
    .line 102
    .local v0, "cal":Landroid/hardware/input/TouchCalibration;
    if-nez v0, :cond_1

    #@10
    .line 103
    sget-object v2, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    #@12
    return-object v2

    #@13
    .line 105
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
    .line 171
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 172
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeKeyboardLayout(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 173
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 174
    return v2

    #@f
    .line 176
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
    .line 190
    .local p1, "availableKeyboardLayouts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    .line 191
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
    .line 192
    .local v1, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 193
    const/4 v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 196
    .end local v1    # "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    :cond_1
    if-eqz v0, :cond_2

    #@21
    .line 197
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@24
    .line 198
    const/4 v3, 0x1

    #@25
    return v3

    #@26
    .line 200
    :cond_2
    const/4 v3, 0x0

    #@27
    return v3
.end method

.method public saveIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 90
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->save()V

    #@7
    .line 91
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    #@a
    .line 88
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
    .line 126
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 127
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setCurrentKeyboardLayout(Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 128
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 129
    return v2

    #@f
    .line 131
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public setKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .param p3, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 152
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 153
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setKeyboardLayout(Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 154
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 155
    return v2

    #@f
    .line 157
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
    .line 109
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 111
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->setTouchCalibration(ILandroid/hardware/input/TouchCalibration;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 112
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@e
    .line 113
    return v2

    #@f
    .line 116
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public switchKeyboardLayout(Ljava/lang/String;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Z
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "imeHandle"    # Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 181
    invoke-direct {p0, p1, v2}, Lcom/android/server/input/PersistentDataStore;->getInputDeviceState(Ljava/lang/String;Z)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    #@4
    move-result-object v0

    #@5
    .line 182
    .local v0, "state":Lcom/android/server/input/PersistentDataStore$InputDeviceState;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0, p2}, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->switchKeyboardLayout(Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 183
    invoke-direct {p0}, Lcom/android/server/input/PersistentDataStore;->setDirty()V

    #@10
    .line 184
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 186
    :cond_0
    return v2
.end method

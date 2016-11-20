.class final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PersistentDataStore$DisplayState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private mDirty:Z

.field private final mDisplayStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/PersistentDataStore$DisplayState;",
            ">;"
        }
    .end annotation
.end field

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
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@a
    .line 76
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 75
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@11
    .line 88
    new-instance v0, Landroid/util/AtomicFile;

    #@13
    new-instance v1, Ljava/io/File;

    #@15
    const-string/jumbo v2, "/data/system/display-manager-state.xml"

    #@18
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@20
    .line 87
    return-void
.end method

.method private clearState()V
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 229
    return-void
.end method

.method private findRememberedWifiDisplay(Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 176
    .local v0, "count":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 177
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
    .line 178
    return v1

    #@1c
    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 181
    :cond_1
    const/4 v2, -0x1

    #@20
    return v2
.end method

.method private getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 208
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@4
    .line 209
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@c
    .line 210
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_0

    #@e
    if-eqz p2, :cond_0

    #@10
    .line 211
    new-instance v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@12
    .end local v0    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-direct {v0, v2}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$DisplayState;)V

    #@15
    .line 212
    .restart local v0    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 213
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    #@1d
    .line 215
    :cond_0
    return-object v0
.end method

.method private load()V
    .locals 7

    #@0
    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V

    #@3
    .line 238
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 245
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v4

    #@d
    .line 246
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
    .line 247
    invoke-direct {p0, v4}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 255
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21
    .line 233
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@22
    .line 239
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@23
    .line 240
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void

    #@24
    .line 251
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    #@25
    .line 252
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v5, "DisplayManager"

    #@28
    const-string/jumbo v6, "Failed to load display manager persistent store data."

    #@2b
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 253
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .line 255
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    goto :goto_0

    #@35
    .line 248
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    #@36
    .line 249
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "DisplayManager"

    #@39
    const-string/jumbo v6, "Failed to load display manager persistent store data."

    #@3c
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 250
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    .line 255
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@45
    goto :goto_0

    #@46
    .line 254
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@47
    .line 255
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4a
    .line 254
    throw v5
.end method

.method private loadDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
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
    .line 322
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 323
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_3

    #@b
    .line 324
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const-string/jumbo v4, "display"

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 325
    const-string/jumbo v3, "unique-id"

    #@1b
    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 326
    .local v2, "uniqueId":Ljava/lang/String;
    if-nez v2, :cond_1

    #@21
    .line 327
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@23
    .line 328
    const-string/jumbo v4, "Missing unique-id attribute on display."

    #@26
    .line 327
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 330
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 331
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@34
    const-string/jumbo v4, "Found duplicate display."

    #@37
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3

    #@3b
    .line 334
    :cond_2
    new-instance v1, Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@3d
    invoke-direct {v1, v5}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$DisplayState;)V

    #@40
    .line 335
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@43
    .line 336
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@45
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    goto :goto_0

    #@49
    .line 321
    .end local v1    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    .end local v2    # "uniqueId":Ljava/lang/String;
    :cond_3
    return-void
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
    .line 284
    const-string/jumbo v1, "display-manager-state"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@6
    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v0

    #@a
    .line 286
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 287
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
    if-eqz v1, :cond_1

    #@1d
    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20
    .line 290
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, "display-states"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@30
    goto :goto_0

    #@31
    .line 283
    :cond_2
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
    .line 298
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v7

    #@6
    .line 299
    .local v7, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_4

    #@c
    .line 300
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
    .line 301
    const-string/jumbo v0, "deviceAddress"

    #@1c
    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 302
    .local v1, "deviceAddress":Ljava/lang/String;
    const-string/jumbo v0, "deviceName"

    #@23
    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 303
    .local v2, "deviceName":Ljava/lang/String;
    const-string/jumbo v0, "deviceAlias"

    #@2a
    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 304
    .local v3, "deviceAlias":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@30
    if-nez v2, :cond_2

    #@32
    .line 305
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@34
    .line 306
    const-string/jumbo v4, "Missing deviceAddress or deviceName attribute on wifi-display."

    #@37
    .line 305
    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 308
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    if-ltz v0, :cond_3

    #@41
    .line 309
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@43
    .line 310
    const-string/jumbo v4, "Found duplicate wifi display device address."

    #@46
    .line 309
    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 313
    :cond_3
    iget-object v8, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@4c
    .line 314
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    #@4e
    move v5, v4

    #@4f
    move v6, v4

    #@50
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@53
    .line 313
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0

    #@57
    .line 297
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
    .line 262
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 263
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@7
    .line 265
    .local v3, "success":Z
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 266
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
    .line 267
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1d
    .line 268
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 269
    const/4 v3, 0x1

    #@21
    .line 271
    if-eqz v3, :cond_0

    #@23
    .line 272
    :try_start_2
    iget-object v4, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@28
    .line 259
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_0
    return-void

    #@29
    .line 274
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
    .line 277
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    #@30
    .line 278
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "DisplayManager"

    #@33
    const-string/jumbo v5, "Failed to save display manager persistent store data."

    #@36
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 270
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_0
    move-exception v4

    #@3b
    .line 271
    if-eqz v3, :cond_1

    #@3d
    .line 272
    :try_start_3
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@3f
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@42
    .line 270
    :goto_1
    throw v4

    #@43
    .line 274
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
    .locals 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 342
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v6

    #@6
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 343
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@c
    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@f
    .line 344
    const-string/jumbo v6, "display-manager-state"

    #@12
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 345
    const-string/jumbo v6, "remembered-wifi-displays"

    #@18
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 346
    iget-object v6, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@1d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "display$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/hardware/display/WifiDisplay;

    #@2d
    .line 347
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v6, "wifi-display"

    #@30
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 348
    const-string/jumbo v6, "deviceAddress"

    #@36
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 349
    const-string/jumbo v6, "deviceName"

    #@40
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 350
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    if-eqz v6, :cond_0

    #@4d
    .line 351
    const-string/jumbo v6, "deviceAlias"

    #@50
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    invoke-interface {p1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 353
    :cond_0
    const-string/jumbo v6, "wifi-display"

    #@5a
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    goto :goto_0

    #@5e
    .line 355
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_1
    const-string/jumbo v6, "remembered-wifi-displays"

    #@61
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@64
    .line 356
    const-string/jumbo v6, "display-states"

    #@67
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6a
    .line 357
    iget-object v6, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@6c
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@6f
    move-result-object v6

    #@70
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v3

    #@74
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@77
    move-result v6

    #@78
    if-eqz v6, :cond_2

    #@7a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7d
    move-result-object v2

    #@7e
    check-cast v2, Ljava/util/Map$Entry;

    #@80
    .line 358
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@83
    move-result-object v5

    #@84
    check-cast v5, Ljava/lang/String;

    #@86
    .line 359
    .local v5, "uniqueId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@89
    move-result-object v4

    #@8a
    check-cast v4, Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@8c
    .line 360
    .local v4, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    const-string/jumbo v6, "display"

    #@8f
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@92
    .line 361
    const-string/jumbo v6, "unique-id"

    #@95
    invoke-interface {p1, v8, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@98
    .line 362
    invoke-virtual {v4, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@9b
    .line 363
    const-string/jumbo v6, "display"

    #@9e
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a1
    goto :goto_1

    #@a2
    .line 365
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    .end local v4    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    .end local v5    # "uniqueId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "display-states"

    #@a5
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a8
    .line 366
    const-string/jumbo v6, "display-manager-state"

    #@ab
    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ae
    .line 367
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@b1
    .line 341
    return-void
.end method

.method private setDirty()V
    .locals 1

    #@0
    .prologue
    .line 226
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@3
    .line 225
    return-void
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    .line 113
    if-eqz p1, :cond_1

    #@2
    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@5
    .line 116
    const/4 v3, 0x0

    #@6
    .line 117
    .local v3, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@d
    move-result v7

    #@e
    .line 118
    .local v7, "index":I
    if-ltz v7, :cond_0

    #@10
    .line 119
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
    .line 121
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
    .line 122
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
    .line 123
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
    .line 122
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    #@3f
    return-object v0

    #@40
    .line 126
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
    .line 130
    move-object v3, p1

    #@2
    .line 131
    .local v3, "results":[Landroid/hardware/display/WifiDisplay;
    if-eqz p1, :cond_2

    #@4
    .line 132
    array-length v0, p1

    #@5
    .line 133
    .local v0, "count":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@8
    .line 134
    aget-object v4, p1, v1

    #@a
    invoke-virtual {p0, v4}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    #@d
    move-result-object v2

    #@e
    .line 135
    .local v2, "result":Landroid/hardware/display/WifiDisplay;
    aget-object v4, p1, v1

    #@10
    if-eq v2, v4, :cond_1

    #@12
    .line 136
    if-ne v3, p1, :cond_0

    #@14
    .line 137
    new-array v3, v0, [Landroid/hardware/display/WifiDisplay;

    #@16
    .line 138
    invoke-static {p1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 140
    :cond_0
    aput-object v2, v3, v1

    #@1b
    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 144
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "result":Landroid/hardware/display/WifiDisplay;
    :cond_2
    return-object v3
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 371
    const-string/jumbo v6, "PersistentDataStore"

    #@3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v7, "  mLoaded="

    #@e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v6

    #@12
    iget-boolean v7, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v7, "  mDirty="

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    iget-boolean v7, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@2d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 374
    const-string/jumbo v6, "  RememberedWifiDisplays:"

    #@3b
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 375
    const/4 v4, 0x0

    #@3f
    .line 376
    .local v4, "i":I
    iget-object v6, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@41
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v1

    #@45
    .local v1, "display$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_0

    #@4b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Landroid/hardware/display/WifiDisplay;

    #@51
    .line 377
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "    "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    add-int/lit8 v5, v4, 0x1

    #@5f
    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    const-string/jumbo v7, ": "

    #@66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v6

    #@6a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@75
    move v4, v5

    #@76
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    #@77
    .line 379
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_0
    const-string/jumbo v6, "  DisplayStates:"

    #@7a
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 380
    const/4 v4, 0x0

    #@7e
    .line 381
    iget-object v6, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    #@80
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@83
    move-result-object v6

    #@84
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@87
    move-result-object v3

    #@88
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8b
    move-result v6

    #@8c
    if-eqz v6, :cond_1

    #@8e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v2

    #@92
    check-cast v2, Ljava/util/Map$Entry;

    #@94
    .line 382
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v7, "    "

    #@9c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v6

    #@a0
    add-int/lit8 v5, v4, 0x1

    #@a2
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    const-string/jumbo v7, ": "

    #@a9
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@b0
    move-result-object v6

    #@b1
    check-cast v6, Ljava/lang/String;

    #@b3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v6

    #@b7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v6

    #@bb
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@be
    .line 383
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@c1
    move-result-object v6

    #@c2
    check-cast v6, Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@c4
    const-string/jumbo v7, "      "

    #@c7
    invoke-static {v6, p1, v7}, Lcom/android/server/display/PersistentDataStore$DisplayState;->-wrap0(Lcom/android/server/display/PersistentDataStore$DisplayState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    #@ca
    move v4, v5

    #@cb
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@cc
    .line 370
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    :cond_1
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@4
    move-result v0

    #@5
    .line 166
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    .line 167
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@c
    .line 168
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    #@f
    .line 169
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 171
    :cond_0
    return v1
.end method

.method public getColorMode(Lcom/android/server/display/DisplayDevice;)I
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 185
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 186
    return v2

    #@8
    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {p0, v1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@f
    move-result-object v0

    #@10
    .line 189
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_1

    #@12
    .line 190
    return v2

    #@13
    .line 192
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getColorMode()I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    .line 101
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@9
    .line 102
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
    .line 104
    :cond_0
    const/4 v1, 0x0

    #@13
    return-object v1
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .locals 2

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 109
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

.method public loadIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 220
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->load()V

    #@7
    .line 221
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    #@a
    .line 218
    :cond_0
    return-void
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .locals 4
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 148
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    #@4
    .line 150
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    .line 151
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@e
    .line 152
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/hardware/display/WifiDisplay;

    #@16
    .line 153
    .local v1, "other":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 154
    return v3

    #@1d
    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 160
    .end local v1    # "other":Landroid/hardware/display/WifiDisplay;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    #@25
    .line 161
    const/4 v2, 0x1

    #@26
    return v2

    #@27
    .line 158
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
    .line 92
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 93
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->save()V

    #@7
    .line 94
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    #@a
    .line 91
    :cond_0
    return-void
.end method

.method public setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "colorMode"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 196
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    .line 197
    return v2

    #@9
    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {p0, v1, v3}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    #@10
    move-result-object v0

    #@11
    .line 200
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setColorMode(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 201
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    #@1a
    .line 202
    return v3

    #@1b
    .line 204
    :cond_1
    return v2
.end method

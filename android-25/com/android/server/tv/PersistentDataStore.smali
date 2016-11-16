.class final Lcom/android/server/tv/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/PersistentDataStore$1;
    }
.end annotation


# static fields
.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "TvInputManagerService"

.field private static final TAG_BLOCKED_RATINGS:Ljava/lang/String; = "blocked-ratings"

.field private static final TAG_PARENTAL_CONTROLS:Ljava/lang/String; = "parental-controls"

.field private static final TAG_RATING:Ljava/lang/String; = "rating"

.field private static final TAG_TV_INPUT_MANAGER_STATE:Ljava/lang/String; = "tv-input-manager-state"


# instance fields
.field private final mAtomicFile:Landroid/util/AtomicFile;

.field private final mBlockedRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedRatingsChanged:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaded:Z

.field private mParentalControlsEnabled:Z

.field private mParentalControlsEnabledChanged:Z

.field private final mSaveRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/tv/PersistentDataStore;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->save()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v1, Landroid/os/Handler;

    #@5
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    #@a
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@f
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    #@12
    move-result-object v1

    #@13
    .line 74
    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@15
    .line 190
    new-instance v1, Lcom/android/server/tv/PersistentDataStore$1;

    #@17
    invoke-direct {v1, p0}, Lcom/android/server/tv/PersistentDataStore$1;-><init>(Lcom/android/server/tv/PersistentDataStore;)V

    #@1a
    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    #@1c
    .line 87
    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    #@1e
    .line 88
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@21
    move-result-object v0

    #@22
    .line 89
    .local v0, "userDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_0

    #@28
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_0

    #@2e
    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "User dir cannot be created: "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 94
    :cond_0
    new-instance v1, Landroid/util/AtomicFile;

    #@4a
    new-instance v2, Ljava/io/File;

    #@4c
    const-string/jumbo v3, "tv-input-manager-state.xml"

    #@4f
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@52
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@55
    iput-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@57
    .line 86
    return-void
.end method

.method private broadcastChangesIfNeeded()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 222
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 223
    iput-boolean v3, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    #@7
    .line 224
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    #@9
    new-instance v1, Landroid/content/Intent;

    #@b
    .line 225
    const-string/jumbo v2, "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

    #@e
    .line 224
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@11
    .line 225
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@13
    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@16
    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 228
    iput-boolean v3, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    #@1c
    .line 229
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mContext:Landroid/content/Context;

    #@1e
    new-instance v1, Landroid/content/Intent;

    #@20
    const-string/jumbo v2, "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

    #@23
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26
    .line 230
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@28
    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@2b
    .line 221
    :cond_1
    return-void
.end method

.method private clearState()V
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 155
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    #@8
    .line 153
    return-void
.end method

.method private load()V
    .locals 6

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V

    #@3
    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@5
    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    .line 170
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@c
    move-result-object v3

    #@d
    .line 171
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/BufferedInputStream;

    #@f
    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@12
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@14
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@1b
    .line 172
    invoke-direct {p0, v3}, Lcom/android/server/tv/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@21
    .line 158
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    #@22
    .line 164
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@23
    .line 165
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void

    #@24
    .line 173
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    #@25
    .line 174
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "TvInputManagerService"

    #@28
    const-string/jumbo v5, "Failed to load tv input manager persistent store data."

    #@2b
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 175
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->clearState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    .line 177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@34
    goto :goto_0

    #@35
    .line 176
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@36
    .line 177
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@39
    .line 176
    throw v4
.end method

.method private loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 262
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 263
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "rating"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 264
    const-string/jumbo v2, "string"

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 265
    .local v1, "ratingString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 266
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@27
    .line 267
    const-string/jumbo v3, "Missing string attribute on rating"

    #@2a
    .line 266
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2

    #@2e
    .line 269
    :cond_1
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@30
    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0

    #@38
    .line 260
    .end local v1    # "ratingString":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    const-string/jumbo v2, "tv-input-manager-state"

    #@3
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@6
    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@9
    move-result v1

    #@a
    .line 245
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_3

    #@10
    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "blocked-ratings"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/tv/PersistentDataStore;->loadBlockedRatingsFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@20
    goto :goto_0

    #@21
    .line 248
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    const-string/jumbo v3, "parental-controls"

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_0

    #@2e
    .line 249
    const-string/jumbo v2, "enabled"

    #@31
    const/4 v3, 0x0

    #@32
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 250
    .local v0, "enabled":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_2

    #@3c
    .line 251
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@3e
    .line 252
    const-string/jumbo v3, "Missing enabled attribute on parental-controls"

    #@41
    .line 251
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@44
    throw v2

    #@45
    .line 254
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@4c
    move-result v2

    #@4d
    iput-boolean v2, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    #@4f
    goto :goto_0

    #@50
    .line 242
    .end local v0    # "enabled":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private loadIfNeeded()V
    .locals 1

    #@0
    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 148
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->load()V

    #@7
    .line 149
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mLoaded:Z

    #@a
    .line 146
    :cond_0
    return-void
.end method

.method private postSave()V
    .locals 2

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@7
    .line 183
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mHandler:Landroid/os/Handler;

    #@9
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mSaveRunnable:Ljava/lang/Runnable;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@e
    .line 181
    return-void
.end method

.method private save()V
    .locals 6

    #@0
    .prologue
    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 201
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    #@7
    .line 203
    .local v3, "success":Z
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    #@9
    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@c
    .line 204
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
    .line 205
    invoke-direct {p0, v2}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@1d
    .line 206
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 207
    const/4 v3, 0x1

    #@21
    .line 209
    if-eqz v3, :cond_0

    #@23
    .line 210
    :try_start_2
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@25
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@28
    .line 211
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    #@2b
    .line 197
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :goto_0
    return-void

    #@2c
    .line 213
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "success":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@2e
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@31
    goto :goto_0

    #@32
    .line 216
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    #@33
    .line 217
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "TvInputManagerService"

    #@36
    const-string/jumbo v5, "Failed to save tv input manager persistent store data."

    #@39
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3c
    goto :goto_0

    #@3d
    .line 208
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "success":Z
    :catchall_0
    move-exception v4

    #@3e
    .line 209
    if-eqz v3, :cond_1

    #@40
    .line 210
    :try_start_3
    iget-object v5, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@42
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@45
    .line 211
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    #@48
    .line 208
    :goto_1
    throw v4

    #@49
    .line 213
    :cond_1
    iget-object v5, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    #@4b
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@4e
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
    const/4 v3, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 275
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v2

    #@6
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@9
    .line 276
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@c
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@f
    .line 277
    const-string/jumbo v2, "tv-input-manager-state"

    #@12
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 278
    const-string/jumbo v2, "blocked-ratings"

    #@18
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 279
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@1d
    monitor-enter v3

    #@1e
    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "rating$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_0

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/media/tv/TvContentRating;

    #@30
    .line 281
    .local v0, "rating":Landroid/media/tv/TvContentRating;
    const-string/jumbo v2, "rating"

    #@33
    const/4 v4, 0x0

    #@34
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@37
    .line 282
    const-string/jumbo v2, "string"

    #@3a
    invoke-virtual {v0}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    const/4 v5, 0x0

    #@3f
    invoke-interface {p1, v5, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 283
    const-string/jumbo v2, "rating"

    #@45
    const/4 v4, 0x0

    #@46
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    goto :goto_0

    #@4a
    .line 279
    .end local v0    # "rating":Landroid/media/tv/TvContentRating;
    .end local v1    # "rating$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@4b
    monitor-exit v3

    #@4c
    throw v2

    #@4d
    .restart local v1    # "rating$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@4e
    .line 286
    const-string/jumbo v2, "blocked-ratings"

    #@51
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@54
    .line 287
    const-string/jumbo v2, "parental-controls"

    #@57
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    .line 288
    const-string/jumbo v2, "enabled"

    #@5d
    iget-boolean v3, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    #@5f
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@66
    .line 289
    const-string/jumbo v2, "parental-controls"

    #@69
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 290
    const-string/jumbo v2, "tv-input-manager-state"

    #@6f
    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@72
    .line 291
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@75
    .line 274
    return-void
.end method


# virtual methods
.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 130
    if-eqz p1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 128
    :cond_0
    :goto_0
    return-void

    #@e
    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 132
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    #@16
    .line 133
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    #@19
    goto :goto_0
.end method

.method public getBlockedRatings()[Landroid/media/tv/TvContentRating;
    .locals 2

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 125
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@5
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@7
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@a
    move-result v1

    #@b
    new-array v1, v1, [Landroid/media/tv/TvContentRating;

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [Landroid/media/tv/TvContentRating;

    #@13
    return-object v0
.end method

.method public isParentalControlsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 99
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    #@5
    return v0
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .locals 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 113
    iget-object v3, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@5
    monitor-enter v3

    #@6
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "blockedRating$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/media/tv/TvContentRating;

    #@18
    .line 115
    .local v0, "blockedRating":Landroid/media/tv/TvContentRating;
    invoke-virtual {p1, v0}, Landroid/media/tv/TvContentRating;->contains(Landroid/media/tv/TvContentRating;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    .line 116
    const/4 v2, 0x1

    #@1f
    monitor-exit v3

    #@20
    return v2

    #@21
    .end local v0    # "blockedRating":Landroid/media/tv/TvContentRating;
    :cond_1
    monitor-exit v3

    #@22
    .line 120
    const/4 v2, 0x0

    #@23
    return v2

    #@24
    .line 113
    .end local v1    # "blockedRating$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit v3

    #@26
    throw v2
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 139
    if-eqz p1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 140
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatings:Ljava/util/List;

    #@f
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@12
    .line 141
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mBlockedRatingsChanged:Z

    #@15
    .line 142
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    #@18
    .line 137
    :cond_0
    return-void
.end method

.method public setParentalControlsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->loadIfNeeded()V

    #@3
    .line 104
    iget-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 105
    iput-boolean p1, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabled:Z

    #@9
    .line 106
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/server/tv/PersistentDataStore;->mParentalControlsEnabledChanged:Z

    #@c
    .line 107
    invoke-direct {p0}, Lcom/android/server/tv/PersistentDataStore;->postSave()V

    #@f
    .line 102
    :cond_0
    return-void
.end method

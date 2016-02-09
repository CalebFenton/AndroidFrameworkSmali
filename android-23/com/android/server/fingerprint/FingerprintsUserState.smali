.class Lcom/android/server/fingerprint/FingerprintsUserState;
.super Ljava/lang/Object;
.source "FingerprintsUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintsUserState$1;
    }
.end annotation


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mFingerprints:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->doWriteState()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@a
    .line 140
    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$1;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    #@f
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    #@11
    .line 64
    invoke-static {p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFileForUser(I)Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    #@17
    .line 65
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    #@19
    .line 66
    monitor-enter p0

    #@1a
    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->readStateSyncLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    .line 63
    return-void

    #@1f
    .line 66
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method private doWriteState()V
    .locals 12

    #@0
    .prologue
    .line 162
    new-instance v1, Landroid/util/AtomicFile;

    #@2
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    #@4
    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@7
    .line 166
    .local v1, "destination":Landroid/util/AtomicFile;
    monitor-enter p0

    #@8
    .line 167
    :try_start_0
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@a
    invoke-direct {p0, v8}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v2

    #@e
    .local v2, "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    monitor-exit p0

    #@f
    .line 170
    const/4 v5, 0x0

    #@10
    .line 172
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@13
    move-result-object v5

    #@14
    .line 174
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@17
    move-result-object v6

    #@18
    .line 175
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v8, "utf-8"

    #@1b
    invoke-interface {v6, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@1e
    .line 176
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    #@21
    const/4 v9, 0x1

    #@22
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    #@25
    .line 177
    const/4 v8, 0x1

    #@26
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@29
    move-result-object v8

    #@2a
    const/4 v9, 0x0

    #@2b
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@2e
    .line 178
    const-string/jumbo v8, "fingerprints"

    #@31
    const/4 v9, 0x0

    #@32
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 180
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v0

    #@39
    .line 181
    .local v0, "count":I
    const/4 v4, 0x0

    #@3a
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    #@3c
    .line 182
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    #@42
    .line 183
    .local v3, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string/jumbo v8, "fingerprint"

    #@45
    const/4 v9, 0x0

    #@46
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 184
    const-string/jumbo v8, "fingerId"

    #@4c
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@4f
    move-result v9

    #@50
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@53
    move-result-object v9

    #@54
    const/4 v10, 0x0

    #@55
    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@58
    .line 185
    const-string/jumbo v8, "name"

    #@5b
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    #@5e
    move-result-object v9

    #@5f
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    const/4 v10, 0x0

    #@64
    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@67
    .line 186
    const-string/jumbo v8, "groupId"

    #@6a
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    #@6d
    move-result v9

    #@6e
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@71
    move-result-object v9

    #@72
    const/4 v10, 0x0

    #@73
    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@76
    .line 187
    const-string/jumbo v8, "deviceId"

    #@79
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    #@7c
    move-result-wide v10

    #@7d
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    const/4 v10, 0x0

    #@82
    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@85
    .line 188
    const-string/jumbo v8, "fingerprint"

    #@88
    const/4 v9, 0x0

    #@89
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@8c
    .line 181
    add-int/lit8 v4, v4, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 166
    .end local v0    # "count":I
    .end local v2    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v3    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "i":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v8

    #@90
    monitor-exit p0

    #@91
    throw v8

    #@92
    .line 191
    .restart local v0    # "count":I
    .restart local v2    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v4    # "i":I
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :try_start_2
    const-string/jumbo v8, "fingerprints"

    #@95
    const/4 v9, 0x0

    #@96
    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@99
    .line 192
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@9c
    .line 193
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@9f
    .line 201
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@a2
    .line 161
    return-void

    #@a3
    .line 196
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v7

    #@a4
    .line 197
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v8, "FingerprintState"

    #@a7
    const-string/jumbo v9, "Failed to write settings, restoring backup"

    #@aa
    invoke-static {v8, v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ad
    .line 198
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    #@b0
    .line 199
    new-instance v8, Ljava/lang/IllegalStateException;

    #@b2
    const-string/jumbo v9, "Failed to write fingerprints"

    #@b5
    invoke-direct {v8, v9, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b8
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@b9
    .line 200
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    #@ba
    .line 201
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@bd
    .line 200
    throw v8
.end method

.method private getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v8, Ljava/util/ArrayList;

    #@2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 153
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v7, 0x0

    #@a
    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    if-ge v7, v0, :cond_0

    #@10
    .line 154
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v6

    #@14
    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    #@16
    .line 155
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@18
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    #@1f
    move-result v2

    #@20
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@23
    move-result v3

    #@24
    .line 156
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    #@27
    move-result-wide v4

    #@28
    .line 155
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@2b
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 153
    add-int/lit8 v7, v7, 0x1

    #@30
    goto :goto_0

    #@31
    .line 158
    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    return-object v8
.end method

.method private static getFileForUser(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "settings_fingerprint.xml"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private getUniqueName()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 115
    const/4 v0, 0x1

    #@1
    .line 118
    .local v0, "guess":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    #@3
    const/4 v3, 0x1

    #@4
    new-array v3, v3, [Ljava/lang/Object;

    #@6
    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v4

    #@a
    const/4 v5, 0x0

    #@b
    aput-object v4, v3, v5

    #@d
    .line 118
    const v4, 0x10401c1

    #@10
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 120
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintsUserState;->isUnique(Ljava/lang/String;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 121
    return-object v1

    #@1b
    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0
.end method

.method private isUnique(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "fp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    #@12
    .line 129
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 130
    const/4 v2, 0x0

    #@1d
    return v2

    #@1e
    .line 133
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_1
    const/4 v2, 0x1

    #@1f
    return v2
.end method

.method private parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v9

    #@4
    .line 251
    .local v9, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v11

    #@8
    .local v11, "type":I
    const/4 v0, 0x1

    #@9
    if-eq v11, v0, :cond_2

    #@b
    .line 252
    const/4 v0, 0x3

    #@c
    if-ne v11, v0, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v0

    #@12
    if-le v0, v9, :cond_2

    #@14
    .line 253
    :cond_1
    const/4 v0, 0x3

    #@15
    if-eq v11, v0, :cond_0

    #@17
    const/4 v0, 0x4

    #@18
    if-eq v11, v0, :cond_0

    #@1a
    .line 257
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    .line 258
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "fingerprint"

    #@21
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 259
    const-string/jumbo v0, "name"

    #@2a
    const/4 v2, 0x0

    #@2b
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 260
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "groupId"

    #@32
    const/4 v2, 0x0

    #@33
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v8

    #@37
    .line 261
    .local v8, "groupId":Ljava/lang/String;
    const-string/jumbo v0, "fingerId"

    #@3a
    const/4 v2, 0x0

    #@3b
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    .line 262
    .local v7, "fingerId":Ljava/lang/String;
    const-string/jumbo v0, "deviceId"

    #@42
    const/4 v2, 0x0

    #@43
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    .line 263
    .local v6, "deviceId":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@49
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@4b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4e
    move-result v2

    #@4f
    .line 264
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@52
    move-result v3

    #@53
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@56
    move-result v4

    #@57
    int-to-long v4, v4

    #@58
    .line 263
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@5b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 247
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "fingerId":Ljava/lang/String;
    .end local v8    # "groupId":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 231
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 233
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    const/4 v3, 0x1

    #@a
    if-eq v2, v3, :cond_2

    #@c
    .line 234
    if-ne v2, v4, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v3

    #@12
    if-le v3, v0, :cond_2

    #@14
    .line 235
    :cond_1
    if-eq v2, v4, :cond_0

    #@16
    const/4 v3, 0x4

    #@17
    if-eq v2, v3, :cond_0

    #@19
    .line 239
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 240
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "fingerprints"

    #@20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    #@29
    goto :goto_0

    #@2a
    .line 230
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private readStateSyncLocked()V
    .locals 7

    #@0
    .prologue
    .line 207
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    #@2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 208
    return-void

    #@9
    .line 211
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    #@b
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    #@d
    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 217
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@13
    move-result-object v3

    #@14
    .line 218
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    #@15
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@18
    .line 219
    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 225
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@1e
    .line 205
    return-void

    #@1f
    .line 212
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    #@20
    .line 213
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "FingerprintState"

    #@23
    const-string/jumbo v5, "No fingerprint state"

    #@26
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 214
    return-void

    #@2a
    .line 221
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    #@2b
    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Failed parsing settings file: "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    .line 223
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    #@3b
    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@48
    .line 225
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@4b
    .line 224
    throw v4
.end method

.method private scheduleWriteStateLocked()V
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    #@2
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    #@5
    .line 147
    return-void
.end method


# virtual methods
.method public addFingerprint(II)V
    .locals 7
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    #@0
    .prologue
    .line 72
    monitor-enter p0

    #@1
    .line 73
    :try_start_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@3
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@5
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getUniqueName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const-wide/16 v4, 0x0

    #@b
    move v2, p2

    #@c
    move v3, p1

    #@d
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@10
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 74
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 71
    return-void

    #@18
    .line 72
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public getFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    monitor-enter p0

    #@1
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    .line 105
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public removeFingerprint(I)V
    .locals 2
    .param p1, "fingerId"    # I

    #@0
    .prologue
    .line 79
    monitor-enter p0

    #@1
    .line 80
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 81
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    #@12
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@15
    move-result v1

    #@16
    if-ne v1, p1, :cond_1

    #@18
    .line 82
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1d
    .line 83
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit p0

    #@21
    .line 78
    return-void

    #@22
    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 79
    :catchall_0
    move-exception v1

    #@26
    monitor-exit p0

    #@27
    throw v1
.end method

.method public renameFingerprint(ILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "fingerId"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 91
    monitor-enter p0

    #@1
    .line 92
    const/4 v6, 0x0

    #@2
    .local v6, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-ge v6, v0, :cond_0

    #@a
    .line 93
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    #@12
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@15
    move-result v0

    #@16
    if-ne v0, p1, :cond_1

    #@18
    .line 94
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    #@20
    .line 95
    .local v7, "old":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    #@22
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@24
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    #@27
    move-result v2

    #@28
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@2b
    move-result v3

    #@2c
    .line 96
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    #@2f
    move-result-wide v4

    #@30
    move-object v1, p2

    #@31
    .line 95
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@34
    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 97
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .end local v7    # "old":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    monitor-exit p0

    #@3b
    .line 90
    return-void

    #@3c
    .line 92
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 91
    :catchall_0
    move-exception v0

    #@40
    monitor-exit p0

    #@41
    throw v0
.end method

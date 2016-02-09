.class public Landroid/app/backup/BackupHelperDispatcher;
.super Ljava/lang/Object;
.source "BackupHelperDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupHelperDispatcher$Header;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupHelperDispatcher"


# instance fields
.field mHelpers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    #@a
    .line 38
    return-void
.end method

.method private static native allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V
    .locals 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "header"    # Landroid/app/backup/BackupHelperDispatcher$Header;
    .param p5, "helper"    # Landroid/app/backup/BackupHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@3
    move-result-object v1

    #@4
    .line 86
    .local v1, "newStateFD":Ljava/io/FileDescriptor;
    invoke-static {p4, v1}, Landroid/app/backup/BackupHelperDispatcher;->allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    #@7
    move-result v2

    #@8
    .line 87
    .local v2, "pos":I
    if-gez v2, :cond_0

    #@a
    .line 88
    new-instance v3, Ljava/io/IOException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "allocateHeader_native failed (error "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, ")"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 91
    :cond_0
    iget-object v3, p4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    #@2d
    invoke-virtual {p2, v3}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix(Ljava/lang/String;)V

    #@30
    .line 94
    invoke-interface {p5, p1, p2, p3}, Landroid/app/backup/BackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    #@33
    .line 98
    invoke-static {p4, v1, v2}, Landroid/app/backup/BackupHelperDispatcher;->writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I

    #@36
    move-result v0

    #@37
    .line 99
    .local v0, "err":I
    if-eqz v0, :cond_1

    #@39
    .line 100
    new-instance v3, Ljava/io/IOException;

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "writeHeader_native failed (error "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    const-string/jumbo v5, ")"

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@59
    throw v3

    #@5a
    .line 81
    :cond_1
    return-void
.end method

.method private static native readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private static native skipChunk_native(Ljava/io/FileDescriptor;I)I
.end method

.method private static native writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "helper"    # Landroid/app/backup/BackupHelper;

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 41
    return-void
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 50
    new-instance v4, Landroid/app/backup/BackupHelperDispatcher$Header;

    #@3
    invoke-direct {v4, v0}, Landroid/app/backup/BackupHelperDispatcher$Header;-><init>(Landroid/app/backup/BackupHelperDispatcher$Header;)V

    #@6
    .line 51
    .local v4, "header":Landroid/app/backup/BackupHelperDispatcher$Header;
    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    #@8
    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    #@b
    move-result-object v9

    #@c
    check-cast v9, Ljava/util/TreeMap;

    #@e
    .line 52
    .local v9, "helpers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    const/4 v10, 0x0

    #@f
    .line 54
    .local v10, "oldStateFD":Ljava/io/FileDescriptor;
    if-eqz p1, :cond_2

    #@11
    .line 55
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@14
    move-result-object v10

    #@15
    .line 56
    .local v10, "oldStateFD":Ljava/io/FileDescriptor;
    :cond_0
    :goto_0
    invoke-static {v4, v10}, Landroid/app/backup/BackupHelperDispatcher;->readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    #@18
    move-result v8

    #@19
    .local v8, "err":I
    if-ltz v8, :cond_2

    #@1b
    .line 57
    if-nez v8, :cond_0

    #@1d
    .line 58
    iget-object v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    #@1f
    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Landroid/app/backup/BackupHelper;

    #@25
    .line 59
    .local v5, "helper":Landroid/app/backup/BackupHelper;
    const-string/jumbo v0, "BackupHelperDispatcher"

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "handling existing helper \'"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "\' "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 60
    if-eqz v5, :cond_1

    #@4e
    move-object v0, p0

    #@4f
    move-object v1, p1

    #@50
    move-object v2, p2

    #@51
    move-object v3, p3

    #@52
    .line 61
    invoke-direct/range {v0 .. v5}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    #@55
    .line 62
    iget-object v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    #@57
    invoke-virtual {v9, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    goto :goto_0

    #@5b
    .line 64
    :cond_1
    iget v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->chunkSize:I

    #@5d
    invoke-static {v10, v0}, Landroid/app/backup/BackupHelperDispatcher;->skipChunk_native(Ljava/io/FileDescriptor;I)I

    #@60
    goto :goto_0

    #@61
    .line 71
    .end local v5    # "helper":Landroid/app/backup/BackupHelper;
    .end local v8    # "err":I
    .end local v10    # "oldStateFD":Ljava/io/FileDescriptor;
    :cond_2
    invoke-virtual {v9}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    #@64
    move-result-object v0

    #@65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@68
    move-result-object v7

    #@69
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@6c
    move-result v0

    #@6d
    if-eqz v0, :cond_3

    #@6f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@72
    move-result-object v6

    #@73
    check-cast v6, Ljava/util/Map$Entry;

    #@75
    .line 72
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@78
    move-result-object v0

    #@79
    check-cast v0, Ljava/lang/String;

    #@7b
    iput-object v0, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    #@7d
    .line 73
    const-string/jumbo v0, "BackupHelperDispatcher"

    #@80
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string/jumbo v2, "handling new helper \'"

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    iget-object v2, v4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    const-string/jumbo v2, "\'"

    #@95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v1

    #@9d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a3
    move-result-object v5

    #@a4
    check-cast v5, Landroid/app/backup/BackupHelper;

    #@a6
    .restart local v5    # "helper":Landroid/app/backup/BackupHelper;
    move-object v0, p0

    #@a7
    move-object v1, p1

    #@a8
    move-object v2, p2

    #@a9
    move-object v3, p3

    #@aa
    .line 75
    invoke-direct/range {v0 .. v5}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    #@ad
    goto :goto_1

    #@ae
    .line 46
    .end local v5    # "helper":Landroid/app/backup/BackupHelper;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    :cond_3
    return-void
.end method

.method public performRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "input"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 107
    const/4 v0, 0x0

    #@2
    .line 109
    .local v0, "alreadyComplained":Z
    new-instance v6, Landroid/app/backup/BackupDataInputStream;

    #@4
    invoke-direct {v6, p1}, Landroid/app/backup/BackupDataInputStream;-><init>(Landroid/app/backup/BackupDataInput;)V

    #@7
    .line 110
    .local v6, "stream":Landroid/app/backup/BackupDataInputStream;
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    #@a
    move-result v7

    #@b
    if-eqz v7, :cond_3

    #@d
    .line 112
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    .line 113
    .local v5, "rawKey":Ljava/lang/String;
    const/16 v7, 0x3a

    #@13
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v3

    #@17
    .line 114
    .local v3, "pos":I
    if-lez v3, :cond_2

    #@19
    .line 115
    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 116
    .local v4, "prefix":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    #@1f
    invoke-virtual {v7, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/app/backup/BackupHelper;

    #@25
    .line 117
    .local v1, "helper":Landroid/app/backup/BackupHelper;
    if-eqz v1, :cond_1

    #@27
    .line 118
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    #@2a
    move-result v7

    #@2b
    iput v7, v6, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    #@2d
    .line 119
    add-int/lit8 v7, v3, 0x1

    #@2f
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    iput-object v7, v6, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    #@35
    .line 120
    invoke-interface {v1, v6}, Landroid/app/backup/BackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    #@38
    .line 133
    .end local v1    # "helper":Landroid/app/backup/BackupHelper;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    #@3b
    goto :goto_0

    #@3c
    .line 122
    .restart local v1    # "helper":Landroid/app/backup/BackupHelper;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_0

    #@3e
    .line 123
    const-string/jumbo v7, "BackupHelperDispatcher"

    #@41
    new-instance v8, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v9, "Couldn\'t find helper for: \'"

    #@49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v8

    #@51
    const-string/jumbo v9, "\'"

    #@54
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v8

    #@58
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 124
    const/4 v0, 0x1

    #@60
    goto :goto_1

    #@61
    .line 128
    .end local v1    # "helper":Landroid/app/backup/BackupHelper;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    #@63
    .line 129
    const-string/jumbo v7, "BackupHelperDispatcher"

    #@66
    new-instance v8, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v9, "Entity with no prefix: \'"

    #@6e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v8

    #@72
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v8

    #@76
    const-string/jumbo v9, "\'"

    #@79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v8

    #@7d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    .line 130
    const/4 v0, 0x1

    #@85
    goto :goto_1

    #@86
    .line 137
    .end local v3    # "pos":I
    .end local v5    # "rawKey":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    #@88
    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@8b
    move-result-object v7

    #@8c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8f
    move-result-object v2

    #@90
    .local v2, "helper$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@93
    move-result v7

    #@94
    if-eqz v7, :cond_4

    #@96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@99
    move-result-object v1

    #@9a
    check-cast v1, Landroid/app/backup/BackupHelper;

    #@9c
    .line 138
    .restart local v1    # "helper":Landroid/app/backup/BackupHelper;
    invoke-interface {v1, p3}, Landroid/app/backup/BackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    #@9f
    goto :goto_2

    #@a0
    .line 106
    .end local v1    # "helper":Landroid/app/backup/BackupHelper;
    :cond_4
    return-void
.end method

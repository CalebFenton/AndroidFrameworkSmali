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
.field private static final greylist-max-o TAG:Ljava/lang/String; = "BackupHelperDispatcher"


# instance fields
.field greylist-max-o mHelpers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    .line 42
    return-void
.end method

.method private static native greylist-max-o allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private greylist-max-o doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V
    .registers 13
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

    .line 86
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 89
    .local v0, "newStateFD":Ljava/io/FileDescriptor;
    invoke-static {p4, v0}, Landroid/app/backup/BackupHelperDispatcher;->allocateHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v1

    .line 90
    .local v1, "pos":I
    const-string v2, ")"

    if-ltz v1, :cond_39

    .line 94
    iget-object v3, p4, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/app/backup/BackupDataOutput;->setKeyPrefix(Ljava/lang/String;)V

    .line 97
    invoke-interface {p5, p1, p2, p3}, Landroid/app/backup/BackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 101
    invoke-static {p4, v0, v1}, Landroid/app/backup/BackupHelperDispatcher;->writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I

    move-result v3

    .line 102
    .local v3, "err":I
    if-nez v3, :cond_1b

    .line 105
    return-void

    .line 103
    :cond_1b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeHeader_native failed (error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    .end local v3    # "err":I
    :cond_39
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocateHeader_native failed (error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static native greylist-max-o readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I
.end method

.method private static native greylist-max-o skipChunk_native(Ljava/io/FileDescriptor;I)I
.end method

.method private static native greylist-max-o writeHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;I)I
.end method


# virtual methods
.method public greylist-max-o addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .registers 4
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "helper"    # Landroid/app/backup/BackupHelper;

    .line 45
    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public greylist-max-o performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Landroid/app/backup/BackupHelperDispatcher$Header;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/backup/BackupHelperDispatcher$Header;-><init>(Landroid/app/backup/BackupHelperDispatcher-IA;)V

    move-object v6, v0

    .line 54
    .local v6, "header":Landroid/app/backup/BackupHelperDispatcher$Header;
    iget-object v0, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 55
    .local v0, "helpers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    const/4 v1, 0x0

    .line 57
    .local v1, "oldStateFD":Ljava/io/FileDescriptor;
    const-string v8, "BackupHelperDispatcher"

    if-eqz p1, :cond_70

    .line 58
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 59
    :goto_18
    invoke-static {v6, v1}, Landroid/app/backup/BackupHelperDispatcher;->readHeader_native(Landroid/app/backup/BackupHelperDispatcher$Header;Ljava/io/FileDescriptor;)I

    move-result v2

    move v9, v2

    .local v9, "err":I
    if-ltz v2, :cond_6c

    .line 60
    if-nez v9, :cond_68

    .line 61
    iget-object v2, v6, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/backup/BackupHelper;

    .line 62
    .local v7, "helper":Landroid/app/backup/BackupHelper;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling existing helper \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v7, :cond_5c

    .line 64
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .local v3, "oldState":Landroid/os/ParcelFileDescriptor;
    .local v4, "data":Landroid/app/backup/BackupDataOutput;
    .local v5, "newState":Landroid/os/ParcelFileDescriptor;
    invoke-direct/range {v2 .. v7}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    .line 65
    iget-object p1, v6, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 67
    .end local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .end local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    :cond_5c
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    iget p1, v6, Landroid/app/backup/BackupHelperDispatcher$Header;->chunkSize:I

    invoke-static {v1, p1}, Landroid/app/backup/BackupHelperDispatcher;->skipChunk_native(Ljava/io/FileDescriptor;I)I

    .line 69
    .end local v7    # "helper":Landroid/app/backup/BackupHelper;
    :goto_64
    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    goto :goto_18

    .line 60
    .end local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .end local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    :cond_68
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    goto :goto_18

    .line 59
    .end local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .end local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    :cond_6c
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    goto :goto_73

    .line 57
    .end local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .end local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "err":I
    .restart local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    :cond_70
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 74
    .end local p1    # "oldState":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "data":Landroid/app/backup/BackupDataOutput;
    .end local p3    # "newState":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "oldState":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "data":Landroid/app/backup/BackupDataOutput;
    .restart local v5    # "newState":Landroid/os/ParcelFileDescriptor;
    :goto_73
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 75
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, v6, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handling new helper \'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, v6, Landroid/app/backup/BackupHelperDispatcher$Header;->keyPrefix:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "\'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v8, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/app/backup/BackupHelper;

    .line 78
    .restart local v7    # "helper":Landroid/app/backup/BackupHelper;
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/backup/BackupHelperDispatcher;->doOneBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupHelperDispatcher$Header;Landroid/app/backup/BackupHelper;)V

    .line 79
    .end local v7    # "helper":Landroid/app/backup/BackupHelper;
    .end local p2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/backup/BackupHelper;>;"
    goto :goto_7b

    .line 80
    :cond_ba
    return-void
.end method

.method public greylist-max-o performRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p1, "input"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "alreadyComplained":Z
    new-instance v1, Landroid/app/backup/BackupDataInputStream;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupDataInputStream;-><init>(Landroid/app/backup/BackupDataInput;)V

    .line 113
    .local v1, "stream":Landroid/app/backup/BackupDataInputStream;
    :goto_6
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 115
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "rawKey":Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 117
    .local v3, "pos":I
    const-string v4, "\'"

    const-string v5, "BackupHelperDispatcher"

    if-lez v3, :cond_5b

    .line 118
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "prefix":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/backup/BackupHelper;

    .line 120
    .local v7, "helper":Landroid/app/backup/BackupHelper;
    if-eqz v7, :cond_3d

    .line 121
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    iput v4, v1, Landroid/app/backup/BackupDataInputStream;->dataSize:I

    .line 122
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/backup/BackupDataInputStream;->key:Ljava/lang/String;

    .line 123
    invoke-interface {v7, v1}, Landroid/app/backup/BackupHelper;->restoreEntity(Landroid/app/backup/BackupDataInputStream;)V

    goto :goto_5a

    .line 125
    :cond_3d
    if-nez v0, :cond_5a

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find helper for: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    .line 130
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "helper":Landroid/app/backup/BackupHelper;
    :cond_5a
    :goto_5a
    goto :goto_78

    .line 131
    :cond_5b
    if-nez v0, :cond_78

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entity with no prefix: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    .line 136
    :cond_78
    :goto_78
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 137
    .end local v2    # "rawKey":Ljava/lang/String;
    .end local v3    # "pos":I
    goto :goto_6

    .line 140
    :cond_7c
    iget-object v2, p0, Landroid/app/backup/BackupHelperDispatcher;->mHelpers:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupHelper;

    .line 141
    .local v3, "helper":Landroid/app/backup/BackupHelper;
    invoke-interface {v3, p3}, Landroid/app/backup/BackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    .line 142
    .end local v3    # "helper":Landroid/app/backup/BackupHelper;
    goto :goto_86

    .line 143
    :cond_96
    return-void
.end method

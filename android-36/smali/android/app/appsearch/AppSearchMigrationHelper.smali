.class public Landroid/app/appsearch/AppSearchMigrationHelper;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

.field private final blacklist mDatabaseName:Ljava/lang/String;

.field private final blacklist mDestinationTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMigratedFile:Ljava/io/File;

.field private final blacklist mService:Landroid/app/appsearch/aidl/IAppSearchManager;

.field private final blacklist mTempDirectoryForSchemaMigration:Ljava/io/File;

.field private blacklist mTotalNeedMigratedDocumentCount:I

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method constructor blacklist <init>(Landroid/app/appsearch/aidl/IAppSearchManager;Landroid/os/UserHandle;Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Ljava/util/Set;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/aidl/IAppSearchManager;",
            "Landroid/os/UserHandle;",
            "Landroid/app/appsearch/aidl/AppSearchAttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTotalNeedMigratedDocumentCount:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p4, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mDatabaseName:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p6, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTempDirectoryForSchemaMigration:Ljava/io/File;

    .line 28
    .line 29
    const-string p1, "appsearch"

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-static {p1, p2, p6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 37
    .line 38
    new-instance p1, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-interface {p5}, Ljava/util/Set;->size()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mDestinationTypes:Ljava/util/Set;

    .line 48
    .line 49
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_4a

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/app/appsearch/AppSearchSchema;

    .line 64
    .line 65
    iget-object p3, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mDestinationTypes:Ljava/util/Set;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    return-void
.end method

.method private blacklist readAndTransform(Ljava/io/File;Landroid/app/appsearch/Migrator;IILandroid/app/appsearch/stats/SchemaMigrationStats$Builder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/app/appsearch/exceptions/AppSearchException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    :try_start_a
    new-instance p1, Ljava/io/DataOutputStream;

    .line 12
    .line 13
    new-instance v1, Ljava/io/FileOutputStream;

    .line 14
    .line 15
    iget-object v2, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_67

    .line 22
    .line 23
    .line 24
    :goto_17
    :try_start_17
    invoke-static {v0}, Landroid/app/appsearch/AppSearchMigrationHelper;->readDocumentFromInputStream(Ljava/io/DataInputStream;)Landroid/app/appsearch/GenericDocument;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_1b
    .catch Ljava/io/EOFException; {:try_start_17 .. :try_end_1b} :catch_69
    .catchall {:try_start_17 .. :try_end_1b} :catchall_22

    .line 28
    if-ge p3, p4, :cond_24

    .line 29
    .line 30
    :try_start_1d
    invoke-virtual {p2, p3, p4, v1}, Landroid/app/appsearch/Migrator;->onUpgrade(IILandroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_28

    .line 35
    :catchall_22
    move-exception p0

    .line 36
    goto :goto_5e

    .line 37
    :cond_24
    invoke-virtual {p2, p3, p4, v1}, Landroid/app/appsearch/Migrator;->onDowngrade(IILandroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_28
    iget v2, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTotalNeedMigratedDocumentCount:I

    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    iput v2, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTotalNeedMigratedDocumentCount:I

    .line 45
    .line 46
    iget-object v2, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mDestinationTypes:Ljava/util/Set;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3d

    .line 57
    .line 58
    invoke-static {p1, v1}, Landroid/app/appsearch/AppSearchMigrationHelper;->writeDocumentToOutputStream(Ljava/io/DataOutputStream;Landroid/app/appsearch/GenericDocument;)V

    .line 59
    .line 60
    .line 61
    goto :goto_17

    .line 62
    :cond_3d
    new-instance p0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string p3, "Receive a migrated document with schema type: "

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p3, ". But the schema types doesn\'t exist in the request"

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 p3, 0x7

    .line 91
    invoke-direct {p0, p3, p2}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
    :try_end_5e
    .catchall {:try_start_1d .. :try_end_5e} :catchall_22

    .line 95
    :goto_5e
    :try_start_5e
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    .line 96
    .line 97
    .line 98
    goto :goto_66

    .line 99
    :catchall_62
    move-exception p1

    .line 100
    :try_start_63
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_66
    throw p0

    .line 104
    :catchall_67
    move-exception p0

    .line 105
    goto :goto_77

    .line 106
    :catch_69
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_67

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 110
    .line 111
    .line 112
    if-eqz p5, :cond_76

    .line 113
    .line 114
    iget p0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTotalNeedMigratedDocumentCount:I

    .line 115
    .line 116
    invoke-virtual {p5, p0}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->setTotalNeedMigratedDocumentCount(I)Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;

    .line 117
    .line 118
    .line 119
    :cond_76
    return-void

    .line 120
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    .line 121
    .line 122
    .line 123
    goto :goto_7f

    .line 124
    :catchall_7b
    move-exception p1

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :goto_7f
    throw p0
.end method

.method public static blacklist readDocumentFromInputStream(Ljava/io/DataInputStream;)Landroid/app/appsearch/GenericDocument;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2c

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_10
    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 30
    .line 31
    new-instance v1, Landroid/app/appsearch/GenericDocument;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Landroid/app/appsearch/GenericDocument;-><init>(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_27

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2c
    new-instance p0, Ljava/io/EOFException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public static blacklist writeDocumentToOutputStream(Ljava/io/DataOutputStream;Landroid/app/appsearch/GenericDocument;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/GenericDocument;->getDocumentParcel()Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_9
    invoke-virtual {p1, v0, v1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v1, p1

    .line 18
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method blacklist putMigratedDocuments(Landroid/app/appsearch/SetSchemaResponse$Builder;Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;J)Landroid/app/appsearch/AppSearchResult;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SetSchemaResponse$Builder;",
            "Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;",
            "J)",
            "Landroid/app/appsearch/AppSearchResult<",
            "Landroid/app/appsearch/SetSchemaResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTotalNeedMigratedDocumentCount:I

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaResponse$Builder;->build()Landroid/app/appsearch/SetSchemaResponse;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 15
    .line 16
    const/high16 v1, 0x10000000

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v5
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_5e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_15} :catch_5b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_15} :catch_5b
    .catchall {:try_start_d .. :try_end_15} :catchall_58

    .line 22
    :try_start_15
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v12, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 34
    .line 35
    new-instance v2, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;

    .line 36
    .line 37
    iget-object v3, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 38
    .line 39
    iget-object v4, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mDatabaseName:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v6, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/app/appsearch/stats/SchemaMigrationStats$Builder;->build()Landroid/app/appsearch/stats/SchemaMigrationStats;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v10

    .line 51
    move-wide/from16 v8, p3

    .line 52
    .line 53
    invoke-direct/range {v2 .. v11}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/UserHandle;Landroid/app/appsearch/stats/SchemaMigrationStats;JJ)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Landroid/app/appsearch/AppSearchMigrationHelper$2;

    .line 57
    .line 58
    invoke-direct {v3, p0, v1, v0}, Landroid/app/appsearch/AppSearchMigrationHelper$2;-><init>(Landroid/app/appsearch/AppSearchMigrationHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v12, v2, v3}, Landroid/app/appsearch/aidl/IAppSearchManager;->putDocumentsFromFile(Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/app/appsearch/AppSearchResult;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_69

    .line 78
    .line 79
    invoke-static {v0}, Landroid/app/appsearch/AppSearchResult;->newFailedResult(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/AppSearchResult;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_66

    .line 83
    if-eqz v5, :cond_60

    .line 84
    .line 85
    :try_start_54
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_5e
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_57} :catch_5b
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 86
    .line 87
    .line 88
    goto :goto_60

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    move-object p1, v0

    .line 91
    goto :goto_a2

    .line 92
    :catch_5b
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    goto :goto_8b

    .line 95
    :catch_5e
    move-exception v0

    .line 96
    goto :goto_95

    .line 97
    :cond_60
    :goto_60
    iget-object p0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 100
    .line 101
    .line 102
    return-object v0

    .line 103
    :catchall_66
    move-exception v0

    .line 104
    move-object v1, v0

    .line 105
    goto :goto_80

    .line 106
    :cond_69
    :try_start_69
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/util/List;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/app/appsearch/SetSchemaResponse$Builder;->addMigrationFailures(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaResponse$Builder;
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_66

    .line 116
    .line 117
    .line 118
    if-eqz v5, :cond_7a

    .line 119
    .line 120
    :try_start_77
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_5e
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_7a} :catch_5b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_58

    .line 121
    .line 122
    .line 123
    :cond_7a
    :goto_7a
    iget-object p0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    goto :goto_99

    .line 129
    :goto_80
    if-eqz v5, :cond_8a

    .line 130
    .line 131
    :try_start_82
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    .line 132
    .line 133
    .line 134
    goto :goto_8a

    .line 135
    :catchall_86
    move-exception v0

    .line 136
    :try_start_87
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    :goto_8a
    throw v1
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8b} :catch_5e
    .catch Ljava/lang/InterruptedException; {:try_start_87 .. :try_end_8b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_8b} :catch_5b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_58

    .line 140
    :goto_8b
    :try_start_8b
    invoke-static {p1}, Landroid/app/appsearch/AppSearchResult;->throwableToFailedResult(Ljava/lang/Throwable;)Landroid/app/appsearch/AppSearchResult;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_58

    .line 144
    iget-object p0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :goto_95
    :try_start_95
    invoke-static {v0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_58

    .line 151
    .line 152
    .line 153
    goto :goto_7a

    .line 154
    :goto_99
    invoke-virtual {p1}, Landroid/app/appsearch/SetSchemaResponse$Builder;->build()Landroid/app/appsearch/SetSchemaResponse;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/app/appsearch/AppSearchResult;->newSuccessfulResult(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :goto_a2
    iget-object p0, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mMigratedFile:Ljava/io/File;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 166
    .line 167
    .line 168
    throw p1
.end method

.method blacklist queryAndTransform(Ljava/lang/String;Landroid/app/appsearch/Migrator;IILandroid/app/appsearch/stats/SchemaMigrationStats$Builder;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/app/appsearch/exceptions/AppSearchException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mTempDirectoryForSchemaMigration:Ljava/io/File;

    .line 3
    .line 4
    const-string v2, "appsearch"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const/high16 v0, 0x20000000

    .line 11
    .line 12
    :try_start_b
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v8
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_6f
    .catchall {:try_start_b .. :try_end_f} :catchall_6c

    .line 16
    :try_start_f
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mService:Landroid/app/appsearch/aidl/IAppSearchManager;

    .line 28
    .line 29
    new-instance v5, Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;

    .line 30
    .line 31
    iget-object v6, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mCallerAttributionSource:Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 32
    .line 33
    iget-object v7, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mDatabaseName:Ljava/lang/String;

    .line 34
    .line 35
    const-string v9, ""

    .line 36
    .line 37
    new-instance v10, Landroid/app/appsearch/SearchSpec$Builder;

    .line 38
    .line 39
    invoke-direct {v10}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    filled-new-array {p1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    invoke-virtual {v10, v11}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-virtual {v10, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setTermMatch(I)Landroid/app/appsearch/SearchSpec$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    iget-object v11, p0, Landroid/app/appsearch/AppSearchMigrationHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v12

    .line 64
    invoke-direct/range {v5 .. v13}, Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/os/UserHandle;J)V
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_87

    .line 65
    .line 66
    .line 67
    move-object v1, v8

    .line 68
    :try_start_43
    new-instance v6, Landroid/app/appsearch/AppSearchMigrationHelper$1;

    .line 69
    .line 70
    invoke-direct {v6, p0, v2, v0}, Landroid/app/appsearch/AppSearchMigrationHelper$1;-><init>(Landroid/app/appsearch/AppSearchMigrationHelper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v3, v5, v6}, Landroid/app/appsearch/aidl/IAppSearchManager;->writeSearchResultsToFile(Landroid/app/appsearch/aidl/WriteSearchResultsToFileAidlRequest;Landroid/app/appsearch/aidl/IAppSearchResultCallback;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/app/appsearch/AppSearchResult;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_79

    .line 90
    .line 91
    move-object v3, p0

    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    move/from16 v6, p3

    .line 95
    .line 96
    move/from16 v7, p4

    .line 97
    .line 98
    move-object/from16 v8, p5

    .line 99
    .line 100
    invoke-direct/range {v3 .. v8}, Landroid/app/appsearch/AppSearchMigrationHelper;->readAndTransform(Ljava/io/File;Landroid/app/appsearch/Migrator;IILandroid/app/appsearch/stats/SchemaMigrationStats$Builder;)V
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_76

    .line 101
    .line 102
    .line 103
    if-eqz v1, :cond_72

    .line 104
    .line 105
    :try_start_68
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_6f
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    .line 106
    .line 107
    .line 108
    goto :goto_72

    .line 109
    :catchall_6c
    move-exception v0

    .line 110
    move-object p0, v0

    .line 111
    goto :goto_9c

    .line 112
    :catch_6f
    move-exception v0

    .line 113
    move-object p0, v0

    .line 114
    goto :goto_95

    .line 115
    :cond_72
    :goto_72
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_76
    move-exception v0

    .line 120
    :goto_77
    move-object p0, v0

    .line 121
    goto :goto_8a

    .line 122
    :cond_79
    :try_start_79
    new-instance p0, Landroid/app/appsearch/exceptions/AppSearchException;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {p0, v2, v0}, Landroid/app/appsearch/exceptions/AppSearchException;-><init>(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_76

    .line 136
    :catchall_87
    move-exception v0

    .line 137
    move-object v1, v8

    .line 138
    goto :goto_77

    .line 139
    :goto_8a
    if-eqz v1, :cond_94

    .line 140
    .line 141
    :try_start_8c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    .line 142
    .line 143
    .line 144
    goto :goto_94

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    :try_start_91
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_94
    :goto_94
    throw p0
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_95} :catch_6f
    .catchall {:try_start_91 .. :try_end_95} :catchall_6c

    .line 150
    :goto_95
    :try_start_95
    invoke-static {p0}, Landroid/app/appsearch/util/ExceptionUtil;->handleRemoteException(Landroid/os/RemoteException;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_6c

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_9c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 158
    .line 159
    .line 160
    throw p0
.end method

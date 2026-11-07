.class public final Landroid/app/usage/StorageStats;
.super Ljava/lang/Object;
.source "StorageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/StorageStats$AppDataType;
    }
.end annotation


# static fields
.field public static final whitelist APP_DATA_TYPE_FILE_TYPE_APK:I = 0x3

.field public static final whitelist APP_DATA_TYPE_FILE_TYPE_CURRENT_PROFILE:I = 0x2

.field public static final whitelist APP_DATA_TYPE_FILE_TYPE_DEXOPT_ARTIFACT:I = 0x0

.field public static final whitelist APP_DATA_TYPE_FILE_TYPE_DM:I = 0x4

.field public static final whitelist APP_DATA_TYPE_FILE_TYPE_REFERENCE_PROFILE:I = 0x1

.field public static final whitelist APP_DATA_TYPE_LIB:I = 0x5

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/StorageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "StorageStats"


# instance fields
.field public blacklist apkBytes:J

.field private blacklist artStatsFetched:Z

.field public greylist-max-o cacheBytes:J

.field public greylist-max-o codeBytes:J

.field public blacklist curProfBytes:J

.field public greylist-max-o dataBytes:J

.field public blacklist dexoptBytes:J

.field public blacklist dmBytes:J

.field public blacklist externalCacheBytes:J

.field public blacklist libBytes:J

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist refProfBytes:J

.field public blacklist uid:I

.field public blacklist userHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 269
    new-instance v0, Landroid/app/usage/StorageStats$1;

    invoke-direct {v0}, Landroid/app/usage/StorageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/StorageStats;->packageName:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/StorageStats;->userHandle:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/StorageStats;->uid:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    .line 245
    return-void
.end method

.method private blacklist getArtManagedStats()V
    .registers 6

    .line 285
    :try_start_0
    invoke-static {}, Landroid/app/usage/Flags;->getAppArtManagedBytes()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Landroid/app/usage/StorageStats;->artStatsFetched:Z

    if-nez v0, :cond_2e

    .line 286
    const-string/jumbo v0, "storagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/usage/IStorageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IStorageStatsManager;

    move-result-object v1

    .line 289
    .local v1, "storageStatsManagerService":Landroid/app/usage/IStorageStatsManager;
    iget-object v2, p0, Landroid/app/usage/StorageStats;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/usage/StorageStats;->userHandle:I

    iget v4, p0, Landroid/app/usage/StorageStats;->uid:I

    .line 290
    invoke-interface {v1, v2, v3, v4}, Landroid/app/usage/IStorageStatsManager;->queryArtManagedStats(Ljava/lang/String;II)Landroid/app/usage/StorageStats;

    move-result-object v2

    .line 292
    .local v2, "newStats":Landroid/app/usage/StorageStats;
    iget-wide v3, v2, Landroid/app/usage/StorageStats;->dexoptBytes:J

    iput-wide v3, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    .line 293
    iget-wide v3, v2, Landroid/app/usage/StorageStats;->curProfBytes:J

    iput-wide v3, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    .line 294
    iget-wide v3, v2, Landroid/app/usage/StorageStats;->refProfBytes:J

    iput-wide v3, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    .line 296
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/usage/StorageStats;->artStatsFetched:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 301
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "storageStatsManagerService":Landroid/app/usage/IStorageStatsManager;
    .end local v2    # "newStats":Landroid/app/usage/StorageStats;
    :cond_2e
    goto :goto_3a

    .line 298
    :catch_2f
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageStats"

    const-string v2, "Failed to get art stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method private blacklist getCurProfBytes()J
    .registers 3

    .line 310
    invoke-direct {p0}, Landroid/app/usage/StorageStats;->getArtManagedStats()V

    .line 311
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    return-wide v0
.end method

.method private blacklist getDexoptBytes()J
    .registers 3

    .line 305
    invoke-direct {p0}, Landroid/app/usage/StorageStats;->getArtManagedStats()V

    .line 306
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    return-wide v0
.end method

.method private blacklist getRefProfBytes()J
    .registers 3

    .line 315
    invoke-direct {p0}, Landroid/app/usage/StorageStats;->getArtManagedStats()V

    .line 316
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    return-wide v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppBytes()J
    .registers 3

    .line 157
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    return-wide v0
.end method

.method public whitelist getAppBytesByDataType(I)J
    .registers 4
    .param p1, "dataType"    # I

    .line 173
    packed-switch p1, :pswitch_data_1e

    .line 180
    const-wide/16 v0, 0x0

    return-wide v0

    .line 178
    :pswitch_6
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    return-wide v0

    .line 179
    :pswitch_9
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    return-wide v0

    .line 177
    :pswitch_c
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    return-wide v0

    .line 176
    :pswitch_f
    invoke-direct {p0}, Landroid/app/usage/StorageStats;->getCurProfBytes()J

    move-result-wide v0

    return-wide v0

    .line 175
    :pswitch_14
    invoke-direct {p0}, Landroid/app/usage/StorageStats;->getRefProfBytes()J

    move-result-wide v0

    return-wide v0

    .line 174
    :pswitch_19
    invoke-direct {p0}, Landroid/app/usage/StorageStats;->getDexoptBytes()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist getCacheBytes()J
    .registers 3

    .line 212
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    return-wide v0
.end method

.method public whitelist getDataBytes()J
    .registers 3

    .line 198
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    return-wide v0
.end method

.method public whitelist getExternalCacheBytes()J
    .registers 3

    .line 223
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 254
    iget-object v0, p0, Landroid/app/usage/StorageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Landroid/app/usage/StorageStats;->userHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/app/usage/StorageStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->codeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dataBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->cacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->refProfBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 262
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->curProfBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 263
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->apkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->libBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->dmBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-wide v0, p0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    return-void
.end method

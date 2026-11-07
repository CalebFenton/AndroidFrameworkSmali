.class Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;
.super Ljava/lang/Object;
.source "BackupRestoreEventLogger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "dataType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "successCount":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .local v2, "failCount":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 432
    .local v3, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v4

    .line 433
    .local v4, "errorsBundle":Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 434
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_25

    .line 437
    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 439
    .local v5, "metadataHash":[B
    new-instance v6, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    invoke-direct {v6, v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;-><init>(Ljava/lang/String;)V

    .line 440
    .local v6, "result":Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    invoke-static {v6, v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    .line 441
    invoke-static {v6, v2}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    .line 442
    invoke-static {v6}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 443
    invoke-static {v6, v5}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;[B)V

    .line 444
    return-object v6
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    .registers 3
    .param p1, "size"    # I

    .line 448
    new-array v0, p1, [Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult$1;->newArray(I)[Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object p1

    return-object p1
.end method

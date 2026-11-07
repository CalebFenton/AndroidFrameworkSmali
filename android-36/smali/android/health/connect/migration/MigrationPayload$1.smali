.class Landroid/health/connect/migration/MigrationPayload$1;
.super Ljava/lang/Object;
.source "MigrationPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/migration/MigrationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/health/connect/migration/MigrationPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/migration/MigrationPayload;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "type":I
    packed-switch v0, :pswitch_data_3e

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected payload type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :pswitch_20
    new-instance v1, Landroid/health/connect/migration/MetadataMigrationPayload;

    invoke-direct {v1, p1}, Landroid/health/connect/migration/MetadataMigrationPayload;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 68
    :pswitch_26
    new-instance v1, Landroid/health/connect/migration/PriorityMigrationPayload;

    invoke-direct {v1, p1}, Landroid/health/connect/migration/PriorityMigrationPayload;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 66
    :pswitch_2c
    new-instance v1, Landroid/health/connect/migration/AppInfoMigrationPayload;

    invoke-direct {v1, p1}, Landroid/health/connect/migration/AppInfoMigrationPayload;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 64
    :pswitch_32
    new-instance v1, Landroid/health/connect/migration/RecordMigrationPayload;

    invoke-direct {v1, p1}, Landroid/health/connect/migration/RecordMigrationPayload;-><init>(Landroid/os/Parcel;)V

    return-object v1

    .line 62
    :pswitch_38
    new-instance v1, Landroid/health/connect/migration/PermissionMigrationPayload;

    invoke-direct {v1, p1}, Landroid/health/connect/migration/PermissionMigrationPayload;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
    .end packed-switch
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

    .line 56
    invoke-virtual {p0, p1}, Landroid/health/connect/migration/MigrationPayload$1;->createFromParcel(Landroid/os/Parcel;)Landroid/health/connect/migration/MigrationPayload;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/health/connect/migration/MigrationPayload;
    .registers 3
    .param p1, "size"    # I

    .line 78
    new-array v0, p1, [Landroid/health/connect/migration/MigrationPayload;

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

    .line 56
    invoke-virtual {p0, p1}, Landroid/health/connect/migration/MigrationPayload$1;->newArray(I)[Landroid/health/connect/migration/MigrationPayload;

    move-result-object p1

    return-object p1
.end method

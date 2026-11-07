.class public final Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequestCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_DESCRIPTION:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static blacklist writeToParcel(Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getCallerAttributionSource()Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getDatabaseName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getSchemaMigrationStats()Landroid/app/appsearch/stats/SchemaMigrationStats;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x6

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getTotalLatencyStartTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-static {p1, p2, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x7

    .line 55
    invoke-virtual {p0}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;->getBinderCallStartTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-static {p1, p2, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;
    .registers 15

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-wide v9, v1

    move-wide v11, v9

    .line 3
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_5d

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_66

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 7
    :pswitch_23
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v11, v0

    goto :goto_e

    .line 8
    :pswitch_29
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_e

    .line 9
    :pswitch_2f
    sget-object v1, Landroid/app/appsearch/stats/SchemaMigrationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/stats/SchemaMigrationStats;

    move-object v8, v0

    goto :goto_e

    .line 11
    :pswitch_39
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    move-object v7, v0

    goto :goto_e

    .line 13
    :pswitch_43
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v6, v0

    goto :goto_e

    .line 15
    :pswitch_4d
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_e

    .line 16
    :pswitch_53
    sget-object v1, Landroid/app/appsearch/aidl/AppSearchAttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/aidl/AppSearchAttributionSource;

    move-object v4, v0

    goto :goto_e

    .line 18
    :cond_5d
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 19
    new-instance v3, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;

    invoke-direct/range {v3 .. v12}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;-><init>(Landroid/app/appsearch/aidl/AppSearchAttributionSource;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/UserHandle;Landroid/app/appsearch/stats/SchemaMigrationStats;JJ)V

    return-object v3

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_43
        :pswitch_39
        :pswitch_2f
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequestCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;

    return-object p0
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

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequestCreator;->newArray(I)[Landroid/app/appsearch/aidl/PutDocumentsFromFileAidlRequest;

    move-result-object p0

    return-object p0
.end method

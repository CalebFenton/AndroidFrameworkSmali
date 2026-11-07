.class public final Landroid/app/appsearch/safeparcel/PropertyParcelCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/safeparcel/PropertyParcel;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/safeparcel/PropertyParcel;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getPropertyName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getStringValues()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getLongValues()[J

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDoubleValues()[D

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeDoubleArray(Landroid/os/Parcel;I[DZ)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBooleanValues()[Z

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBooleanArray(Landroid/os/Parcel;I[ZZ)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBytesValues()[[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x7

    .line 55
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getDocumentValues()[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getEmbeddingValues()[Landroid/app/appsearch/EmbeddingVector;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x9

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyParcel;->getBlobHandleValues()[Landroid/app/appsearch/AppSearchBlobHandle;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, v1, p0, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyParcel;
    .registers 13

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 3
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_65

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 7
    :pswitch_23
    sget-object v1, Landroid/app/appsearch/AppSearchBlobHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/appsearch/AppSearchBlobHandle;

    move-object v10, v0

    goto :goto_e

    .line 9
    :pswitch_2d
    sget-object v1, Landroid/app/appsearch/EmbeddingVector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/appsearch/EmbeddingVector;

    move-object v9, v0

    goto :goto_e

    .line 11
    :pswitch_37
    sget-object v1, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    move-object v8, v0

    goto :goto_e

    .line 13
    :pswitch_41
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    move-result-object v0

    move-object v7, v0

    goto :goto_e

    .line 14
    :pswitch_47
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBooleanArray(Landroid/os/Parcel;I)[Z

    move-result-object v0

    move-object v6, v0

    goto :goto_e

    .line 15
    :pswitch_4d
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createDoubleArray(Landroid/os/Parcel;I)[D

    move-result-object v0

    move-object v5, v0

    goto :goto_e

    .line 16
    :pswitch_53
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createLongArray(Landroid/os/Parcel;I)[J

    move-result-object v0

    move-object v4, v0

    goto :goto_e

    .line 17
    :pswitch_59
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_e

    .line 18
    :pswitch_5f
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_e

    .line 19
    :cond_65
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 20
    new-instance v1, Landroid/app/appsearch/safeparcel/PropertyParcel;

    invoke-direct/range {v1 .. v10}, Landroid/app/appsearch/safeparcel/PropertyParcel;-><init>(Ljava/lang/String;[Ljava/lang/String;[J[D[Z[[B[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;[Landroid/app/appsearch/EmbeddingVector;[Landroid/app/appsearch/AppSearchBlobHandle;)V

    return-object v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_37
        :pswitch_2d
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/safeparcel/PropertyParcel;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/safeparcel/PropertyParcel;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/PropertyParcelCreator;->newArray(I)[Landroid/app/appsearch/safeparcel/PropertyParcel;

    move-result-object p0

    return-object p0
.end method

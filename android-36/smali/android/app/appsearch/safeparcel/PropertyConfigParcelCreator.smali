.class public final Landroid/app/appsearch/safeparcel/PropertyConfigParcelCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/safeparcel/PropertyConfigParcel;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getName()Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDataType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getCardinality()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getSchemaType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x5

    .line 39
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getStringIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDocumentIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x7

    .line 55
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getIntegerIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getJoinableConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x9

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDescription()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getEmbeddingIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0xb

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->isScoringEnabled()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p1, p2, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 16

    .line 2
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move v4, v1

    move v5, v4

    move v13, v5

    .line 3
    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_7c

    .line 4
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 5
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v1

    packed-switch v1, :pswitch_data_86

    .line 6
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 7
    :pswitch_26
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v0

    move v13, v0

    goto :goto_11

    .line 8
    :pswitch_2c
    sget-object v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;

    move-object v12, v0

    goto :goto_11

    .line 10
    :pswitch_36
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_11

    .line 11
    :pswitch_3c
    sget-object v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    move-object v10, v0

    goto :goto_11

    .line 13
    :pswitch_46
    sget-object v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;

    move-object v9, v0

    goto :goto_11

    .line 15
    :pswitch_50
    sget-object v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;

    move-object v8, v0

    goto :goto_11

    .line 17
    :pswitch_5a
    sget-object v1, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    move-object v7, v0

    goto :goto_11

    .line 19
    :pswitch_64
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_11

    .line 20
    :pswitch_6a
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v5, v0

    goto :goto_11

    .line 21
    :pswitch_70
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v0

    move v4, v0

    goto :goto_11

    .line 22
    :pswitch_76
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_11

    .line 23
    :cond_7c
    invoke-static {p1, p0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 24
    new-instance v2, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    invoke-direct/range {v2 .. v13}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$DocumentIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$IntegerIndexingConfigParcel;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;Ljava/lang/String;Landroid/app/appsearch/safeparcel/PropertyConfigParcel$EmbeddingIndexingConfigParcel;Z)V

    return-object v2

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_76
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5a
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_36
        :pswitch_2c
        :pswitch_26
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/PropertyConfigParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/safeparcel/PropertyConfigParcel;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/PropertyConfigParcelCreator;->newArray(I)[Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    move-result-object p0

    return-object p0
.end method

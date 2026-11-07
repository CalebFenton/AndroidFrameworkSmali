.class public final Landroid/app/appsearch/safeparcel/GenericDocumentParcelCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/safeparcel/GenericDocumentParcel;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/safeparcel/GenericDocumentParcel;Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getNamespace()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v1, v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getSchemaType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getCreationTimestampMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {p1, v0, v3, v4}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x5

    .line 39
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getTtlMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {p1, v0, v3, v4}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x6

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getScore()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x7

    .line 55
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getProperties()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;->getParentTypes()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p1, v0, p0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 19

    move-object/from16 v0, p1

    .line 2
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move-object v15, v9

    move-object/from16 v16, v15

    move-wide v10, v3

    move-wide v12, v10

    move v14, v5

    .line 3
    :goto_13
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_5b

    .line 4
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 5
    invoke-static {v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 6
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_13

    .line 7
    :pswitch_28
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_13

    .line 8
    :pswitch_2f
    sget-object v3, Landroid/app/appsearch/safeparcel/PropertyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {v0, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v15, v2

    goto :goto_13

    .line 10
    :pswitch_37
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v14, v2

    goto :goto_13

    .line 11
    :pswitch_3d
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v12, v2

    goto :goto_13

    .line 12
    :pswitch_43
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_13

    .line 13
    :pswitch_49
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_13

    .line 14
    :pswitch_4f
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_13

    .line 15
    :pswitch_55
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_13

    .line 16
    :cond_5b
    invoke-static {v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 17
    new-instance v6, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    invoke-direct/range {v6 .. v16}, Landroid/app/appsearch/safeparcel/GenericDocumentParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/List;Ljava/util/List;)V

    return-object v6

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_2f
        :pswitch_28
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcelCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/safeparcel/GenericDocumentParcelCreator;->newArray(I)[Landroid/app/appsearch/safeparcel/GenericDocumentParcel;

    move-result-object p0

    return-object p0
.end method

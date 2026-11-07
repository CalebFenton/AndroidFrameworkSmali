.class public final Landroid/app/appsearch/stats/SchemaMigrationStatsCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/stats/SchemaMigrationStats;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/stats/SchemaMigrationStats;Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getPackageName()Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getDatabase()Ljava/lang/String;

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
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getStatusCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getExecutorAcquisitionLatencyMillis()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x5

    .line 39
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getTotalLatencyMillis()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x6

    .line 47
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getGetSchemaLatencyMillis()I

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
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getQueryAndTransformLatencyMillis()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getFirstSetSchemaLatencyMillis()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 69
    .line 70
    .line 71
    const/16 v0, 0x9

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->isFirstSetSchemaSuccess()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 78
    .line 79
    .line 80
    const/16 v0, 0xa

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getSecondSetSchemaLatencyMillis()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 87
    .line 88
    .line 89
    const/16 v0, 0xb

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getSaveDocumentLatencyMillis()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 96
    .line 97
    .line 98
    const/16 v0, 0xc

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getTotalNeedMigratedDocumentCount()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 105
    .line 106
    .line 107
    const/16 v0, 0xd

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getMigrationFailureCount()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 114
    .line 115
    .line 116
    const/16 v0, 0xe

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getTotalSuccessMigratedDocumentCount()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {p1, v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 123
    .line 124
    .line 125
    const/16 v0, 0xf

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/appsearch/stats/SchemaMigrationStats;->getEnabledFeatures()J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    invoke-static {p1, v0, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, p2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 135
    .line 136
    .line 137
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/stats/SchemaMigrationStats;
    .registers 25

    move-object/from16 v0, p1

    .line 2
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, v2

    move-object v8, v7

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move-wide/from16 v21, v4

    .line 3
    :goto_1f
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_94

    .line 4
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 5
    invoke-static {v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_9e

    .line 6
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 7
    :pswitch_34
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide/from16 v21, v2

    goto :goto_1f

    .line 8
    :pswitch_3b
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v20, v2

    goto :goto_1f

    .line 9
    :pswitch_42
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v19, v2

    goto :goto_1f

    .line 10
    :pswitch_49
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v18, v2

    goto :goto_1f

    .line 11
    :pswitch_50
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v17, v2

    goto :goto_1f

    .line 12
    :pswitch_57
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v16, v2

    goto :goto_1f

    .line 13
    :pswitch_5e
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v2

    move v15, v2

    goto :goto_1f

    .line 14
    :pswitch_64
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v14, v2

    goto :goto_1f

    .line 15
    :pswitch_6a
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v13, v2

    goto :goto_1f

    .line 16
    :pswitch_70
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v12, v2

    goto :goto_1f

    .line 17
    :pswitch_76
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v11, v2

    goto :goto_1f

    .line 18
    :pswitch_7c
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto :goto_1f

    .line 19
    :pswitch_82
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v9, v2

    goto :goto_1f

    .line 20
    :pswitch_88
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_1f

    .line 21
    :pswitch_8e
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_1f

    .line 22
    :cond_94
    invoke-static {v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 23
    new-instance v6, Landroid/app/appsearch/stats/SchemaMigrationStats;

    invoke-direct/range {v6 .. v22}, Landroid/app/appsearch/stats/SchemaMigrationStats;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIZIIIIIJ)V

    return-object v6

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_88
        :pswitch_82
        :pswitch_7c
        :pswitch_76
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_57
        :pswitch_50
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_34
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/stats/SchemaMigrationStatsCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/stats/SchemaMigrationStats;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/stats/SchemaMigrationStats;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/stats/SchemaMigrationStats;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/stats/SchemaMigrationStatsCreator;->newArray(I)[Landroid/app/appsearch/stats/SchemaMigrationStats;

    move-result-object p0

    return-object p0
.end method

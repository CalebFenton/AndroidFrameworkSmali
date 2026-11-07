.class public final Landroid/app/appsearch/SearchSpecCreator;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appsearch/SearchSpec;",
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

.method static blacklist writeToParcel(Landroid/app/appsearch/SearchSpec;Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getTermMatch()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {p1, v2, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getFilterSchemas()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getFilterNamespaces()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    iget-object v2, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyFilters:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getFilterPackageNames()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getResultCountPerPage()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getRankingStrategy()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getOrder()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0x9

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getSnippetCount()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 76
    .line 77
    .line 78
    const/16 v1, 0xa

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getSnippetCountPerProperty()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0xb

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getMaxSnippetSize()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0xc

    .line 97
    .line 98
    iget-object v2, p0, Landroid/app/appsearch/SearchSpec;->mProjectionTypePropertyMasks:Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 101
    .line 102
    .line 103
    const/16 v1, 0xd

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getResultGroupingTypeFlags()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 110
    .line 111
    .line 112
    const/16 v1, 0xe

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getResultGroupingLimit()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {p1, v1, v2}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 119
    .line 120
    .line 121
    const/16 v1, 0xf

    .line 122
    .line 123
    iget-object v2, p0, Landroid/app/appsearch/SearchSpec;->mTypePropertyWeightsField:Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-static {p1, v1, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 126
    .line 127
    .line 128
    const/16 v1, 0x10

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getJoinSpec()Landroid/app/appsearch/JoinSpec;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {p1, v1, v2, p2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 135
    .line 136
    .line 137
    const/16 p2, 0x11

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getAdvancedRankingExpression()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    const/16 p2, 0x12

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getEnabledFeatures()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 153
    .line 154
    .line 155
    const/16 p2, 0x13

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getSearchSourceLogTag()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    const/16 p2, 0x14

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getEmbeddingParameters()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 171
    .line 172
    .line 173
    const/16 p2, 0x15

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getDefaultEmbeddingSearchMetricType()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-static {p1, p2, v1}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 180
    .line 181
    .line 182
    const/16 p2, 0x16

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getInformationalRankingExpressions()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 189
    .line 190
    .line 191
    const/16 p2, 0x17

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getSearchStringParameters()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 198
    .line 199
    .line 200
    const/16 p2, 0x18

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->getFilterDocumentIds()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {p1, p2, v1, v3}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 207
    .line 208
    .line 209
    const/16 p2, 0x19

    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec;->shouldRetrieveEmbeddingMatchInfos()Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    invoke-static {p1, p2, p0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 216
    .line 217
    .line 218
    invoke-static {p1, v0}, Landroid/app/appsearch/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 219
    .line 220
    .line 221
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchSpec;
    .registers 32

    move-object/from16 v0, p1

    .line 2
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v10, v5

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v25, v18

    move/from16 v29, v25

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object/from16 v16, v9

    move-object/from16 v19, v16

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v26, v24

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    .line 3
    :goto_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_f9

    .line 4
    invoke-static {v0}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 5
    invoke-static {v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_102

    .line 6
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_2f

    .line 7
    :pswitch_44
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v2

    move/from16 v29, v2

    goto :goto_2f

    .line 8
    :pswitch_4b
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v28, v2

    goto :goto_2f

    .line 9
    :pswitch_52
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v27, v2

    goto :goto_2f

    .line 10
    :pswitch_59
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_2f

    .line 11
    :pswitch_60
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v25, v2

    goto :goto_2f

    .line 12
    :pswitch_67
    sget-object v3, Landroid/app/appsearch/EmbeddingVector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    invoke-static {v0, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v24, v2

    goto :goto_2f

    .line 14
    :pswitch_70
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto :goto_2f

    .line 15
    :pswitch_77
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_2f

    .line 16
    :pswitch_7e
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_2f

    .line 17
    :pswitch_85
    sget-object v3, Landroid/app/appsearch/JoinSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-static {v0, v2, v3}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/JoinSpec;

    move-object/from16 v20, v2

    goto :goto_2f

    .line 19
    :pswitch_90
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_2f

    .line 20
    :pswitch_97
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v18, v2

    goto :goto_2f

    .line 21
    :pswitch_9e
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move/from16 v17, v2

    goto :goto_2f

    .line 22
    :pswitch_a5
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_2f

    .line 23
    :pswitch_ac
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v15, v2

    goto/16 :goto_2f

    .line 24
    :pswitch_b3
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v14, v2

    goto/16 :goto_2f

    .line 25
    :pswitch_ba
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v13, v2

    goto/16 :goto_2f

    .line 26
    :pswitch_c1
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v12, v2

    goto/16 :goto_2f

    .line 27
    :pswitch_c8
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v11, v2

    goto/16 :goto_2f

    .line 28
    :pswitch_cf
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto/16 :goto_2f

    .line 29
    :pswitch_d6
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_2f

    .line 30
    :pswitch_dd
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_2f

    .line 31
    :pswitch_e4
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object v7, v2

    goto/16 :goto_2f

    .line 32
    :pswitch_eb
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_2f

    .line 33
    :pswitch_f2
    invoke-static {v0, v2}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v5, v2

    goto/16 :goto_2f

    .line 34
    :cond_f9
    invoke-static {v0, v1}, Landroid/app/appsearch/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 35
    new-instance v4, Landroid/app/appsearch/SearchSpec;

    invoke-direct/range {v4 .. v29}, Landroid/app/appsearch/SearchSpec;-><init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;IIIIIILandroid/os/Bundle;IILandroid/os/Bundle;Landroid/app/appsearch/JoinSpec;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-object v4

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_eb
        :pswitch_e4
        :pswitch_dd
        :pswitch_d6
        :pswitch_cf
        :pswitch_c8
        :pswitch_c1
        :pswitch_ba
        :pswitch_b3
        :pswitch_ac
        :pswitch_a5
        :pswitch_9e
        :pswitch_97
        :pswitch_90
        :pswitch_85
        :pswitch_7e
        :pswitch_77
        :pswitch_70
        :pswitch_67
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_44
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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpecCreator;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/app/appsearch/SearchSpec;
    .registers 2

    .line 2
    new-array p0, p1, [Landroid/app/appsearch/SearchSpec;

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
    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpecCreator;->newArray(I)[Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

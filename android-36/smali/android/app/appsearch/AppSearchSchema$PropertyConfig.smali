.class public abstract Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$PropertyConfig$Cardinality;,
        Landroid/app/appsearch/AppSearchSchema$PropertyConfig$DataType;
    }
.end annotation


# static fields
.field public static final whitelist CARDINALITY_OPTIONAL:I = 0x2

.field public static final whitelist CARDINALITY_REPEATED:I = 0x1

.field public static final whitelist CARDINALITY_REQUIRED:I = 0x3

.field public static final blacklist DATA_TYPE_BLOB_HANDLE:I = 0x8

.field public static final blacklist DATA_TYPE_BOOLEAN:I = 0x4

.field public static final blacklist DATA_TYPE_BYTES:I = 0x5

.field public static final blacklist DATA_TYPE_DOCUMENT:I = 0x6

.field public static final blacklist DATA_TYPE_DOUBLE:I = 0x3

.field public static final blacklist DATA_TYPE_EMBEDDING:I = 0x7

.field public static final blacklist DATA_TYPE_LONG:I = 0x2

.field public static final blacklist DATA_TYPE_STRING:I = 0x1


# instance fields
.field final blacklist mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;


# direct methods
.method constructor blacklist <init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 8
    .line 9
    return-void
.end method

.method public static blacklist fromParcel(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDataType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    packed-switch v0, :pswitch_data_5a

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Unsupported property bundle of type "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDataType()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "; contents: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_2a
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BlobHandlePropertyConfig;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$BlobHandlePropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_30
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$EmbeddingPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_36
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_3c
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_42
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_48
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :pswitch_4e
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 82
    .line 83
    .line 84
    return-object v0

    .line 85
    :pswitch_54
    new-instance v0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method blacklist appendPropertyConfigString(Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "{\n"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->increaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, "name: \""

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "\",\n"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "description: \""

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getDescription()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 46
    .line 47
    .line 48
    instance-of v0, p0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    .line 49
    .line 50
    if-eqz v0, :cond_3a

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    check-cast v0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;->appendStringPropertyConfigFields(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 56
    .line 57
    .line 58
    goto :goto_4f

    .line 59
    :cond_3a
    instance-of v0, p0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    .line 60
    .line 61
    if-eqz v0, :cond_45

    .line 62
    .line 63
    move-object v0, p0

    .line 64
    check-cast v0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;->appendDocumentPropertyConfigFields(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 67
    .line 68
    .line 69
    goto :goto_4f

    .line 70
    :cond_45
    instance-of v0, p0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    .line 71
    .line 72
    if-eqz v0, :cond_4f

    .line 73
    .line 74
    move-object v0, p0

    .line 75
    check-cast v0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;->appendLongPropertyConfigFields(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 78
    .line 79
    .line 80
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getCardinality()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x1

    .line 85
    if-eq v0, v1, :cond_6e

    .line 86
    .line 87
    const/4 v1, 0x2

    .line 88
    if-eq v0, v1, :cond_68

    .line 89
    .line 90
    const/4 v1, 0x3

    .line 91
    if-eq v0, v1, :cond_62

    .line 92
    .line 93
    const-string v0, "cardinality: CARDINALITY_UNKNOWN,\n"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 96
    .line 97
    .line 98
    goto :goto_73

    .line 99
    :cond_62
    const-string v0, "cardinality: CARDINALITY_REQUIRED,\n"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 102
    .line 103
    .line 104
    goto :goto_73

    .line 105
    :cond_68
    const-string v0, "cardinality: CARDINALITY_OPTIONAL,\n"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_73

    .line 111
    :cond_6e
    const-string v0, "cardinality: CARDINALITY_REPEATED,\n"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 114
    .line 115
    .line 116
    :goto_73
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->getDataType()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    packed-switch p0, :pswitch_data_b8

    .line 121
    .line 122
    .line 123
    const-string p0, "dataType: DATA_TYPE_UNKNOWN,\n"

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_af

    .line 129
    :pswitch_80
    const-string p0, "dataType: DATA_TYPE_BLOB_HANDLE,\n"

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_af

    .line 135
    :pswitch_86
    const-string p0, "dataType: DATA_TYPE_EMBEDDING,\n"

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_af

    .line 141
    :pswitch_8c
    const-string p0, "dataType: DATA_TYPE_DOCUMENT,\n"

    .line 142
    .line 143
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_af

    .line 147
    :pswitch_92
    const-string p0, "dataType: DATA_TYPE_BYTES,\n"

    .line 148
    .line 149
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 150
    .line 151
    .line 152
    goto :goto_af

    .line 153
    :pswitch_98
    const-string p0, "dataType: DATA_TYPE_BOOLEAN,\n"

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 156
    .line 157
    .line 158
    goto :goto_af

    .line 159
    :pswitch_9e
    const-string p0, "dataType: DATA_TYPE_DOUBLE,\n"

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 162
    .line 163
    .line 164
    goto :goto_af

    .line 165
    :pswitch_a4
    const-string p0, "dataType: DATA_TYPE_LONG,\n"

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 168
    .line 169
    .line 170
    goto :goto_af

    .line 171
    :pswitch_aa
    const-string p0, "dataType: DATA_TYPE_STRING,\n"

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 174
    .line 175
    .line 176
    :goto_af
    invoke-virtual {p1}, Landroid/app/appsearch/util/IndentingStringBuilder;->decreaseIndentLevel()Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p0, "}"

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a4
        :pswitch_9e
        :pswitch_98
        :pswitch_92
        :pswitch_8c
        :pswitch_86
        :pswitch_80
    .end packed-switch
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p1, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    check-cast p1, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 14
    .line 15
    iget-object p1, p1, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public whitelist getCardinality()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getCardinality()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blacklist getDataType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDataType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->appendPropertyConfigString(Landroid/app/appsearch/util/IndentingStringBuilder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

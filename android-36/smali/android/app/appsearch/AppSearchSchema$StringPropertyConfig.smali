.class public final Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;
.super Landroid/app/appsearch/AppSearchSchema$PropertyConfig;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appsearch/AppSearchSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringPropertyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;,
        Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$DeletePropagationType;,
        Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$JoinableValueType;,
        Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$TokenizerType;,
        Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$IndexingType;
    }
.end annotation


# static fields
.field public static final blacklist DELETE_PROPAGATION_TYPE_NONE:I = 0x0

.field public static final blacklist DELETE_PROPAGATION_TYPE_PROPAGATE_FROM:I = 0x1

.field public static final whitelist INDEXING_TYPE_EXACT_TERMS:I = 0x1

.field public static final whitelist INDEXING_TYPE_NONE:I = 0x0

.field public static final whitelist INDEXING_TYPE_PREFIXES:I = 0x2

.field public static final whitelist JOINABLE_VALUE_TYPE_NONE:I = 0x0

.field public static final whitelist JOINABLE_VALUE_TYPE_QUALIFIED_ID:I = 0x1

.field public static final whitelist TOKENIZER_TYPE_NONE:I = 0x0

.field public static final whitelist TOKENIZER_TYPE_PLAIN:I = 0x1

.field public static final whitelist TOKENIZER_TYPE_RFC822:I = 0x3

.field public static final whitelist TOKENIZER_TYPE_VERBATIM:I = 0x2


# direct methods
.method constructor blacklist <init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;-><init>(Landroid/app/appsearch/safeparcel/PropertyConfigParcel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method blacklist appendStringPropertyConfigFields(Landroid/app/appsearch/util/IndentingStringBuilder;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;->getIndexingType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1e

    .line 8
    .line 9
    if-eq v0, v2, :cond_18

    .line 10
    .line 11
    if-eq v0, v1, :cond_12

    .line 12
    .line 13
    const-string v0, "indexingType: INDEXING_TYPE_UNKNOWN,\n"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_23

    .line 19
    :cond_12
    const-string v0, "indexingType: INDEXING_TYPE_PREFIXES,\n"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 22
    .line 23
    .line 24
    goto :goto_23

    .line 25
    :cond_18
    const-string v0, "indexingType: INDEXING_TYPE_EXACT_TERMS,\n"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    const-string v0, "indexingType: INDEXING_TYPE_NONE,\n"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_23
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;->getTokenizerType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_48

    .line 41
    .line 42
    if-eq v0, v2, :cond_42

    .line 43
    .line 44
    if-eq v0, v1, :cond_3c

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    if-eq v0, v1, :cond_36

    .line 48
    .line 49
    const-string v0, "tokenizerType: TOKENIZER_TYPE_UNKNOWN,\n"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_4d

    .line 55
    :cond_36
    const-string v0, "tokenizerType: TOKENIZER_TYPE_RFC822,\n"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 58
    .line 59
    .line 60
    goto :goto_4d

    .line 61
    :cond_3c
    const-string v0, "tokenizerType: TOKENIZER_TYPE_VERBATIM,\n"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_4d

    .line 67
    :cond_42
    const-string v0, "tokenizerType: TOKENIZER_TYPE_PLAIN,\n"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_4d

    .line 73
    :cond_48
    const-string v0, "tokenizerType: TOKENIZER_TYPE_NONE,\n"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 76
    .line 77
    .line 78
    :goto_4d
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;->getJoinableValueType()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_61

    .line 83
    .line 84
    if-eq v0, v2, :cond_5b

    .line 85
    .line 86
    const-string v0, "joinableValueType: JOINABLE_VALUE_TYPE_UNKNOWN,\n"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_66

    .line 92
    :cond_5b
    const-string v0, "joinableValueType: JOINABLE_VALUE_TYPE_QUALIFIED_ID,\n"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_66

    .line 98
    :cond_61
    const-string v0, "joinableValueType: JOINABLE_VALUE_TYPE_NONE,\n"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 101
    .line 102
    .line 103
    :goto_66
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;->getDeletePropagationType()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_7a

    .line 108
    .line 109
    if-eq p0, v2, :cond_74

    .line 110
    .line 111
    const-string p0, "deletePropagationType: DELETE_PROPAGATION_TYPE_UNKNOWN,\n"

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_74
    const-string p0, "deletePropagationType: DELETE_PROPAGATION_TYPE_PROPAGATE_FROM,\n"

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_7a
    const-string p0, "deletePropagationType: DELETE_PROPAGATION_TYPE_NONE,\n"

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Landroid/app/appsearch/util/IndentingStringBuilder;->append(Ljava/lang/String;)Landroid/app/appsearch/util/IndentingStringBuilder;

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public blacklist getDeletePropagationType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getJoinableConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->getDeletePropagationType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public whitelist getIndexingType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getStringIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;->getIndexingType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public whitelist getJoinableValueType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getJoinableConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$JoinableConfigParcel;->getJoinableValueType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public whitelist getTokenizerType()I
    .registers 1

    .line 1
    iget-object p0, p0, Landroid/app/appsearch/AppSearchSchema$PropertyConfig;->mPropertyConfigParcel:Landroid/app/appsearch/safeparcel/PropertyConfigParcel;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel;->getStringIndexingConfigParcel()Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/app/appsearch/safeparcel/PropertyConfigParcel$StringIndexingConfigParcel;->getTokenizerType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

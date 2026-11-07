.class public Lcom/android/internal/telephony/uicc/SimPhonebookRecord;
.super Ljava/lang/Object;
.source "SimPhonebookRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SimPhonebookRecord$Builder;
    }
.end annotation


# instance fields
.field private blacklist mAdditionalNumbers:[Ljava/lang/String;

.field private blacklist mAlphaTag:Ljava/lang/String;

.field private blacklist mEmails:[Ljava/lang/String;

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mRecordId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAdditionalNumbers(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;[Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAlphaTag(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEmails(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;[Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumber(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRecordId(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    .line 45
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertRecordFormatToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    if-eqz p5, :cond_27

    .line 49
    array-length p1, p5

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    :goto_17
    array-length p2, p5

    if-ge p1, p2, :cond_27

    .line 51
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    aget-object p3, p5, p1

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertRecordFormatToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_27
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/radio/V1_6/PhonebookRecordInfo;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    if-eqz p1, :cond_3d

    .line 58
    iget v0, p1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    .line 59
    iget-object v0, p1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    move-object v0, v1

    goto :goto_27

    .line 62
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_27
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    .line 63
    iget-object p1, p1, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    if-nez p1, :cond_2e

    goto :goto_3b

    .line 65
    :cond_2e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    :goto_3b
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    :cond_3d
    return-void
.end method

.method private blacklist convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_3

    return-object p1

    .line 132
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private blacklist convertNumberToRecordFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 p0, 0x3b

    const/16 v0, 0x65

    .line 153
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2c

    const/16 v0, 0x54

    .line 154
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x4e

    const/16 v0, 0x3f

    .line 155
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist convertRecordFormatToNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 p0, 0x65

    const/16 v0, 0x3b

    .line 141
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x54

    const/16 v0, 0x2c

    .line 142
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3f

    const/16 v0, 0x4e

    .line 143
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getAdditionalNumbers()[Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAlphaTag()Ljava/lang/String;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEmails()[Ljava/lang/String;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getNumber()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRecordId()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    return p0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    .line 162
    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toPhonebookRecordInfo()Landroid/hardware/radio/V1_6/PhonebookRecordInfo;
    .registers 7

    .line 72
    new-instance v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;-><init>()V

    .line 73
    iget v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    iput v1, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->recordId:I

    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->name:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNumberToRecordFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->number:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->emails:Ljava/util/ArrayList;

    .line 79
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 80
    array-length v2, v1

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_44

    aget-object v4, v1, v3

    .line 81
    iget-object v5, v0, Landroid/hardware/radio/V1_6/PhonebookRecordInfo;->additionalNumbers:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNumberToRecordFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_44
    return-object v0
.end method

.method public blacklist toPhonebookRecordInfoAidl()Landroid/hardware/radio/sim/PhonebookRecordInfo;
    .registers 6

    .line 88
    new-instance v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;

    invoke-direct {v0}, Landroid/hardware/radio/sim/PhonebookRecordInfo;-><init>()V

    .line 90
    iget v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    iput v1, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->recordId:I

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->name:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNumberToRecordFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->number:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 94
    iput-object v1, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->emails:[Ljava/lang/String;

    goto :goto_29

    .line 96
    :cond_25
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->emails:[Ljava/lang/String;

    .line 98
    :goto_29
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 99
    array-length v1, v1

    new-array v3, v1, [Ljava/lang/String;

    :goto_30
    if-ge v2, v1, :cond_3f

    .line 101
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->convertNumberToRecordFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 103
    :cond_3f
    iput-object v3, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->additionalNumbers:[Ljava/lang/String;

    return-object v0

    .line 105
    :cond_42
    new-array p0, v2, [Ljava/lang/String;

    iput-object p0, v0, Landroid/hardware/radio/sim/PhonebookRecordInfo;->additionalNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v1, "SimPhoneBookRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mRecordId:I

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAlphaTag:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_20

    move-object v1, v2

    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number = "

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mNumber:Ljava/lang/String;

    if-nez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v2, v1

    :goto_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email count = "

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    move v1, v2

    goto :goto_3e

    :cond_3d
    array-length v1, v1

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", email = "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad number count = "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-nez v1, :cond_59

    goto :goto_5a

    :cond_59
    array-length v2, v1

    :goto_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ad number = "

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

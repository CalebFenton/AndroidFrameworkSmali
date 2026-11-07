.class public Lcom/android/internal/telephony/FdnUtils;
.super Ljava/lang/Object;
.source "FdnUtils.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "FdnUtils"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist extractSMSC(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 196
    const-string v0, "\""

    const-string v1, "@"

    const-string v2, ","

    .line 197
    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 201
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :catch_11
    move-exception v0

    goto :goto_3b

    .line 202
    :cond_13
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 206
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    if-eqz v1, :cond_51

    .line 209
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_51

    const/4 v2, 0x0

    .line 210
    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 215
    aget-object v3, v1, v2

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 217
    :cond_38
    aget-object p0, v1, v2
    :try_end_3a
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_3a} :catch_11

    return-object p0

    .line 220
    :goto_3b
    sget-object v1, Lcom/android/internal/telephony/FdnUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractSMSC: Could not extract number from dialStr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-object p0
.end method

.method private static blacklist getFdnList(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 171
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 176
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    const/16 v0, 0x6f3b

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .registers 2

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isFDN(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_71

    .line 112
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_71

    .line 120
    :cond_10
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    const/4 v2, 0x0

    .line 122
    :try_start_15
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 123
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_15 .. :try_end_1f} :catch_28

    .line 125
    :try_start_1f
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1f .. :try_end_27} :catch_29

    goto :goto_34

    :catch_28
    move-object v3, v2

    .line 127
    :catch_29
    sget-object p1, Lcom/android/internal/telephony/FdnUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isFDN: could not parse dialStr"

    invoke-static {p1, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->extractSMSC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    :goto_34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v0

    :cond_39
    :goto_39
    if-ge v1, p1, :cond_70

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 137
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_39

    .line 142
    :cond_4e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5c

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    return v6

    .line 148
    :cond_5c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 149
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    return v6

    .line 154
    :cond_69
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    return v6

    :cond_70
    return v0

    .line 113
    :cond_71
    :goto_71
    sget-object p0, Lcom/android/internal/telephony/FdnUtils;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isFDN: unexpected null value"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static blacklist isFdnEnabled(I)Z
    .registers 2

    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    .line 75
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isNumberBlockedByFDN(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 56
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->isFdnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->getFdnList(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 61
    invoke-static {p1, p2, p0}, Lcom/android/internal/telephony/FdnUtils;->isFDN(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist isSuppServiceRequestBlockedByFdn(ILjava/util/ArrayList;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->isFdnEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 92
    :cond_8
    invoke-static {p0}, Lcom/android/internal/telephony/FdnUtils;->getFdnList(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_11
    if-ge v2, v0, :cond_22

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 94
    invoke-static {v3, p2, p0}, Lcom/android/internal/telephony/FdnUtils;->isFDN(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v1

    :cond_22
    const/4 p0, 0x1

    return p0
.end method

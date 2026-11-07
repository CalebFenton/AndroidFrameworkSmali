.class Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguagePairCount"
.end annotation


# instance fields
.field final greylist languageCode:I

.field final greylist septetCounts:[I

.field final greylist unencodableCounts:[I


# direct methods
.method constructor greylist <init>(I)V
    .registers 7
    .param p1, "code"    # I

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iput p1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    .line 1140
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->-$$Nest$sfgetsHighestEnabledSingleShiftCode()I

    move-result v0

    .line 1141
    .local v0, "maxSingleShiftCode":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    .line 1142
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    .line 1145
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "tableOffset":I
    :goto_17
    const/4 v3, -0x1

    if-gt v1, v0, :cond_2c

    .line 1146
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->-$$Nest$sfgetsEnabledSingleShiftTables()[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v1, :cond_25

    .line 1147
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1149
    :cond_25
    iget-object v4, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v4, v1

    .line 1145
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1155
    .end local v1    # "i":I
    .end local v2    # "tableOffset":I
    :cond_2c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_36

    if-lt v0, v1, :cond_36

    .line 1156
    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    goto :goto_40

    .line 1157
    :cond_36
    const/4 v1, 0x3

    if-ne p1, v1, :cond_40

    const/4 v1, 0x2

    if-lt v0, v1, :cond_40

    .line 1158
    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    .line 1160
    :cond_40
    :goto_40
    return-void
.end method

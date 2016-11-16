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
.field final languageCode:I

.field final septetCounts:[I

.field final unencodableCounts:[I


# direct methods
.method constructor <init>(I)V
    .locals 7
    .param p1, "code"    # I

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, -0x1

    #@3
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1105
    iput p1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    #@8
    .line 1106
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->-get1()I

    #@b
    move-result v1

    #@c
    .line 1107
    .local v1, "maxSingleShiftCode":I
    add-int/lit8 v3, v1, 0x1

    #@e
    new-array v3, v3, [I

    #@10
    iput-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@12
    .line 1108
    add-int/lit8 v3, v1, 0x1

    #@14
    new-array v3, v3, [I

    #@16
    iput-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    #@18
    .line 1111
    const/4 v0, 0x1

    #@19
    .local v0, "i":I
    const/4 v2, 0x0

    #@1a
    .local v2, "tableOffset":I
    :goto_0
    if-gt v0, v1, :cond_1

    #@1c
    .line 1112
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->-get0()[I

    #@1f
    move-result-object v3

    #@20
    aget v3, v3, v2

    #@22
    if-ne v3, v0, :cond_0

    #@24
    .line 1113
    add-int/lit8 v2, v2, 0x1

    #@26
    .line 1111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 1115
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@2b
    aput v4, v3, v0

    #@2d
    goto :goto_1

    #@2e
    .line 1121
    :cond_1
    if-ne p1, v5, :cond_3

    #@30
    if-lt v1, v5, :cond_3

    #@32
    .line 1122
    iget-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@34
    aput v4, v3, v5

    #@36
    .line 1104
    :cond_2
    :goto_2
    return-void

    #@37
    .line 1123
    :cond_3
    const/4 v3, 0x3

    #@38
    if-ne p1, v3, :cond_2

    #@3a
    if-lt v1, v6, :cond_2

    #@3c
    .line 1124
    iget-object v3, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    #@3e
    aput v4, v3, v6

    #@40
    goto :goto_2
.end method

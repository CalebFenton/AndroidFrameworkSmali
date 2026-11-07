.class public Lcom/android/internal/telephony/VisualVoicemailSmsParser;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23
    const-string v0, "MBOXUPDATE"

    const-string v1, "UNRECOGNIZED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z
    .registers 6

    .line 146
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 147
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static blacklist parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .registers 5

    const/4 v0, 0x0

    .line 55
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    .line 58
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_15

    return-object v0

    .line 62
    :cond_15
    const-string v1, ":"

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    return-object v0

    .line 66
    :cond_21
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_32

    return-object v0

    .line 71
    :cond_32
    new-instance v1, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_37} :catch_38

    return-object v1

    :catch_38
    return-object v0
.end method

.method public static blacklist parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .registers 5

    const/4 v0, 0x0

    .line 127
    :try_start_1
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    return-object v0

    :cond_b
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    return-object v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_24

    return-object v0

    .line 139
    :cond_24
    new-instance v1, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    invoke-direct {v1, v2, p0}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_29} :catch_2a

    return-object v1

    :catch_2a
    return-object v0
.end method

.method private static blacklist parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 92
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_37

    aget-object v4, p0, v3

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_19

    goto :goto_32

    .line 101
    :cond_19
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_35

    if-nez v5, :cond_25

    goto :goto_35

    .line 108
    :cond_25
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0

    :cond_37
    return-object v0
.end method

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
.field private static final ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 23
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 24
    const-string/jumbo v1, "MBOXUPDATE"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "UNRECOGNIZED"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 23
    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    #@11
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z
    .locals 6
    .param p0, "eventType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 146
    sget-object v3, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->ALLOWED_ALTERNATIVE_FORMAT_EVENT:[Ljava/lang/String;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget-object v0, v3, v1

    #@9
    .line 147
    .local v0, "event":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 148
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 151
    .end local v0    # "event":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .locals 8
    .param p0, "clientPrefix"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 55
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4
    move-result v5

    #@5
    if-nez v5, :cond_0

    #@7
    .line 56
    return-object v7

    #@8
    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    .line 59
    .local v4, "prefixEnd":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v5

    #@10
    const/16 v6, 0x3a

    #@12
    if-eq v5, v6, :cond_1

    #@14
    .line 60
    return-object v7

    #@15
    .line 62
    :cond_1
    const-string/jumbo v5, ":"

    #@18
    add-int/lit8 v6, v4, 0x1

    #@1a
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@1d
    move-result v2

    #@1e
    .line 63
    .local v2, "eventTypeEnd":I
    const/4 v5, -0x1

    #@1f
    if-ne v2, v5, :cond_2

    #@21
    .line 64
    return-object v7

    #@22
    .line 66
    :cond_2
    add-int/lit8 v5, v4, 0x1

    #@24
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 67
    .local v1, "eventType":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    #@2a
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-static {v5}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    #@31
    move-result-object v3

    #@32
    .line 68
    .local v3, "fields":Landroid/os/Bundle;
    if-nez v3, :cond_3

    #@34
    .line 69
    return-object v7

    #@35
    .line 71
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    #@37
    invoke-direct {v5, v1, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    return-object v5

    #@3b
    .line 72
    .end local v1    # "eventType":Ljava/lang/String;
    .end local v2    # "eventTypeEnd":I
    .end local v3    # "fields":Landroid/os/Bundle;
    .end local v4    # "prefixEnd":I
    :catch_0
    move-exception v0

    #@3c
    .line 73
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v7
.end method

.method public static parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .locals 6
    .param p0, "smsBody"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 127
    :try_start_0
    const-string/jumbo v4, "?"

    #@4
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    .line 128
    .local v2, "eventTypeEnd":I
    const/4 v4, -0x1

    #@9
    if-ne v2, v4, :cond_0

    #@b
    .line 129
    return-object v5

    #@c
    .line 131
    :cond_0
    const/4 v4, 0x0

    #@d
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 132
    .local v1, "eventType":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->isAllowedAlternativeFormatEvent(Ljava/lang/String;)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_1

    #@17
    .line 133
    return-object v5

    #@18
    .line 135
    :cond_1
    add-int/lit8 v4, v2, 0x1

    #@1a
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;

    #@21
    move-result-object v3

    #@22
    .line 136
    .local v3, "fields":Landroid/os/Bundle;
    if-nez v3, :cond_2

    #@24
    .line 137
    return-object v5

    #@25
    .line 139
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    #@27
    invoke-direct {v4, v1, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    return-object v4

    #@2b
    .line 140
    .end local v1    # "eventType":Ljava/lang/String;
    .end local v2    # "eventTypeEnd":I
    .end local v3    # "fields":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    #@2c
    .line 141
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v5
.end method

.method private static parseSmsBody(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 90
    new-instance v3, Landroid/os/Bundle;

    #@3
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@6
    .line 91
    .local v3, "keyValues":Landroid/os/Bundle;
    const-string/jumbo v6, ";"

    #@9
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 92
    .local v0, "entries":[Ljava/lang/String;
    array-length v8, v0

    #@e
    move v6, v7

    #@f
    :goto_0
    if-ge v6, v8, :cond_3

    #@11
    aget-object v1, v0, v6

    #@13
    .line 93
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@16
    move-result v9

    #@17
    if-nez v9, :cond_0

    #@19
    .line 92
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 101
    :cond_0
    const-string/jumbo v9, "="

    #@1f
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v4

    #@23
    .line 102
    .local v4, "separatorIndex":I
    const/4 v9, -0x1

    #@24
    if-eq v4, v9, :cond_1

    #@26
    if-nez v4, :cond_2

    #@28
    .line 106
    :cond_1
    const/4 v6, 0x0

    #@29
    return-object v6

    #@2a
    .line 108
    :cond_2
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 109
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x1

    #@30
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    .line 110
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    goto :goto_1

    #@38
    .line 113
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "separatorIndex":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

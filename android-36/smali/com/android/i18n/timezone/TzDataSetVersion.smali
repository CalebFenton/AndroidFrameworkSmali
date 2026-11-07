.class public final Lcom/android/i18n/timezone/TzDataSetVersion;
.super Ljava/lang/Object;
.source "TzDataSetVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
    }
.end annotation


# static fields
.field public static final blacklist CURRENT_FORMAT_MAJOR_VERSION:I = 0x9

.field public static final blacklist CURRENT_FORMAT_MINOR_VERSION:I = 0x1

.field public static final blacklist test-api DEFAULT_FILE_NAME:Ljava/lang/String; = "tz_version"

.field private static final blacklist FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist FORMAT_VERSION_STRING_LENGTH:I = 0x7

.field private static final blacklist REVISION_LENGTH:I = 0x3

.field private static final blacklist REVISION_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist RULES_VERSION_LENGTH:I = 0x5

.field private static final blacklist RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist TZ_DATA_VERSION_FILE_LENGTH:I = 0x11

.field private static final blacklist TZ_DATA_VERSION_FILE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist formatMajorVersion:I

.field private final blacklist formatMinorVersion:I

.field private final blacklist revision:I

.field private final blacklist rulesVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 94
    const-string v0, "(\\d{3})\\.(\\d{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/timezone/TzDataSetVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "(\\d{4}\\w)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/timezone/TzDataSetVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "(\\d{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/timezone/TzDataSetVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/i18n/timezone/TzDataSetVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 115
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/i18n/timezone/TzDataSetVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 116
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/timezone/TzDataSetVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    .line 117
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/timezone/TzDataSetVersion;->TZ_DATA_VERSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist test-api <init>(IILjava/lang/String;I)V
    .registers 8
    .param p1, "formatMajorVersion"    # I
    .param p2, "formatMinorVersion"    # I
    .param p3, "rulesVersion"    # Ljava/lang/String;
    .param p4, "revision"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/android/i18n/timezone/TzDataSetVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    .line 129
    invoke-static {p2}, Lcom/android/i18n/timezone/TzDataSetVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    .line 130
    sget-object v0, Lcom/android/i18n/timezone/TzDataSetVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 133
    iput-object p3, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    .line 134
    invoke-static {p4}, Lcom/android/i18n/timezone/TzDataSetVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    .line 135
    return-void

    .line 131
    :cond_24
    new-instance v0, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rulesVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist test-api currentFormatMajorVersion()I
    .registers 1

    .line 73
    const/16 v0, 0x9

    return v0
.end method

.method public static blacklist test-api currentFormatMinorVersion()I
    .registers 1

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist from3DigitVersionString(Ljava/lang/String;)I
    .registers 5
    .param p0, "versionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    .line 268
    const-string v0, "versionString must be a zero padded, 3 digit, positive decimal integer"

    .line 270
    .local v0, "parseErrorMessage":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "versionString must be a zero padded, 3 digit, positive decimal integer"

    if-ne v1, v2, :cond_1b

    .line 274
    :try_start_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 275
    .local v1, "version":I
    invoke-static {v1}, Lcom/android/i18n/timezone/TzDataSetVersion;->validate3DigitVersion(I)I

    move-result v2
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_13} :catch_14

    return v2

    .line 276
    .end local v1    # "version":I
    :catch_14
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;

    invoke-direct {v2, v3, v1}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 271
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1b
    new-instance v1, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;

    invoke-direct {v1, v3}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist fromBytes([B)Lcom/android/i18n/timezone/TzDataSetVersion;
    .registers 12
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    .line 139
    const-string v0, "\""

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 141
    .local v1, "tzDataVersion":Ljava/lang/String;
    :try_start_9
    sget-object v2, Lcom/android/i18n/timezone/TzDataSetVersion;->TZ_DATA_VERSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 142
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 146
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "formatMajorVersion":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "formatMinorVersion":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "rulesVersion":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "revision":Ljava/lang/String;
    new-instance v7, Lcom/android/i18n/timezone/TzDataSetVersion;

    .line 151
    invoke-static {v3}, Lcom/android/i18n/timezone/TzDataSetVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v8

    .line 152
    invoke-static {v4}, Lcom/android/i18n/timezone/TzDataSetVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v9

    .line 154
    invoke-static {v6}, Lcom/android/i18n/timezone/TzDataSetVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, v8, v9, v5, v10}, Lcom/android/i18n/timezone/TzDataSetVersion;-><init>(IILjava/lang/String;I)V

    .line 150
    return-object v7

    .line 143
    .end local v3    # "formatMajorVersion":Ljava/lang/String;
    .end local v4    # "formatMinorVersion":Ljava/lang/String;
    .end local v5    # "rulesVersion":Ljava/lang/String;
    .end local v6    # "revision":Ljava/lang/String;
    :cond_3b
    new-instance v3, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid tz data version string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;)V

    .end local v1    # "tzDataVersion":Ljava/lang/String;
    .end local p0    # "bytes":[B
    throw v3
    :try_end_58
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_58} :catch_58

    .line 155
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v1    # "tzDataVersion":Ljava/lang/String;
    .restart local p0    # "bytes":[B
    :catch_58
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tz data version string too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist test-api isCompatibleWithThisDevice(Lcom/android/i18n/timezone/TzDataSetVersion;)Z
    .registers 3
    .param p0, "tzDataVersion"    # Lcom/android/i18n/timezone/TzDataSetVersion;

    .line 209
    const/16 v0, 0x9

    iget v1, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private static blacklist readBytes(Ljava/io/File;I)[B
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    if-lez p1, :cond_22

    .line 304
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 305
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_7
    new-array v1, p1, [B

    .line 306
    .local v1, "max":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 307
    .local v3, "bytesRead":I
    new-array v4, v3, [B

    .line 308
    .local v4, "toReturn":[B
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    .line 309
    nop

    .line 310
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 309
    return-object v4

    .line 304
    .end local v1    # "max":[B
    .end local v3    # "bytesRead":I
    .end local v4    # "toReturn":[B
    :catchall_18
    move-exception v1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1

    .line 301
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBytes =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist test-api readFromFile(Ljava/io/File;)Lcom/android/i18n/timezone/TzDataSetVersion;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    .line 165
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->readBytes(Ljava/io/File;I)[B

    move-result-object v0

    .line 166
    .local v0, "versionBytes":[B
    invoke-static {v0}, Lcom/android/i18n/timezone/TzDataSetVersion;->fromBytes([B)Lcom/android/i18n/timezone/TzDataSetVersion;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist to3DigitVersionString(I)Ljava/lang/String;
    .registers 4
    .param p0, "version"    # I

    .line 258
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%03d"

    invoke-static {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->validate3DigitVersion(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 259
    :catch_15
    move-exception v0

    .line 260
    .local v0, "e":Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist toBytes(IILjava/lang/String;I)[B
    .registers 6
    .param p0, "majorFormatVersion"    # I
    .param p1, "minorFormatVerison"    # I
    .param p2, "rulesVersion"    # Ljava/lang/String;
    .param p3, "revision"    # I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/i18n/timezone/TzDataSetVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-static {p3}, Lcom/android/i18n/timezone/TzDataSetVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 202
    return-object v0
.end method

.method public static blacklist toFormatVersionString(II)Ljava/lang/String;
    .registers 4
    .param p0, "majorFormatVersion"    # I
    .param p1, "minorFormatVersion"    # I

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/i18n/timezone/TzDataSetVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    invoke-static {p1}, Lcom/android/i18n/timezone/TzDataSetVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    return-object v0
.end method

.method private static blacklist validate3DigitVersion(I)I
    .registers 4
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;
        }
    .end annotation

    .line 283
    if-ltz p0, :cond_7

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_7

    .line 286
    return p0

    .line 284
    :cond_7
    new-instance v0, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 0 <= value <= 999, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/i18n/timezone/TzDataSetVersion$TzDataSetException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 215
    if-ne p0, p1, :cond_4

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_33

    .line 221
    :cond_12
    move-object v1, p1

    check-cast v1, Lcom/android/i18n/timezone/TzDataSetVersion;

    .line 222
    .local v1, "that":Lcom/android/i18n/timezone/TzDataSetVersion;
    iget v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    iget v3, v1, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    if-eq v2, v3, :cond_1c

    .line 223
    return v0

    .line 225
    :cond_1c
    iget v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    iget v3, v1, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    if-eq v2, v3, :cond_23

    .line 226
    return v0

    .line 228
    :cond_23
    iget v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    iget v3, v1, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    if-eq v2, v3, :cond_2a

    .line 229
    return v0

    .line 231
    :cond_2a
    iget-object v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 219
    .end local v1    # "that":Lcom/android/i18n/timezone/TzDataSetVersion;
    :cond_33
    :goto_33
    return v0
.end method

.method public blacklist test-api getFormatMajorVersion()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    return v0
.end method

.method public blacklist test-api getFormatMinorVersion()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    return v0
.end method

.method public blacklist test-api getRevision()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    return v0
.end method

.method public blacklist test-api getRulesVersion()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 236
    iget v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    .line 237
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    add-int/2addr v1, v2

    .line 238
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 239
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    add-int/2addr v1, v2

    .line 240
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public blacklist test-api toBytes()[B
    .registers 5

    .line 197
    iget v0, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    iget v1, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    iget-object v2, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    iget v3, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/i18n/timezone/TzDataSetVersion;->toBytes(IILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TzDataSetVersion{formatMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formatMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->formatMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/i18n/timezone/TzDataSetVersion;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

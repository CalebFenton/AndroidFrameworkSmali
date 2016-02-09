.class final Ljava/util/TimeZone$CustomTimeZoneParser;
.super Ljava/lang/Object;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomTimeZoneParser"
.end annotation


# static fields
.field private static final CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/TimeZone$CustomTimeZoneParser;->getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "^GMT[-+](\\d{1,2})(:?(\\d\\d))?$"

    #@3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    .line 77
    sput-object v0, Ljava/util/TimeZone$CustomTimeZoneParser;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    #@9
    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getCustomTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 13
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v10, 0x3

    #@4
    .line 86
    sget-object v8, Ljava/util/TimeZone$CustomTimeZoneParser;->CUSTOM_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v3

    #@a
    .line 87
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    #@d
    move-result v8

    #@e
    if-nez v8, :cond_0

    #@10
    .line 88
    return-object v7

    #@11
    .line 92
    :cond_0
    const/4 v4, 0x0

    #@12
    .line 94
    .local v4, "minute":I
    const/4 v8, 0x1

    #@13
    :try_start_0
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    .line 95
    .local v1, "hour":I
    const/4 v8, 0x3

    #@1c
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    if-eqz v8, :cond_1

    #@22
    .line 96
    const/4 v8, 0x3

    #@23
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result v4

    #@2b
    .line 102
    :cond_1
    if-ltz v1, :cond_2

    #@2d
    const/16 v8, 0x17

    #@2f
    if-le v1, v8, :cond_3

    #@31
    .line 103
    :cond_2
    return-object v7

    #@32
    .line 98
    .end local v1    # "hour":I
    :catch_0
    move-exception v2

    #@33
    .line 99
    .local v2, "impossible":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/AssertionError;

    #@35
    invoke-direct {v7, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@38
    throw v7

    #@39
    .line 102
    .end local v2    # "impossible":Ljava/lang/NumberFormatException;
    .restart local v1    # "hour":I
    :cond_3
    if-ltz v4, :cond_2

    #@3b
    const/16 v8, 0x3b

    #@3d
    if-gt v4, v8, :cond_2

    #@3f
    .line 106
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v6

    #@43
    .line 107
    .local v6, "sign":C
    const v8, 0x36ee80

    #@46
    mul-int/2addr v8, v1

    #@47
    const v9, 0xea60

    #@4a
    mul-int/2addr v9, v4

    #@4b
    add-int v5, v8, v9

    #@4d
    .line 108
    .local v5, "raw":I
    const/16 v8, 0x2d

    #@4f
    if-ne v6, v8, :cond_4

    #@51
    .line 109
    neg-int v5, v5

    #@52
    .line 112
    :cond_4
    check-cast v7, Ljava/util/Locale;

    #@54
    const-string/jumbo v8, "GMT%c%02d:%02d"

    #@57
    new-array v9, v10, [Ljava/lang/Object;

    #@59
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5c
    move-result-object v10

    #@5d
    aput-object v10, v9, v11

    #@5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v10

    #@63
    aput-object v10, v9, v12

    #@65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@68
    move-result-object v10

    #@69
    const/4 v11, 0x2

    #@6a
    aput-object v10, v9, v11

    #@6c
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    .line 113
    .local v0, "cleanId":Ljava/lang/String;
    new-instance v7, Ljava/util/SimpleTimeZone;

    #@72
    invoke-direct {v7, v5, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@75
    return-object v7
.end method

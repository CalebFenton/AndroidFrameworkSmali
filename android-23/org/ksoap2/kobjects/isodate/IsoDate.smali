.class public Lorg/ksoap2/kobjects/isodate/IsoDate;
.super Ljava/lang/Object;
.source "IsoDate.java"


# static fields
.field public static final DATE:I = 0x1

.field public static final DATE_TIME:I = 0x3

.field public static final TIME:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dateToString(Ljava/util/Date;I)Ljava/lang/String;
    .locals 7
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "type"    # I

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/16 v5, 0x2d

    #@4
    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@7
    move-result-object v1

    #@8
    .line 39
    .local v1, "c":Ljava/util/Calendar;
    const-string/jumbo v4, "GMT"

    #@b
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@12
    .line 40
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@15
    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@1a
    .line 44
    .local v0, "buf":Ljava/lang/StringBuffer;
    and-int/lit8 v4, p1, 0x1

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 45
    const/4 v4, 0x1

    #@1f
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@22
    move-result v3

    #@23
    .line 46
    .local v3, "year":I
    div-int/lit8 v4, v3, 0x64

    #@25
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@28
    .line 47
    rem-int/lit8 v4, v3, 0x64

    #@2a
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@2d
    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 51
    const/4 v4, 0x2

    #@31
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@34
    move-result v4

    #@35
    add-int/lit8 v4, v4, 0x0

    #@37
    add-int/lit8 v4, v4, 0x1

    #@39
    .line 49
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@3c
    .line 52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3f
    .line 53
    const/4 v4, 0x5

    #@40
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@43
    move-result v4

    #@44
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@47
    .line 55
    const/4 v4, 0x3

    #@48
    if-ne p1, v4, :cond_0

    #@4a
    .line 56
    const-string/jumbo v4, "T"

    #@4d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 59
    .end local v3    # "year":I
    :cond_0
    and-int/lit8 v4, p1, 0x2

    #@52
    if-eqz v4, :cond_1

    #@54
    .line 60
    const/16 v4, 0xb

    #@56
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@59
    move-result v4

    #@5a
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@5d
    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@60
    .line 62
    const/16 v4, 0xc

    #@62
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@65
    move-result v4

    #@66
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@69
    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6c
    .line 64
    const/16 v4, 0xd

    #@6e
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@71
    move-result v4

    #@72
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@75
    .line 65
    const/16 v4, 0x2e

    #@77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7a
    .line 66
    const/16 v4, 0xe

    #@7c
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    #@7f
    move-result v2

    #@80
    .line 67
    .local v2, "ms":I
    div-int/lit8 v4, v2, 0x64

    #@82
    add-int/lit8 v4, v4, 0x30

    #@84
    int-to-char v4, v4

    #@85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@88
    .line 68
    rem-int/lit8 v4, v2, 0x64

    #@8a
    invoke-static {v0, v4}, Lorg/ksoap2/kobjects/isodate/IsoDate;->dd(Ljava/lang/StringBuffer;I)V

    #@8d
    .line 69
    const/16 v4, 0x5a

    #@8f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@92
    .line 72
    .end local v2    # "ms":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@95
    move-result-object v4

    #@96
    return-object v4
.end method

.method static dd(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "i"    # I

    #@0
    .prologue
    .line 32
    div-int/lit8 v0, p1, 0xa

    #@2
    add-int/lit8 v0, v0, 0x30

    #@4
    int-to-char v0, v0

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8
    .line 33
    rem-int/lit8 v0, p1, 0xa

    #@a
    add-int/lit8 v0, v0, 0x30

    #@c
    int-to-char v0, v0

    #@d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    .line 31
    return-void
.end method

.method public static stringToDate(Ljava/lang/String;I)Ljava/util/Date;
    .locals 13
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "type"    # I

    #@0
    .prologue
    const/16 v12, 0xe

    #@2
    const/16 v11, 0x8

    #@4
    const/4 v10, 0x5

    #@5
    const/16 v9, 0xb

    #@7
    const/4 v8, 0x0

    #@8
    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@b
    move-result-object v0

    #@c
    .line 79
    .local v0, "c":Ljava/util/Calendar;
    and-int/lit8 v5, p1, 0x1

    #@e
    if-eqz v5, :cond_5

    #@10
    .line 82
    const/4 v5, 0x4

    #@11
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result v5

    #@19
    .line 81
    const/4 v6, 0x1

    #@1a
    .line 80
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    #@1d
    .line 85
    const/4 v5, 0x7

    #@1e
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@25
    move-result v5

    #@26
    add-int/lit8 v5, v5, -0x1

    #@28
    add-int/lit8 v5, v5, 0x0

    #@2a
    .line 84
    const/4 v6, 0x2

    #@2b
    .line 83
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    #@2e
    .line 90
    const/16 v5, 0xa

    #@30
    invoke-virtual {p0, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v5

    #@38
    .line 88
    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    #@3b
    .line 92
    const/4 v5, 0x3

    #@3c
    if-ne p1, v5, :cond_0

    #@3e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@41
    move-result v5

    #@42
    if-ge v5, v9, :cond_1

    #@44
    .line 93
    :cond_0
    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->set(II)V

    #@47
    .line 94
    const/16 v5, 0xc

    #@49
    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    #@4c
    .line 95
    const/16 v5, 0xd

    #@4e
    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->set(II)V

    #@51
    .line 96
    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->set(II)V

    #@54
    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@57
    move-result-object v5

    #@58
    return-object v5

    #@59
    .line 99
    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5c
    move-result-object p0

    #@5d
    .line 106
    :goto_0
    const/4 v5, 0x2

    #@5e
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@65
    move-result v5

    #@66
    .line 104
    invoke-virtual {v0, v9, v5}, Ljava/util/Calendar;->set(II)V

    #@69
    .line 110
    const/4 v5, 0x3

    #@6a
    invoke-virtual {p0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@71
    move-result v5

    #@72
    .line 109
    const/16 v6, 0xc

    #@74
    .line 108
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    #@77
    .line 113
    const/4 v5, 0x6

    #@78
    invoke-virtual {p0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7f
    move-result v5

    #@80
    .line 112
    const/16 v6, 0xd

    #@82
    .line 111
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    #@85
    .line 115
    const/16 v4, 0x8

    #@87
    .line 116
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8a
    move-result v5

    #@8b
    if-ge v11, v5, :cond_7

    #@8d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@90
    move-result v5

    #@91
    const/16 v6, 0x2e

    #@93
    if-ne v5, v6, :cond_7

    #@95
    .line 117
    const/4 v3, 0x0

    #@96
    .line 118
    .local v3, "ms":I
    const/16 v2, 0x64

    #@98
    .line 120
    .local v2, "f":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@9a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@9d
    move-result v1

    #@9e
    .line 121
    .local v1, "d":C
    const/16 v5, 0x30

    #@a0
    if-lt v1, v5, :cond_2

    #@a2
    const/16 v5, 0x39

    #@a4
    if-le v1, v5, :cond_6

    #@a6
    .line 126
    :cond_2
    invoke-virtual {v0, v12, v3}, Ljava/util/Calendar;->set(II)V

    #@a9
    .line 131
    .end local v1    # "d":C
    .end local v2    # "f":I
    .end local v3    # "ms":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@ac
    move-result v5

    #@ad
    if-ge v4, v5, :cond_4

    #@af
    .line 133
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@b2
    move-result v5

    #@b3
    const/16 v6, 0x2b

    #@b5
    if-eq v5, v6, :cond_3

    #@b7
    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@ba
    move-result v5

    #@bb
    const/16 v6, 0x2d

    #@bd
    if-ne v5, v6, :cond_8

    #@bf
    .line 137
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v6, "GMT"

    #@c7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v5

    #@cb
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v5

    #@d7
    .line 136
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@da
    move-result-object v5

    #@db
    .line 135
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@de
    .line 145
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@e1
    move-result-object v5

    #@e2
    return-object v5

    #@e3
    .line 102
    .end local v4    # "pos":I
    :cond_5
    new-instance v5, Ljava/util/Date;

    #@e5
    const-wide/16 v6, 0x0

    #@e7
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@ea
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    #@ed
    goto/16 :goto_0

    #@ef
    .line 123
    .restart local v1    # "d":C
    .restart local v2    # "f":I
    .restart local v3    # "ms":I
    .restart local v4    # "pos":I
    :cond_6
    add-int/lit8 v5, v1, -0x30

    #@f1
    mul-int/2addr v5, v2

    #@f2
    add-int/2addr v3, v5

    #@f3
    .line 124
    div-int/lit8 v2, v2, 0xa

    #@f5
    goto :goto_1

    #@f6
    .line 129
    .end local v1    # "d":C
    .end local v2    # "f":I
    .end local v3    # "ms":I
    :cond_7
    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->set(II)V

    #@f9
    goto :goto_2

    #@fa
    .line 139
    :cond_8
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@fd
    move-result v5

    #@fe
    const/16 v6, 0x5a

    #@100
    if-ne v5, v6, :cond_9

    #@102
    .line 140
    const-string/jumbo v5, "GMT"

    #@105
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@108
    move-result-object v5

    #@109
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@10c
    goto :goto_3

    #@10d
    .line 142
    :cond_9
    new-instance v5, Ljava/lang/RuntimeException;

    #@10f
    const-string/jumbo v6, "illegal time format!"

    #@112
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@115
    throw v5
.end method

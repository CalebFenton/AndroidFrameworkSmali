.class public final Lcom/android/internal/telephony/HbpcdUtils;
.super Ljava/lang/Object;
.source "HbpcdUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HbpcdUtils"


# instance fields
.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    #@6
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    #@c
    .line 36
    return-void
.end method


# virtual methods
.method public getIddByMcc(I)Ljava/lang/String;
    .locals 10
    .param p1, "mcc"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 137
    const-string/jumbo v8, ""

    #@5
    .line 139
    .local v8, "idd":Ljava/lang/String;
    const/4 v6, 0x0

    #@6
    .line 141
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    #@7
    new-array v2, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v0, "IDD"

    #@c
    aput-object v0, v2, v9

    #@e
    .line 142
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    #@10
    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    #@12
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v5, "MCC="

    #@1a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    move-object v5, v4

    #@27
    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2a
    move-result-object v7

    #@2b
    .line 144
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    #@2d
    .line 145
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    #@30
    move-result v0

    #@31
    if-lez v0, :cond_0

    #@33
    .line 149
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    #@36
    .line 150
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    .line 154
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    #@3d
    .line 159
    :cond_1
    return-object v8
.end method

.method public getMcc(IIIZ)I
    .locals 19
    .param p1, "sid"    # I
    .param p2, "tz"    # I
    .param p3, "DSTflag"    # I
    .param p4, "isNitzTimeZone"    # Z

    #@0
    .prologue
    .line 44
    const/16 v18, 0x0

    #@2
    .line 51
    .local v18, "tmpMcc":I
    const/4 v1, 0x1

    #@3
    new-array v3, v1, [Ljava/lang/String;

    #@5
    const-string/jumbo v1, "MCC"

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v3, v2

    #@b
    .line 52
    .local v3, "projection2":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@d
    iget-object v1, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    #@f
    sget-object v2, Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;->CONTENT_URI:Landroid/net/Uri;

    #@11
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "SID="

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    move/from16 v0, p1

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    const/4 v5, 0x0

    #@28
    const/4 v6, 0x0

    #@29
    .line 52
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@2c
    move-result-object v13

    #@2d
    .line 55
    .local v13, "c2":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    #@2f
    .line 56
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    #@32
    move-result v14

    #@33
    .line 60
    .local v14, "c2Counter":I
    const/4 v1, 0x1

    #@34
    if-ne v14, v1, :cond_0

    #@36
    .line 64
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@39
    .line 65
    const/4 v1, 0x0

    #@3a
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    #@3d
    move-result v18

    #@3e
    .line 69
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@41
    .line 70
    return v18

    #@42
    .line 72
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@45
    .line 77
    .end local v14    # "c2Counter":I
    :cond_1
    const/4 v1, 0x1

    #@46
    new-array v6, v1, [Ljava/lang/String;

    #@48
    const-string/jumbo v1, "MCC"

    #@4b
    const/4 v2, 0x0

    #@4c
    aput-object v1, v6, v2

    #@4e
    .line 78
    .local v6, "projection3":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@50
    iget-object v4, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    #@52
    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;->CONTENT_URI:Landroid/net/Uri;

    #@54
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v2, "SID_Conflict="

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    move/from16 v0, p1

    #@62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    const-string/jumbo v2, " and ((("

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 80
    const-string/jumbo v2, "GMT_Offset_Low"

    #@70
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    .line 80
    const-string/jumbo v2, "<="

    #@77
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    move/from16 v0, p2

    #@7d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    .line 80
    const-string/jumbo v2, ") and ("

    #@84
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    move/from16 v0, p2

    #@8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    .line 80
    const-string/jumbo v2, "<="

    #@91
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    .line 81
    const-string/jumbo v2, "GMT_Offset_High"

    #@98
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    .line 81
    const-string/jumbo v2, ") and ("

    #@9f
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    .line 81
    const-string/jumbo v2, "0="

    #@a6
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    move/from16 v0, p3

    #@ac
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    .line 81
    const-string/jumbo v2, ")) or (("

    #@b3
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v1

    #@b7
    .line 82
    const-string/jumbo v2, "GMT_DST_Low"

    #@ba
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    .line 82
    const-string/jumbo v2, "<="

    #@c1
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    move/from16 v0, p2

    #@c7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v1

    #@cb
    .line 82
    const-string/jumbo v2, ") and ("

    #@ce
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    move/from16 v0, p2

    #@d4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    .line 82
    const-string/jumbo v2, "<="

    #@db
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    .line 83
    const-string/jumbo v2, "GMT_DST_High"

    #@e2
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v1

    #@e6
    .line 83
    const-string/jumbo v2, ") and ("

    #@e9
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    .line 83
    const-string/jumbo v2, "1="

    #@f0
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v1

    #@f4
    move/from16 v0, p3

    #@f6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    .line 83
    const-string/jumbo v2, ")))"

    #@fd
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v7

    #@105
    .line 84
    const/4 v8, 0x0

    #@106
    const/4 v9, 0x0

    #@107
    .line 78
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@10a
    move-result-object v15

    #@10b
    .line 85
    .local v15, "c3":Landroid/database/Cursor;
    if-eqz v15, :cond_4

    #@10d
    .line 86
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    #@110
    move-result v16

    #@111
    .line 87
    .local v16, "c3Counter":I
    if-lez v16, :cond_4

    #@113
    .line 88
    const/4 v1, 0x1

    #@114
    move/from16 v0, v16

    #@116
    if-le v0, v1, :cond_2

    #@118
    .line 89
    const-string/jumbo v1, "HbpcdUtils"

    #@11b
    new-instance v2, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v4, "something wrong, get more results for 1 conflict SID: "

    #@123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v2

    #@127
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v2

    #@12b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v2

    #@12f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    .line 92
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    #@135
    .line 93
    const/4 v1, 0x0

    #@136
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    #@139
    move-result v18

    #@13a
    .line 96
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@13d
    .line 97
    if-eqz p4, :cond_3

    #@13f
    .line 98
    return v18

    #@140
    .line 103
    :cond_3
    const/4 v1, 0x0

    #@141
    return v1

    #@142
    .line 109
    .end local v16    # "c3Counter":I
    :cond_4
    const/4 v1, 0x1

    #@143
    new-array v9, v1, [Ljava/lang/String;

    #@145
    const-string/jumbo v1, "MCC"

    #@148
    const/4 v2, 0x0

    #@149
    aput-object v1, v9, v2

    #@14b
    .line 110
    .local v9, "projection5":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@14d
    iget-object v7, v0, Lcom/android/internal/telephony/HbpcdUtils;->resolver:Landroid/content/ContentResolver;

    #@14f
    sget-object v8, Lcom/android/internal/telephony/HbpcdLookup$MccSidRange;->CONTENT_URI:Landroid/net/Uri;

    #@151
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v2, "SID_Range_Low<="

    #@159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v1

    #@15d
    move/from16 v0, p1

    #@15f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    const-string/jumbo v2, " and "

    #@166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v1

    #@16a
    .line 112
    const-string/jumbo v2, "SID_Range_High"

    #@16d
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v1

    #@171
    .line 112
    const-string/jumbo v2, ">="

    #@174
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v1

    #@178
    move/from16 v0, p1

    #@17a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v1

    #@17e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v10

    #@182
    .line 113
    const/4 v11, 0x0

    #@183
    const/4 v12, 0x0

    #@184
    .line 110
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@187
    move-result-object v17

    #@188
    .line 114
    .local v17, "c5":Landroid/database/Cursor;
    if-eqz v17, :cond_6

    #@18a
    .line 115
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    #@18d
    move-result v1

    #@18e
    if-lez v1, :cond_5

    #@190
    .line 117
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    #@193
    .line 118
    const/4 v1, 0x0

    #@194
    move-object/from16 v0, v17

    #@196
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@199
    move-result v18

    #@19a
    .line 120
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@19d
    .line 121
    return v18

    #@19e
    .line 123
    :cond_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@1a1
    .line 129
    :cond_6
    return v18
.end method

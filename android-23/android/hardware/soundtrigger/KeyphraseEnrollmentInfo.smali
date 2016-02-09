.class public Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
.super Ljava/lang/Object;
.source "KeyphraseEnrollmentInfo.java"


# static fields
.field public static final ACTION_MANAGE_VOICE_KEYPHRASES:Ljava/lang/String; = "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

.field public static final EXTRA_VOICE_KEYPHRASE_ACTION:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

.field public static final EXTRA_VOICE_KEYPHRASE_HINT_TEXT:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

.field public static final EXTRA_VOICE_KEYPHRASE_LOCALE:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

.field private static final TAG:Ljava/lang/String; = "KeyphraseEnrollmentInfo"

.field private static final VOICE_KEYPHRASE_META_DATA:Ljava/lang/String; = "android.voice_enrollment"


# instance fields
.field private mEnrollmentPackage:Ljava/lang/String;

.field private mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private mParseError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 20
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    new-instance v17, Landroid/content/Intent;

    #@5
    const-string/jumbo v18, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    #@8
    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    const/high16 v18, 0x10000

    #@d
    .line 93
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, v17

    #@11
    move/from16 v2, v18

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@16
    move-result-object v15

    #@17
    .line 95
    .local v15, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_0

    #@19
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    #@1c
    move-result v17

    #@1d
    if-eqz v17, :cond_1

    #@1f
    .line 97
    :cond_0
    const-string/jumbo v17, "No enrollment application found"

    #@22
    move-object/from16 v0, v17

    #@24
    move-object/from16 v1, p0

    #@26
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@28
    .line 98
    return-void

    #@29
    .line 101
    :cond_1
    const/4 v9, 0x0

    #@2a
    .line 102
    .local v9, "found":Z
    const/4 v3, 0x0

    #@2b
    .line 103
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v14

    #@2f
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v14, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v17

    #@33
    if-eqz v17, :cond_4

    #@35
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v13

    #@39
    check-cast v13, Landroid/content/pm/ResolveInfo;

    #@3b
    .line 106
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3d
    move-object/from16 v17, v0

    #@3f
    move-object/from16 v0, v17

    #@41
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@43
    move-object/from16 v17, v0

    #@45
    const/16 v18, 0x80

    #@47
    .line 105
    move-object/from16 v0, p1

    #@49
    move-object/from16 v1, v17

    #@4b
    move/from16 v2, v18

    #@4d
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@50
    move-result-object v3

    #@51
    .line 107
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@53
    move/from16 v17, v0

    #@55
    and-int/lit8 v17, v17, 0x8

    #@57
    if-nez v17, :cond_2

    #@59
    .line 110
    const-string/jumbo v17, "KeyphraseEnrollmentInfo"

    #@5c
    new-instance v18, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@63
    move-object/from16 v19, v0

    #@65
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v18

    #@69
    const-string/jumbo v19, "is not a privileged system app"

    #@6c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v18

    #@70
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v18

    #@74
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    goto :goto_0

    #@78
    .line 122
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    #@79
    .line 123
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v17, "KeyphraseEnrollmentInfo"

    #@7c
    const-string/jumbo v18, "error parsing voice enrollment meta-data"

    #@7f
    move-object/from16 v0, v17

    #@81
    move-object/from16 v1, v18

    #@83
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@86
    goto :goto_0

    #@87
    .line 113
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    const-string/jumbo v17, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@8a
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@8c
    move-object/from16 v18, v0

    #@8e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v17

    #@92
    if-nez v17, :cond_3

    #@94
    .line 116
    const-string/jumbo v17, "KeyphraseEnrollmentInfo"

    #@97
    new-instance v18, Ljava/lang/StringBuilder;

    #@99
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@9e
    move-object/from16 v19, v0

    #@a0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v18

    #@a4
    const-string/jumbo v19, " does not require MANAGE_VOICE_KEYPHRASES"

    #@a7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v18

    #@ab
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v18

    #@af
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    goto/16 :goto_0

    #@b4
    .line 119
    :cond_3
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@b6
    move-object/from16 v17, v0

    #@b8
    move-object/from16 v0, v17

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@be
    .line 120
    const/4 v9, 0x1

    #@bf
    .line 127
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    if-nez v9, :cond_5

    #@c1
    .line 128
    const/16 v17, 0x0

    #@c3
    move-object/from16 v0, v17

    #@c5
    move-object/from16 v1, p0

    #@c7
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@c9
    .line 129
    const-string/jumbo v17, "No suitable enrollment application found"

    #@cc
    move-object/from16 v0, v17

    #@ce
    move-object/from16 v1, p0

    #@d0
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@d2
    .line 130
    return-void

    #@d3
    .line 133
    :cond_5
    const/4 v11, 0x0

    #@d4
    .line 135
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2
    const-string/jumbo v17, "android.voice_enrollment"

    #@d7
    move-object/from16 v0, p1

    #@d9
    move-object/from16 v1, v17

    #@db
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@de
    move-result-object v11

    #@df
    .line 136
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v11, :cond_7

    #@e1
    .line 137
    new-instance v17, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v18, "No android.voice_enrollment meta-data for "

    #@e9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v17

    #@ed
    .line 138
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@ef
    move-object/from16 v18, v0

    #@f1
    .line 137
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v17

    #@f5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v17

    #@f9
    move-object/from16 v0, v17

    #@fb
    move-object/from16 v1, p0

    #@fd
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ff
    .line 173
    if-eqz v11, :cond_6

    #@101
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@104
    .line 139
    :cond_6
    return-void

    #@105
    .line 142
    :cond_7
    :try_start_3
    move-object/from16 v0, p1

    #@107
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@10a
    move-result-object v12

    #@10b
    .line 143
    .local v12, "res":Landroid/content/res/Resources;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@10e
    move-result-object v5

    #@10f
    .line 146
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_8
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    #@112
    move-result v16

    #@113
    .local v16, "type":I
    const/16 v17, 0x1

    #@115
    move/from16 v0, v16

    #@117
    move/from16 v1, v17

    #@119
    if-eq v0, v1, :cond_9

    #@11b
    .line 147
    const/16 v17, 0x2

    #@11d
    move/from16 v0, v16

    #@11f
    move/from16 v1, v17

    #@121
    if-ne v0, v1, :cond_8

    #@123
    .line 150
    :cond_9
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@126
    move-result-object v10

    #@127
    .line 151
    .local v10, "nodeName":Ljava/lang/String;
    const-string/jumbo v17, "voice-enrollment-application"

    #@12a
    move-object/from16 v0, v17

    #@12c
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v17

    #@130
    if-nez v17, :cond_b

    #@132
    .line 152
    const-string/jumbo v17, "Meta-data does not start with voice-enrollment-application tag"

    #@135
    move-object/from16 v0, v17

    #@137
    move-object/from16 v1, p0

    #@139
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@13b
    .line 173
    if-eqz v11, :cond_a

    #@13d
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@140
    .line 153
    :cond_a
    return-void

    #@141
    .line 157
    :cond_b
    :try_start_4
    sget-object v17, Lcom/android/internal/R$styleable;->VoiceEnrollmentApplication:[I

    #@143
    .line 156
    move-object/from16 v0, v17

    #@145
    invoke-virtual {v12, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@148
    move-result-object v4

    #@149
    .line 158
    .local v4, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@14b
    invoke-direct {v0, v4}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->initializeKeyphrasesFromTypedArray(Landroid/content/res/TypedArray;)V

    #@14e
    .line 159
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@151
    .line 173
    if-eqz v11, :cond_c

    #@153
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@156
    .line 89
    :cond_c
    return-void

    #@157
    .line 168
    .end local v4    # "array":Landroid/content/res/TypedArray;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v16    # "type":I
    :catch_1
    move-exception v6

    #@158
    .line 169
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    new-instance v17, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string/jumbo v18, "Error parsing keyphrase enrollment meta-data: "

    #@160
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v17

    #@164
    move-object/from16 v0, v17

    #@166
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v17

    #@16a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v17

    #@16e
    move-object/from16 v0, v17

    #@170
    move-object/from16 v1, p0

    #@172
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@174
    .line 170
    const-string/jumbo v17, "KeyphraseEnrollmentInfo"

    #@177
    const-string/jumbo v18, "error parsing keyphrase enrollment meta-data"

    #@17a
    move-object/from16 v0, v17

    #@17c
    move-object/from16 v1, v18

    #@17e
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@181
    .line 173
    if-eqz v11, :cond_d

    #@183
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@186
    .line 171
    :cond_d
    return-void

    #@187
    .line 164
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v7

    #@188
    .line 165
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    #@18a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@18d
    const-string/jumbo v18, "Error parsing keyphrase enrollment meta-data: "

    #@190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v17

    #@194
    move-object/from16 v0, v17

    #@196
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@199
    move-result-object v17

    #@19a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19d
    move-result-object v17

    #@19e
    move-object/from16 v0, v17

    #@1a0
    move-object/from16 v1, p0

    #@1a2
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@1a4
    .line 166
    const-string/jumbo v17, "KeyphraseEnrollmentInfo"

    #@1a7
    const-string/jumbo v18, "error parsing keyphrase enrollment meta-data"

    #@1aa
    move-object/from16 v0, v17

    #@1ac
    move-object/from16 v1, v18

    #@1ae
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1b1
    .line 173
    if-eqz v11, :cond_e

    #@1b3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@1b6
    .line 167
    :cond_e
    return-void

    #@1b7
    .line 160
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    #@1b8
    .line 161
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    new-instance v17, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string/jumbo v18, "Error parsing keyphrase enrollment meta-data: "

    #@1c0
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v17

    #@1c4
    move-object/from16 v0, v17

    #@1c6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v17

    #@1ca
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v17

    #@1ce
    move-object/from16 v0, v17

    #@1d0
    move-object/from16 v1, p0

    #@1d2
    iput-object v0, v1, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@1d4
    .line 162
    const-string/jumbo v17, "KeyphraseEnrollmentInfo"

    #@1d7
    const-string/jumbo v18, "error parsing keyphrase enrollment meta-data"

    #@1da
    move-object/from16 v0, v17

    #@1dc
    move-object/from16 v1, v18

    #@1de
    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1e1
    .line 173
    if-eqz v11, :cond_f

    #@1e3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@1e6
    .line 163
    :cond_f
    return-void

    #@1e7
    .line 172
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    #@1e8
    .line 173
    if-eqz v11, :cond_10

    #@1ea
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@1ed
    .line 172
    :cond_10
    throw v17
.end method

.method private initializeKeyphrasesFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 12
    .param p1, "array"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 179
    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6
    move-result v5

    #@7
    .line 181
    .local v5, "searchKeyphraseId":I
    if-gtz v5, :cond_0

    #@9
    .line 182
    const-string/jumbo v8, "No valid searchKeyphraseId specified in meta-data"

    #@c
    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@e
    .line 183
    const-string/jumbo v8, "KeyphraseEnrollmentInfo"

    #@11
    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@13
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 184
    return-void

    #@17
    .line 188
    :cond_0
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 190
    .local v4, "searchKeyphrase":Ljava/lang/String;
    if-nez v4, :cond_1

    #@1d
    .line 191
    const-string/jumbo v8, "No valid searchKeyphrase specified in meta-data"

    #@20
    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@22
    .line 192
    const-string/jumbo v8, "KeyphraseEnrollmentInfo"

    #@25
    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@27
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 193
    return-void

    #@2b
    .line 198
    :cond_1
    const/4 v8, 0x2

    #@2c
    .line 197
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 200
    .local v6, "searchKeyphraseSupportedLocales":Ljava/lang/String;
    if-nez v6, :cond_2

    #@32
    .line 201
    const-string/jumbo v8, "No valid searchKeyphraseSupportedLocales specified in meta-data"

    #@35
    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@37
    .line 202
    const-string/jumbo v8, "KeyphraseEnrollmentInfo"

    #@3a
    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@3c
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 203
    return-void

    #@40
    .line 205
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    #@42
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@45
    .line 207
    .local v2, "locales":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/util/Locale;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@48
    move-result v8

    #@49
    if-nez v8, :cond_3

    #@4b
    .line 209
    :try_start_0
    const-string/jumbo v8, ","

    #@4e
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    .line 210
    .local v7, "supportedLocalesDelimited":[Ljava/lang/String;
    const/4 v1, 0x0

    #@53
    .local v1, "i":I
    :goto_0
    array-length v8, v7

    #@54
    if-ge v1, v8, :cond_3

    #@56
    .line 211
    aget-object v8, v7, v1

    #@58
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@5f
    .line 210
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_0

    #@62
    .line 213
    .end local v1    # "i":I
    .end local v7    # "supportedLocalesDelimited":[Ljava/lang/String;
    :catch_0
    move-exception v0

    #@63
    .line 217
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v8, "Error reading searchKeyphraseSupportedLocales from meta-data"

    #@66
    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@68
    .line 218
    const-string/jumbo v8, "KeyphraseEnrollmentInfo"

    #@6b
    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@6d
    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@70
    .line 219
    return-void

    #@71
    .line 224
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v8, 0x3

    #@72
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    #@75
    move-result v3

    #@76
    .line 226
    .local v3, "recognitionModes":I
    if-gez v3, :cond_4

    #@78
    .line 227
    const-string/jumbo v8, "No valid searchKeyphraseRecognitionFlags specified in meta-data"

    #@7b
    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@7d
    .line 228
    const-string/jumbo v8, "KeyphraseEnrollmentInfo"

    #@80
    iget-object v9, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@82
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 229
    return-void

    #@86
    .line 231
    :cond_4
    new-array v8, v11, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@88
    iput-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8a
    .line 232
    iget-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8c
    new-instance v9, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8e
    invoke-direct {v9, v5, v4, v2, v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Landroid/util/ArraySet;I)V

    #@91
    aput-object v9, v8, v10

    #@93
    .line 177
    return-void
.end method


# virtual methods
.method public getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 6
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 289
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8
    array-length v2, v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 290
    :cond_0
    const-string/jumbo v1, "KeyphraseEnrollmentInfo"

    #@e
    const-string/jumbo v2, "Enrollment application doesn\'t support keyphrases"

    #@11
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 291
    return-object v5

    #@15
    .line 293
    :cond_1
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@17
    array-length v3, v2

    #@18
    :goto_0
    if-ge v1, v3, :cond_3

    #@1a
    aget-object v0, v2, v1

    #@1c
    .line 296
    .local v0, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsPhrase(Ljava/lang/String;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_2

    #@22
    .line 297
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsLocale(Ljava/util/Locale;)Z

    #@25
    move-result v4

    #@26
    .line 296
    if-eqz v4, :cond_2

    #@28
    .line 298
    return-object v0

    #@29
    .line 293
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 301
    .end local v0    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_3
    const-string/jumbo v1, "KeyphraseEnrollmentInfo"

    #@2f
    const-string/jumbo v2, "Enrollment application doesn\'t support the given keyphrase/locale"

    #@32
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 302
    return-object v5
.end method

.method public getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;
    .locals 4
    .param p1, "action"    # I
    .param p2, "keyphrase"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 262
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 263
    :cond_0
    const-string/jumbo v1, "KeyphraseEnrollmentInfo"

    #@10
    const-string/jumbo v2, "No enrollment application exists"

    #@13
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 264
    return-object v3

    #@17
    .line 267
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 268
    new-instance v1, Landroid/content/Intent;

    #@1f
    const-string/jumbo v2, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    #@22
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 269
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    #@27
    .line 268
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@2a
    move-result-object v1

    #@2b
    .line 270
    const-string/jumbo v2, "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

    #@2e
    .line 268
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    move-result-object v1

    #@32
    .line 271
    const-string/jumbo v2, "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

    #@35
    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    .line 268
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    move-result-object v1

    #@3d
    .line 272
    const-string/jumbo v2, "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

    #@40
    .line 268
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@43
    move-result-object v0

    #@44
    .line 273
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    #@45
    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-object v3
.end method

.method public getParseError()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public listKeyphraseMetadata()[Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 1

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "KeyphraseEnrollmentInfo [Keyphrases="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 308
    const-string/jumbo v1, ", EnrollmentPackage="

    #@19
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 308
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mEnrollmentPackage:Ljava/lang/String;

    #@1f
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 308
    const-string/jumbo v1, ", ParseError="

    #@26
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 308
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@2c
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 309
    const-string/jumbo v1, "]"

    #@33
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

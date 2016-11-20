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
.field private final mKeyphrasePackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private mParseError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 105
    new-instance v7, Landroid/content/Intent;

    #@6
    const-string/jumbo v8, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    #@9
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@c
    const/high16 v8, 0x10000

    #@e
    .line 104
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@11
    move-result-object v6

    #@12
    .line 106
    .local v6, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    #@14
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_1

    #@1a
    .line 108
    :cond_0
    const-string/jumbo v7, "No enrollment applications found"

    #@1d
    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@1f
    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@22
    move-result-object v7

    #@23
    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@25
    .line 110
    iput-object v10, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@27
    .line 111
    return-void

    #@28
    .line 114
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    #@2a
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    #@2d
    .line 115
    .local v3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    #@2f
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@32
    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@34
    .line 116
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v5

    #@38
    .local v5, "ri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_4

    #@3e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@44
    .line 119
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@46
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@48
    const/16 v8, 0x80

    #@4a
    .line 118
    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@4d
    move-result-object v0

    #@4e
    .line 120
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@50
    and-int/lit8 v7, v7, 0x8

    #@52
    if-nez v7, :cond_2

    #@54
    .line 123
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    #@57
    new-instance v8, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@5e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v8

    #@62
    const-string/jumbo v9, "is not a privileged system app"

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v8

    #@6d
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    goto :goto_0

    #@71
    .line 136
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@72
    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v8, "error parsing voice enrollment meta-data for "

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    .line 138
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@80
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@82
    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    .line 139
    .local v2, "error":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    const-string/jumbo v8, ": "

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a5
    .line 140
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    #@a8
    invoke-static {v7, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ab
    goto :goto_0

    #@ac
    .line 126
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "error":Ljava/lang/String;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    const-string/jumbo v7, "android.permission.MANAGE_VOICE_KEYPHRASES"

    #@af
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    #@b1
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v7

    #@b5
    if-nez v7, :cond_3

    #@b7
    .line 129
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    #@ba
    new-instance v8, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@c1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v8

    #@c5
    const-string/jumbo v9, " does not require MANAGE_VOICE_KEYPHRASES"

    #@c8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v8

    #@cc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v8

    #@d0
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d3
    goto/16 :goto_0

    #@d5
    .line 133
    :cond_3
    iget-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@d7
    .line 134
    invoke-direct {p0, p1, v0, v3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadataFromApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@da
    move-result-object v8

    #@db
    .line 135
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@dd
    .line 133
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@e0
    goto/16 :goto_0

    #@e2
    .line 144
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@e4
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    #@e7
    move-result v7

    #@e8
    if-eqz v7, :cond_6

    #@ea
    .line 145
    const-string/jumbo v2, "No suitable enrollment application found"

    #@ed
    .line 146
    .restart local v2    # "error":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f0
    .line 147
    const-string/jumbo v7, "KeyphraseEnrollmentInfo"

    #@f3
    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 148
    iput-object v10, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@f8
    .line 154
    .end local v2    # "error":Ljava/lang/String;
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    #@fb
    move-result v7

    #@fc
    if-nez v7, :cond_5

    #@fe
    .line 155
    const-string/jumbo v7, "\n"

    #@101
    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@104
    move-result-object v7

    #@105
    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@107
    .line 100
    :cond_5
    return-void

    #@108
    .line 150
    :cond_6
    iget-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@10a
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@10d
    move-result-object v7

    #@10e
    .line 151
    iget-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@110
    invoke-interface {v8}, Ljava/util/Map;->size()I

    #@113
    move-result v8

    #@114
    new-array v8, v8, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@116
    .line 150
    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@119
    move-result-object v7

    #@11a
    check-cast v7, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@11c
    iput-object v7, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@11e
    goto :goto_1
.end method

.method private getKeyphraseFromTypedArray(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 12
    .param p1, "array"    # Landroid/content/res/TypedArray;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    .line 215
    invoke-virtual {p1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6
    move-result v6

    #@7
    .line 217
    .local v6, "searchKeyphraseId":I
    if-gtz v6, :cond_0

    #@9
    .line 218
    new-instance v9, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v10, "No valid searchKeyphraseId specified in meta-data for "

    #@11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 219
    .local v0, "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 220
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    #@23
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 221
    return-object v11

    #@27
    .line 226
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    #@28
    .line 225
    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    .line 227
    .local v5, "searchKeyphrase":Ljava/lang/String;
    if-nez v5, :cond_1

    #@2e
    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v10, "No valid searchKeyphrase specified in meta-data for "

    #@36
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    .line 229
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 230
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    #@48
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 231
    return-object v11

    #@4c
    .line 236
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x2

    #@4d
    .line 235
    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    .line 238
    .local v7, "searchKeyphraseSupportedLocales":Ljava/lang/String;
    if-nez v7, :cond_2

    #@53
    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v10, "No valid searchKeyphraseSupportedLocales specified in meta-data for "

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    .line 241
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6a
    .line 242
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    #@6d
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 243
    return-object v11

    #@71
    .line 245
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    #@73
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    #@76
    .line 247
    .local v3, "locales":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/util/Locale;>;"
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@79
    move-result v9

    #@7a
    if-nez v9, :cond_3

    #@7c
    .line 249
    :try_start_0
    const-string/jumbo v9, ","

    #@7f
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@82
    move-result-object v8

    #@83
    .line 250
    .local v8, "supportedLocalesDelimited":[Ljava/lang/String;
    const/4 v2, 0x0

    #@84
    .local v2, "i":I
    :goto_0
    array-length v9, v8

    #@85
    if-ge v2, v9, :cond_3

    #@87
    .line 251
    aget-object v9, v8, v2

    #@89
    invoke-static {v9}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    #@8c
    move-result-object v9

    #@8d
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 250
    add-int/lit8 v2, v2, 0x1

    #@92
    goto :goto_0

    #@93
    .line 253
    .end local v2    # "i":I
    .end local v8    # "supportedLocalesDelimited":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@94
    .line 257
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v10, "Error reading searchKeyphraseSupportedLocales from meta-data for "

    #@9c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v9

    #@a0
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    .line 259
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@ab
    .line 260
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    #@ae
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    .line 261
    return-object v11

    #@b2
    .line 266
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v9, 0x3

    #@b3
    invoke-virtual {p1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b6
    move-result v4

    #@b7
    .line 268
    .local v4, "recognitionModes":I
    if-gez v4, :cond_4

    #@b9
    .line 269
    new-instance v9, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v10, "No valid searchKeyphraseRecognitionFlags specified in meta-data for "

    #@c1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v9

    #@c9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v0

    #@cd
    .line 271
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d0
    .line 272
    const-string/jumbo v9, "KeyphraseEnrollmentInfo"

    #@d3
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 273
    return-object v11

    #@d7
    .line 275
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    new-instance v9, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@d9
    invoke-direct {v9, v6, v5, v3, v4}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Landroid/util/ArraySet;I)V

    #@dc
    return-object v9
.end method

.method private getKeyphraseMetadataFromApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@1
    .line 162
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p2

    #@3
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@5
    .line 163
    .local v10, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    #@6
    .line 165
    .local v8, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :try_start_0
    const-string/jumbo v14, "android.voice_enrollment"

    #@9
    move-object/from16 v0, p2

    #@b
    move-object/from16 v1, p1

    #@d
    invoke-virtual {v0, v1, v14}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@10
    move-result-object v11

    #@11
    .line 166
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v11, :cond_1

    #@13
    .line 167
    new-instance v14, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v15, "No android.voice_enrollment meta-data for "

    #@1b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v14

    #@1f
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v14

    #@23
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    .line 168
    .local v7, "error":Ljava/lang/String;
    move-object/from16 v0, p3

    #@29
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 169
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    #@2f
    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 170
    const/4 v14, 0x0

    #@33
    .line 207
    if-eqz v11, :cond_0

    #@35
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@38
    .line 170
    :cond_0
    return-object v14

    #@39
    .line 173
    .end local v7    # "error":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@3c
    move-result-object v12

    #@3d
    .line 174
    .local v12, "res":Landroid/content/res/Resources;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@40
    move-result-object v3

    #@41
    .line 177
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    #@44
    move-result v13

    #@45
    .local v13, "type":I
    const/4 v14, 0x1

    #@46
    if-eq v13, v14, :cond_3

    #@48
    .line 178
    const/4 v14, 0x2

    #@49
    if-ne v13, v14, :cond_2

    #@4b
    .line 181
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4e
    move-result-object v9

    #@4f
    .line 182
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v14, "voice-enrollment-application"

    #@52
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v14

    #@56
    if-nez v14, :cond_5

    #@58
    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v15, "Meta-data does not start with voice-enrollment-application tag for "

    #@60
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v14

    #@64
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v14

    #@68
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v7

    #@6c
    .line 185
    .restart local v7    # "error":Ljava/lang/String;
    move-object/from16 v0, p3

    #@6e
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@71
    .line 186
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    #@74
    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .line 187
    const/4 v14, 0x0

    #@78
    .line 207
    if-eqz v11, :cond_4

    #@7a
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@7d
    .line 187
    :cond_4
    return-object v14

    #@7e
    .line 191
    .end local v7    # "error":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v14, Lcom/android/internal/R$styleable;->VoiceEnrollmentApplication:[I

    #@80
    .line 190
    invoke-virtual {v12, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@83
    move-result-object v2

    #@84
    .line 192
    .local v2, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, p3

    #@88
    invoke-direct {v0, v2, v10, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseFromTypedArray(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8b
    move-result-object v8

    #@8c
    .line 193
    .local v8, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8f
    .line 207
    if-eqz v11, :cond_6

    #@91
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@94
    .line 209
    .end local v2    # "array":Landroid/content/res/TypedArray;
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "type":I
    :cond_6
    :goto_0
    return-object v8

    #@95
    .line 202
    :catch_0
    move-exception v4

    #@96
    .line 203
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v15, "Error parsing keyphrase enrollment meta-data for "

    #@9e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v14

    #@a2
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v14

    #@a6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v7

    #@aa
    .line 204
    .restart local v7    # "error":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v14

    #@b3
    const-string/jumbo v15, ": "

    #@b6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v14

    #@ba
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v14

    #@be
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v14

    #@c2
    move-object/from16 v0, p3

    #@c4
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c7
    .line 205
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    #@ca
    invoke-static {v14, v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cd
    .line 207
    if-eqz v11, :cond_6

    #@cf
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@d2
    goto :goto_0

    #@d3
    .line 198
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "error":Ljava/lang/String;
    :catch_1
    move-exception v5

    #@d4
    .line 199
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v15, "Error parsing keyphrase enrollment meta-data for "

    #@dc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v14

    #@e0
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v14

    #@e4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v7

    #@e8
    .line 200
    .restart local v7    # "error":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v14

    #@f1
    const-string/jumbo v15, ": "

    #@f4
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v14

    #@f8
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v14

    #@fc
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v14

    #@100
    move-object/from16 v0, p3

    #@102
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@105
    .line 201
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    #@108
    invoke-static {v14, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@10b
    .line 207
    if-eqz v11, :cond_6

    #@10d
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@110
    goto :goto_0

    #@111
    .line 194
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "error":Ljava/lang/String;
    :catch_2
    move-exception v6

    #@112
    .line 195
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    const-string/jumbo v15, "Error parsing keyphrase enrollment meta-data for "

    #@11a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v14

    #@11e
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v14

    #@122
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@125
    move-result-object v7

    #@126
    .line 196
    .restart local v7    # "error":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v14

    #@12f
    const-string/jumbo v15, ": "

    #@132
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v14

    #@136
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v14

    #@13a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13d
    move-result-object v14

    #@13e
    move-object/from16 v0, p3

    #@140
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@143
    .line 197
    const-string/jumbo v14, "KeyphraseEnrollmentInfo"

    #@146
    invoke-static {v14, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@149
    .line 207
    if-eqz v11, :cond_6

    #@14b
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@14e
    goto/16 :goto_0

    #@150
    .line 206
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v14

    #@151
    .line 207
    if-eqz v11, :cond_7

    #@153
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    #@156
    .line 206
    :cond_7
    throw v14
.end method


# virtual methods
.method public getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 6
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 332
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@4
    if-eqz v2, :cond_1

    #@6
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@8
    array-length v2, v2

    #@9
    if-lez v2, :cond_1

    #@b
    .line 333
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@d
    array-length v3, v2

    #@e
    :goto_0
    if-ge v1, v3, :cond_1

    #@10
    aget-object v0, v2, v1

    #@12
    .line 336
    .local v0, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v0, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsPhrase(Ljava/lang/String;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 337
    invoke-virtual {v0, p2}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsLocale(Ljava/util/Locale;)Z

    #@1b
    move-result v4

    #@1c
    .line 336
    if-eqz v4, :cond_0

    #@1e
    .line 338
    return-object v0

    #@1f
    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 342
    .end local v0    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_1
    const-string/jumbo v1, "KeyphraseEnrollmentInfo"

    #@25
    const-string/jumbo v2, "No Enrollment application supports the given keyphrase/locale"

    #@28
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 343
    return-object v5
.end method

.method public getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;
    .locals 5
    .param p1, "action"    # I
    .param p2, "keyphrase"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 304
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@7
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 305
    :cond_0
    const-string/jumbo v2, "KeyphraseEnrollmentInfo"

    #@10
    const-string/jumbo v3, "No enrollment application exists"

    #@13
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 306
    return-object v4

    #@17
    .line 309
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@1a
    move-result-object v1

    #@1b
    .line 310
    .local v1, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    if-eqz v1, :cond_2

    #@1d
    .line 311
    new-instance v3, Landroid/content/Intent;

    #@1f
    const-string/jumbo v2, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    #@22
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25
    .line 312
    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@27
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/lang/String;

    #@2d
    .line 311
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@30
    move-result-object v2

    #@31
    .line 313
    const-string/jumbo v3, "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

    #@34
    .line 311
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@37
    move-result-object v2

    #@38
    .line 314
    const-string/jumbo v3, "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

    #@3b
    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    .line 311
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@42
    move-result-object v2

    #@43
    .line 315
    const-string/jumbo v3, "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

    #@46
    .line 311
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@49
    move-result-object v0

    #@4a
    .line 316
    .local v0, "intent":Landroid/content/Intent;
    return-object v0

    #@4b
    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-object v4
.end method

.method public getParseError()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public listKeyphraseMetadata()[Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 348
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
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    #@e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 349
    const-string/jumbo v1, ", ParseError="

    #@19
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 349
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    #@1f
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 349
    const-string/jumbo v1, "]"

    #@26
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

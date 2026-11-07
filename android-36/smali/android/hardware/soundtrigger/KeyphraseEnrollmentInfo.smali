.class public Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
.super Ljava/lang/Object;
.source "KeyphraseEnrollmentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo$ManageActions;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTION_MANAGE_VOICE_KEYPHRASES:Ljava/lang/String; = "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

.field public static final greylist-max-o EXTRA_VOICE_KEYPHRASE_ACTION:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

.field public static final greylist-max-o EXTRA_VOICE_KEYPHRASE_HINT_TEXT:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

.field public static final greylist-max-o EXTRA_VOICE_KEYPHRASE_LOCALE:Ljava/lang/String; = "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

.field public static final blacklist MANAGE_ACTION_ENROLL:I = 0x0

.field public static final blacklist MANAGE_ACTION_RE_ENROLL:I = 0x1

.field public static final blacklist MANAGE_ACTION_UN_ENROLL:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "KeyphraseEnrollmentInfo"

.field private static final greylist-max-o VOICE_KEYPHRASE_META_DATA:Ljava/lang/String; = "android.voice_enrollment"


# instance fields
.field private final greylist-max-o mKeyphrasePackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private greylist-max-o mParseError:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;)V
    .registers 12
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_101

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_101

    .line 154
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "KeyphraseEnrollmentInfo"

    if-eqz v4, :cond_ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_3c
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 160
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_65

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a privileged system app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    goto :goto_2e

    .line 166
    :cond_65
    const-string v7, "android.permission.MANAGE_VOICE_KEYPHRASES"

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not require MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_2e

    .line 173
    :cond_88
    nop

    .line 174
    invoke-direct {p0, p1, v6, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadataFromApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v7

    .line 175
    .local v7, "metadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    if-eqz v7, :cond_96

    .line 176
    iget-object v8, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_96} :catch_97

    .line 183
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "metadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_96
    goto :goto_cc

    .line 178
    :catch_97
    move-exception v6

    .line 179
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error parsing voice enrollment meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "error":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {v5, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "error":Ljava/lang/String;
    :goto_cc
    goto/16 :goto_2e

    .line 186
    :cond_ce
    iget-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 187
    const-string v3, "No suitable enrollment application found"

    .line 188
    .local v3, "error":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 191
    .end local v3    # "error":Ljava/lang/String;
    goto :goto_f2

    .line 192
    :cond_e1
    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 196
    :goto_f2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_100

    .line 197
    const-string v1, "\n"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 199
    :cond_100
    return-void

    .line 148
    .end local v2    # "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_101
    :goto_101
    const-string v2, "No enrollment applications found"

    iput-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    .line 150
    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 151
    return-void
.end method

.method private greylist-max-o getKeyphraseFromTypedArray(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 16
    .param p1, "array"    # Landroid/content/res/TypedArray;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;"
        }
    .end annotation

    .line 249
    .local p3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 251
    .local v2, "searchKeyphraseId":I
    const/4 v3, 0x0

    const-string v4, "KeyphraseEnrollmentInfo"

    if-gtz v2, :cond_25

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid searchKeyphraseId specified in meta-data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v3

    .line 259
    .end local v0    # "error":Ljava/lang/String;
    :cond_25
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "searchKeyphrase":Ljava/lang/String;
    if-nez v5, :cond_46

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid searchKeyphrase specified in meta-data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v3

    .line 269
    .end local v0    # "error":Ljava/lang/String;
    :cond_46
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "searchKeyphraseSupportedLocales":Ljava/lang/String;
    if-nez v6, :cond_67

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid searchKeyphraseSupportedLocales specified in meta-data for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0    # "error":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v3

    .line 279
    .end local v0    # "error":Ljava/lang/String;
    :cond_67
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 281
    .local v7, "locales":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/util/Locale;>;"
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 283
    :try_start_72
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "supportedLocalesDelimited":[Ljava/lang/String;
    array-length v9, v8

    :goto_79
    if-ge v0, v9, :cond_88

    aget-object v10, v8, v0

    .line 285
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_84} :catch_89

    .line 284
    nop

    .end local v10    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 296
    .end local v8    # "supportedLocalesDelimited":[Ljava/lang/String;
    :cond_88
    goto :goto_a4

    .line 287
    :catch_89
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading searchKeyphraseSupportedLocales from meta-data for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "error":Ljava/lang/String;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v3

    .line 300
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "error":Ljava/lang/String;
    :cond_a4
    :goto_a4
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 302
    .local v0, "recognitionModes":I
    if-gez v0, :cond_c5

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No valid searchKeyphraseRecognitionFlags specified in meta-data for "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .restart local v1    # "error":Ljava/lang/String;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v3

    .line 309
    .end local v1    # "error":Ljava/lang/String;
    :cond_c5
    new-instance v1, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-direct {v1, v2, v5, v7, v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Ljava/util/Set;I)V

    return-object v1
.end method

.method private greylist-max-o getKeyphraseMetadataFromApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 15
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;"
        }
    .end annotation

    .line 203
    .local p3, "parseErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "KeyphraseEnrollmentInfo"

    const/4 v1, 0x0

    .line 204
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 207
    .local v3, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :try_start_6
    const-string v4, "android.voice_enrollment"

    invoke-virtual {p2, p1, v4}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v1, v4

    .line 208
    const/4 v4, 0x0

    if-nez v1, :cond_30

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No android.voice_enrollment meta-data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "error":Ljava/lang/String;
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_29} :catch_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_29} :catch_86
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_86
    .catchall {:try_start_6 .. :try_end_29} :catchall_84

    .line 212
    nop

    .line 241
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 212
    :cond_2f
    return-object v4

    .line 215
    .end local v5    # "error":Ljava/lang/String;
    :cond_30
    :try_start_30
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 216
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 219
    .local v6, "attrs":Landroid/util/AttributeSet;
    :goto_38
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_44

    const/4 v7, 0x2

    if-eq v8, v7, :cond_44

    goto :goto_38

    .line 223
    :cond_44
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "nodeName":Ljava/lang/String;
    const-string v9, "voice-enrollment-application"

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Meta-data does not start with voice-enrollment-application tag for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "error":Ljava/lang/String;
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_69} :catch_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_69} :catch_86
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_69} :catch_86
    .catchall {:try_start_30 .. :try_end_69} :catchall_84

    .line 229
    nop

    .line 241
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 229
    :cond_6f
    return-object v4

    .line 232
    .end local v9    # "error":Ljava/lang/String;
    :cond_70
    :try_start_70
    sget-object v4, Lcom/android/internal/R$styleable;->VoiceEnrollmentApplication:[I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 234
    .local v4, "array":Landroid/content/res/TypedArray;
    invoke-direct {p0, v4, v2, p3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseFromTypedArray(Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/util/List;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v9

    move-object v3, v9

    .line 235
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_7e} :catch_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_7e} :catch_86
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7e} :catch_86
    .catchall {:try_start_70 .. :try_end_7e} :catchall_84

    .line 241
    .end local v4    # "array":Landroid/content/res/TypedArray;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "type":I
    if-eqz v1, :cond_bb

    :goto_80
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_bb

    :catchall_84
    move-exception v0

    goto :goto_bc

    .line 236
    :catch_86
    move-exception v4

    .line 237
    .local v4, "e":Ljava/lang/Exception;
    :try_start_87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing keyphrase enrollment meta-data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "error":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_87 .. :try_end_b7} :catchall_84

    .line 241
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "error":Ljava/lang/String;
    if-eqz v1, :cond_bb

    goto :goto_80

    .line 243
    :cond_bb
    :goto_bb
    return-object v3

    .line 241
    :goto_bc
    if-eqz v1, :cond_c1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 242
    :cond_c1
    throw v0
.end method


# virtual methods
.method public greylist-max-o getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .registers 8
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    array-length v0, v0

    if-lez v0, :cond_27

    .line 373
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    .line 376
    .local v3, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    invoke-virtual {v3, p1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsPhrase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 377
    invoke-virtual {v3, p2}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->supportsLocale(Ljava/util/Locale;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 378
    return-object v3

    .line 373
    .end local v3    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 382
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No enrollment application supports the given keyphrase/locale: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyphraseEnrollmentInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;
    .registers 8
    .param p1, "action"    # I
    .param p2, "keyphrase"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 339
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_45

    .line 346
    :cond_14
    invoke-virtual {p0, p2, p3}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    .line 347
    .local v0, "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    if-eqz v0, :cond_44

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.intent.action.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    .line 349
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 350
    const-string v2, "com.android.intent.extra.VOICE_KEYPHRASE_HINT_TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 351
    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.intent.extra.VOICE_KEYPHRASE_LOCALE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 352
    const-string v2, "com.android.intent.extra.VOICE_KEYPHRASE_ACTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 348
    return-object v1

    .line 354
    :cond_44
    return-object v1

    .line 342
    .end local v0    # "keyphraseMetadata":Landroid/hardware/soundtrigger/KeyphraseMetadata;
    :cond_45
    :goto_45
    const-string v0, "KeyphraseEnrollmentInfo"

    const-string v2, "No enrollment application exists"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-object v1
.end method

.method public greylist-max-o getParseError()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist listKeyphraseMetadata()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrases:[Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyphraseEnrollmentInfo [KeyphrasePackageMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mKeyphrasePackageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ParseError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->mParseError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

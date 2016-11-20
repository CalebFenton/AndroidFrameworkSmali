.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final DEFAULT_INTER_APN_DELAY:J = 0x4e20L

.field private static final DEFAULT_INTER_APN_DELAY_FOR_PROVISIONING:J = 0xbb8L

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field private static final MAX_SAME_APN_RETRY:I = 0x3

.field public static final NO_RETRY:J = -0x1L

.field public static final NO_SUGGESTED_RETRY_DELAY:J = -0x2L

.field private static final OTHERS_APN_TYPE:Ljava/lang/String; = "others"

.field public static final VDBG:Z


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mConfig:Ljava/lang/String;

.field private mCurrentApnIndex:I

.field private mFailFastInterApnDelay:J

.field private mInterApnDelay:J

.field private mMaxRetryCount:I

.field private mModemSuggestedDelay:J

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;

.field private mSameApnRetryCount:I

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 146
    const-wide/16 v0, -0x2

    #@6
    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@8
    .line 151
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@a
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@11
    .line 176
    iput-boolean v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@13
    .line 186
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@15
    .line 192
    new-instance v0, Ljava/util/Random;

    #@17
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    #@1c
    .line 203
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@1f
    .line 208
    const/4 v0, -0x1

    #@20
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@22
    .line 221
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@24
    .line 222
    iput-object p2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@26
    .line 220
    return-void
.end method

.method private configure(Ljava/lang/String;)Z
    .locals 11
    .param p1, "configStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 234
    const-string/jumbo v6, "\""

    #@6
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v6

    #@a
    if-eqz v6, :cond_0

    #@c
    const-string/jumbo v6, "\""

    #@f
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v6

    #@19
    add-int/lit8 v6, v6, -0x1

    #@1b
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->reset()V

    #@22
    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v7, "configure: \'"

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    const-string/jumbo v7, "\'"

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@40
    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@42
    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v6

    #@46
    if-nez v6, :cond_c

    #@48
    .line 245
    const/4 v0, 0x0

    #@49
    .line 249
    .local v0, "defaultRandomization":I
    const-string/jumbo v6, ","

    #@4c
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 250
    .local v4, "strArray":[Ljava/lang/String;
    const/4 v1, 0x0

    #@51
    .local v1, "i":I
    :goto_0
    array-length v6, v4

    #@52
    if-ge v1, v6, :cond_a

    #@54
    .line 253
    aget-object v6, v4, v1

    #@56
    const-string/jumbo v7, "="

    #@59
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 254
    .local v3, "splitStr":[Ljava/lang/String;
    aget-object v6, v3, v9

    #@5f
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    aput-object v6, v3, v9

    #@65
    .line 256
    array-length v6, v3

    #@66
    if-le v6, v8, :cond_6

    #@68
    .line 257
    aget-object v6, v3, v8

    #@6a
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    aput-object v6, v3, v8

    #@70
    .line 259
    aget-object v6, v3, v9

    #@72
    const-string/jumbo v7, "default_randomization"

    #@75
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_2

    #@7b
    .line 260
    aget-object v6, v3, v9

    #@7d
    aget-object v7, v3, v8

    #@7f
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@82
    move-result-object v5

    #@83
    .line 261
    .local v5, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@85
    check-cast v6, Ljava/lang/Boolean;

    #@87
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@8a
    move-result v6

    #@8b
    if-nez v6, :cond_1

    #@8d
    return v9

    #@8e
    .line 262
    :cond_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@90
    check-cast v6, Ljava/lang/Integer;

    #@92
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@95
    move-result v0

    #@96
    .line 250
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@98
    goto :goto_0

    #@99
    .line 263
    :cond_2
    aget-object v6, v3, v9

    #@9b
    const-string/jumbo v7, "max_retries"

    #@9e
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@a1
    move-result v6

    #@a2
    if-eqz v6, :cond_5

    #@a4
    .line 264
    const-string/jumbo v6, "infinite"

    #@a7
    aget-object v7, v3, v8

    #@a9
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@ac
    move-result v6

    #@ad
    if-eqz v6, :cond_3

    #@af
    .line 265
    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@b1
    goto :goto_1

    #@b2
    .line 267
    :cond_3
    aget-object v6, v3, v9

    #@b4
    aget-object v7, v3, v8

    #@b6
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@b9
    move-result-object v5

    #@ba
    .line 268
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@bc
    check-cast v6, Ljava/lang/Boolean;

    #@be
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@c1
    move-result v6

    #@c2
    if-nez v6, :cond_4

    #@c4
    return v9

    #@c5
    .line 269
    :cond_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@c7
    check-cast v6, Ljava/lang/Integer;

    #@c9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@cc
    move-result v6

    #@cd
    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@cf
    goto :goto_1

    #@d0
    .line 272
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    const-string/jumbo v6, "RetryManager"

    #@d3
    new-instance v7, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v8, "Unrecognized configuration name value pair: "

    #@db
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v7

    #@df
    .line 273
    aget-object v8, v4, v1

    #@e1
    .line 272
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v7

    #@e5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v7

    #@e9
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 274
    return v9

    #@ed
    .line 281
    :cond_6
    aget-object v6, v4, v1

    #@ef
    const-string/jumbo v7, ":"

    #@f2
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    .line 282
    aget-object v6, v3, v9

    #@f8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    aput-object v6, v3, v9

    #@fe
    .line 283
    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@100
    invoke-direct {v2, v9, v9}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    #@103
    .line 284
    .local v2, "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string/jumbo v6, "delayTime"

    #@106
    aget-object v7, v3, v9

    #@108
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@10b
    move-result-object v5

    #@10c
    .line 285
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@10e
    check-cast v6, Ljava/lang/Boolean;

    #@110
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@113
    move-result v6

    #@114
    if-nez v6, :cond_7

    #@116
    return v9

    #@117
    .line 286
    :cond_7
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@119
    check-cast v6, Ljava/lang/Integer;

    #@11b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@11e
    move-result v6

    #@11f
    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    #@121
    .line 289
    array-length v6, v3

    #@122
    if-le v6, v8, :cond_9

    #@124
    .line 290
    aget-object v6, v3, v8

    #@126
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@129
    move-result-object v6

    #@12a
    aput-object v6, v3, v8

    #@12c
    .line 292
    const-string/jumbo v6, "randomizationTime"

    #@12f
    aget-object v7, v3, v8

    #@131
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@134
    move-result-object v5

    #@135
    .line 293
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@137
    check-cast v6, Ljava/lang/Boolean;

    #@139
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@13c
    move-result v6

    #@13d
    if-nez v6, :cond_8

    #@13f
    return v9

    #@140
    .line 294
    :cond_8
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@142
    check-cast v6, Ljava/lang/Integer;

    #@144
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@147
    move-result v6

    #@148
    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@14a
    .line 298
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@14c
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14f
    goto/16 :goto_1

    #@151
    .line 296
    :cond_9
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@153
    goto :goto_2

    #@154
    .line 301
    .end local v2    # "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v3    # "splitStr":[Ljava/lang/String;
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@156
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@159
    move-result v6

    #@15a
    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@15c
    if-le v6, v7, :cond_b

    #@15e
    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@160
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@163
    move-result v6

    #@164
    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@166
    .line 310
    .end local v0    # "defaultRandomization":I
    .end local v1    # "i":I
    .end local v4    # "strArray":[Ljava/lang/String;
    :cond_b
    :goto_3
    return v8

    #@167
    .line 306
    :cond_c
    const-string/jumbo v6, "configure: cleared"

    #@16a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@16d
    goto :goto_3
.end method

.method private configureRetry()V
    .locals 14

    #@0
    .prologue
    .line 317
    const/4 v5, 0x0

    #@1
    .line 318
    .local v5, "configString":Ljava/lang/String;
    const/4 v7, 0x0

    #@2
    .line 321
    .local v7, "otherConfigString":Ljava/lang/String;
    :try_start_0
    sget-boolean v10, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 323
    const-string/jumbo v10, "test.data_retry_config"

    #@9
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 324
    .local v3, "config":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v10

    #@11
    if-nez v10, :cond_0

    #@13
    .line 325
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@16
    .line 326
    return-void

    #@17
    .line 331
    .end local v3    # "config":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@19
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v10

    #@1d
    const-string/jumbo v11, "carrier_config"

    #@20
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    .line 330
    check-cast v4, Landroid/telephony/CarrierConfigManager;

    #@26
    .line 332
    .local v4, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v10, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@28
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@2b
    move-result v10

    #@2c
    invoke-virtual {v4, v10}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@2f
    move-result-object v2

    #@30
    .line 335
    .local v2, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v10, "carrier_data_call_apn_delay_default_long"

    #@33
    .line 336
    const-wide/16 v12, 0x4e20

    #@35
    .line 334
    invoke-virtual {v2, v10, v12, v13}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    #@38
    move-result-wide v10

    #@39
    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    #@3b
    .line 338
    const-string/jumbo v10, "carrier_data_call_apn_delay_faster_long"

    #@3e
    .line 339
    const-wide/16 v12, 0xbb8

    #@40
    .line 337
    invoke-virtual {v2, v10, v12, v13}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    #@43
    move-result-wide v10

    #@44
    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@46
    .line 343
    const-string/jumbo v10, "carrier_data_call_retry_config_strings"

    #@49
    .line 342
    invoke-virtual {v2, v10}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 344
    .local v0, "allConfigStrings":[Ljava/lang/String;
    if-eqz v0, :cond_1

    #@4f
    .line 345
    const/4 v10, 0x0

    #@50
    array-length v11, v0

    #@51
    .end local v7    # "otherConfigString":Ljava/lang/String;
    :goto_0
    if-ge v10, v11, :cond_1

    #@53
    aget-object v8, v0, v10

    #@55
    .line 346
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@58
    move-result v12

    #@59
    if-nez v12, :cond_4

    #@5b
    .line 347
    const-string/jumbo v12, ":"

    #@5e
    const/4 v13, 0x2

    #@5f
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    .line 348
    .local v9, "splitStr":[Ljava/lang/String;
    array-length v12, v9

    #@64
    const/4 v13, 0x2

    #@65
    if-ne v12, v13, :cond_4

    #@67
    .line 349
    const/4 v12, 0x0

    #@68
    aget-object v12, v9, v12

    #@6a
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    .line 351
    .local v1, "apnType":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@70
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v12

    #@74
    if-eqz v12, :cond_3

    #@76
    .line 354
    const/4 v10, 0x1

    #@77
    aget-object v5, v9, v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@79
    .line 366
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v5    # "configString":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "splitStr":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    #@7b
    .line 367
    if-eqz v7, :cond_5

    #@7d
    .line 368
    move-object v5, v7

    #@7e
    .line 390
    .end local v0    # "allConfigStrings":[Ljava/lang/String;
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_2
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@81
    .line 316
    return-void

    #@82
    .line 356
    .restart local v0    # "allConfigStrings":[Ljava/lang/String;
    .restart local v1    # "apnType":Ljava/lang/String;
    .restart local v2    # "b":Landroid/os/PersistableBundle;
    .restart local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .restart local v5    # "configString":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v9    # "splitStr":[Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v12, "others"

    #@85
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v12

    #@89
    if-eqz v12, :cond_4

    #@8b
    .line 359
    const/4 v12, 0x1

    #@8c
    aget-object v7, v9, v12

    #@8e
    .line 345
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v9    # "splitStr":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@90
    goto :goto_0

    #@91
    .line 372
    .end local v5    # "configString":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "Invalid APN retry configuration!. Use the default one now."

    #@94
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@97
    .line 373
    const-string/jumbo v5, "max_retries=3, 5000, 5000, 5000"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@9a
    .local v5, "configString":Ljava/lang/String;
    goto :goto_1

    #@9b
    .line 376
    .end local v0    # "allConfigStrings":[Ljava/lang/String;
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .end local v4    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v5    # "configString":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@9c
    .line 378
    .local v6, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v10, "Failed to read configuration! Use the hardcoded default value."

    #@9f
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@a2
    .line 380
    const-wide/16 v10, 0x4e20

    #@a4
    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    #@a6
    .line 381
    const-wide/16 v10, 0xbb8

    #@a8
    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@aa
    .line 382
    const-string/jumbo v5, "max_retries=3, 5000, 5000, 5000"

    #@ad
    .restart local v5    # "configString":Ljava/lang/String;
    goto :goto_1
.end method

.method private getRetryTimer()I
    .locals 4

    #@0
    .prologue
    .line 398
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@2
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    if-ge v2, v3, :cond_0

    #@a
    .line 399
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@c
    .line 405
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    #@e
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v2

    #@14
    if-ge v0, v2, :cond_1

    #@16
    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@1e
    iget v2, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    #@23
    move-result v3

    #@24
    add-int v1, v2, v3

    #@26
    .line 411
    .local v1, "retVal":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "getRetryTimer: "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@3d
    .line 412
    return v1

    #@3e
    .line 401
    .end local v0    # "index":I
    .end local v1    # "retVal":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v2

    #@44
    add-int/lit8 v0, v2, -0x1

    #@46
    .restart local v0    # "index":I
    goto :goto_0

    #@47
    .line 408
    :cond_1
    const/4 v1, 0x0

    #@48
    .restart local v1    # "retVal":I
    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 689
    const-string/jumbo v0, "RetryManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "] "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 688
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@9
    iget v0, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@b
    .line 462
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    #@d
    .line 463
    return v2

    #@e
    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 425
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v2

    #@5
    .line 426
    .local v2, "value":I
    new-instance v1, Landroid/util/Pair;

    #@7
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    #@a
    move-result v3

    #@b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v3

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v4

    #@13
    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 435
    .end local v2    # "value":I
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    #@17
    .line 427
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@18
    .line 428
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "RetryManager"

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    const-string/jumbo v5, " bad value: "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 429
    new-instance v1, Landroid/util/Pair;

    #@38
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@43
    .restart local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 593
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@3
    .line 594
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@5
    .line 595
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@8
    .line 596
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@a
    .line 597
    const-wide/16 v0, -0x2

    #@c
    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@e
    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@13
    .line 592
    return-void
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 446
    if-gez p2, :cond_0

    #@2
    .line 447
    const-string/jumbo v1, "RetryManager"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, " bad value: is < 0"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 448
    const/4 v0, 0x0

    #@1d
    .line 453
    .local v0, "retVal":Z
    :goto_0
    return v0

    #@1e
    .line 450
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x1

    #@1f
    .restart local v0    # "retVal":Z
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 666
    const-string/jumbo v1, "  RetryManager"

    #@3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 667
    const-string/jumbo v1, "***************************************"

    #@9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "    config = "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "    mApnType = "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3e
    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "    mCurrentApnIndex = "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@57
    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "    mRetryCount = "

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@70
    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v2, "    mMaxRetryCount = "

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@7e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@89
    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v2, "    mSameApnRetryCount = "

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a2
    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v2, "    mModemSuggestedDelay = "

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@b0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bb
    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@bd
    if-eqz v1, :cond_0

    #@bf
    .line 678
    const-string/jumbo v1, "    APN list: "

    #@c2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 679
    const/4 v0, 0x0

    #@c6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@c8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@cb
    move-result v1

    #@cc
    if-ge v0, v1, :cond_0

    #@ce
    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v2, "      ["

    #@d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    const-string/jumbo v2, "]="

    #@e1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v1

    #@e5
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@e7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ea
    move-result-object v2

    #@eb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v1

    #@ef
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v1

    #@f3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f6
    .line 679
    add-int/lit8 v0, v0, 0x1

    #@f8
    goto :goto_0

    #@f9
    .line 684
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "***************************************"

    #@fc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 685
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@102
    .line 665
    return-void
.end method

.method public getDelayForNextApn(Z)J
    .locals 10
    .param p1, "failFastEnabled"    # Z

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 515
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_1

    #@e
    .line 516
    :cond_0
    const-string/jumbo v3, "Waiting APN list is null or empty."

    #@11
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@14
    .line 517
    return-wide v8

    #@15
    .line 520
    :cond_1
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@17
    cmp-long v3, v4, v8

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 521
    const-string/jumbo v3, "Modem suggested not retrying."

    #@1e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@21
    .line 522
    return-wide v8

    #@22
    .line 525
    :cond_2
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@24
    const-wide/16 v6, -0x2

    #@26
    cmp-long v3, v4, v6

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 526
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@2c
    const/4 v4, 0x3

    #@2d
    if-ge v3, v4, :cond_3

    #@2f
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v4, "Modem suggested retry in "

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@3d
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, " ms."

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@4f
    .line 530
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@51
    return-wide v4

    #@52
    .line 539
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@54
    .line 541
    .local v2, "index":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@56
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v3

    #@5c
    if-lt v2, v3, :cond_5

    #@5e
    const/4 v2, 0x0

    #@5f
    .line 544
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v3

    #@65
    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@67
    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@69
    if-nez v3, :cond_6

    #@6b
    .line 555
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@6d
    if-gt v2, v3, :cond_9

    #@6f
    .line 557
    iget-boolean v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@71
    if-nez v3, :cond_7

    #@73
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@75
    add-int/lit8 v3, v3, 0x1

    #@77
    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@79
    if-le v3, v4, :cond_7

    #@7b
    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v4, "Reached maximum retry count "

    #@83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    const-string/jumbo v4, "."

    #@90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@9b
    .line 559
    return-wide v8

    #@9c
    .line 548
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@9e
    if-ne v2, v3, :cond_4

    #@a0
    .line 549
    const-string/jumbo v3, "All APNs have permanently failed."

    #@a3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@a6
    .line 550
    return-wide v8

    #@a7
    .line 561
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    #@aa
    move-result v3

    #@ab
    int-to-long v0, v3

    #@ac
    .line 562
    .local v0, "delay":J
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@ae
    add-int/lit8 v3, v3, 0x1

    #@b0
    iput v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@b2
    .line 568
    :goto_0
    if-eqz p1, :cond_8

    #@b4
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@b6
    cmp-long v3, v0, v4

    #@b8
    if-lez v3, :cond_8

    #@ba
    .line 573
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@bc
    .line 576
    :cond_8
    return-wide v0

    #@bd
    .line 565
    .end local v0    # "delay":J
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    #@bf
    .restart local v0    # "delay":J
    goto :goto_0
.end method

.method public getInterApnDelay(Z)J
    .locals 2
    .param p1, "failFastEnabled"    # Z

    #@0
    .prologue
    .line 654
    if-eqz p1, :cond_0

    #@2
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@4
    :goto_0
    return-wide v0

    #@5
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    #@7
    goto :goto_0
.end method

.method public getNextApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_1

    #@e
    .line 476
    :cond_0
    const-string/jumbo v1, "Waiting APN list is null or empty."

    #@11
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@14
    .line 477
    return-object v6

    #@15
    .line 483
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@17
    const-wide/16 v4, -0x2

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 484
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@1f
    const/4 v2, 0x3

    #@20
    if-ge v1, v2, :cond_2

    #@22
    .line 485
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@28
    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@2a
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@32
    return-object v1

    #@33
    .line 489
    :cond_2
    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@35
    .line 491
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@37
    .line 494
    .local v0, "index":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@39
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v1

    #@3f
    if-ne v0, v1, :cond_4

    #@41
    const/4 v0, 0x0

    #@42
    .line 497
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v1

    #@48
    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@4a
    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@4c
    if-nez v1, :cond_5

    #@4e
    .line 503
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@50
    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@52
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@5a
    return-object v1

    #@5b
    .line 500
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@5d
    if-ne v0, v1, :cond_3

    #@5f
    return-object v6
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 584
    if-eqz p1, :cond_0

    #@2
    .line 585
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@5
    .line 583
    :cond_0
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 644
    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@2
    .line 643
    return-void
.end method

.method public setWaitingApns(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 607
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-nez p1, :cond_0

    #@2
    .line 608
    const-string/jumbo v2, "No waiting APNs provided"

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@8
    .line 609
    return-void

    #@9
    .line 612
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@b
    .line 615
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->configureRetry()V

    #@e
    .line 617
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@20
    .line 618
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v2, 0x0

    #@21
    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@23
    goto :goto_0

    #@24
    .line 621
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Setting "

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    const-string/jumbo v3, " waiting APNs."

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@48
    .line 605
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "mApnType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " mRetryCount="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 659
    const-string/jumbo v1, " mMaxRetryCount="

    #@22
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 659
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@28
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 659
    const-string/jumbo v1, " mCurrentApnIndex="

    #@2f
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 659
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@35
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 660
    const-string/jumbo v1, " mSameApnRtryCount="

    #@3c
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 660
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@42
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 660
    const-string/jumbo v1, " mModemSuggestedDelay="

    #@49
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 661
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@4f
    .line 658
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 661
    const-string/jumbo v1, " mRetryForever="

    #@56
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 661
    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@5c
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 662
    const-string/jumbo v1, " mConfig={"

    #@63
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 662
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@69
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 662
    const-string/jumbo v1, "}"

    #@70
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    return-object v0
.end method

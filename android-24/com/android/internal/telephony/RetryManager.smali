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

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field private static final DEFAULT_INTER_APN_DELAY:J = 0x4e20L

.field private static final DEFAULT_INTER_APN_DELAY_FOR_PROVISIONING:J = 0xbb8L

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field private static final MAX_SAME_APN_RETRY:I = 0x3

.field public static final NO_RETRY:J = -0x1L

.field public static final NO_SUGGESTED_RETRY_DELAY:J = -0x2L

.field private static final OTHERS_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

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
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 147
    const-wide/16 v0, -0x2

    #@6
    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@8
    .line 152
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@a
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@11
    .line 177
    iput-boolean v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@13
    .line 187
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@15
    .line 193
    new-instance v0, Ljava/util/Random;

    #@17
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    #@1c
    .line 204
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@1f
    .line 209
    const/4 v0, -0x1

    #@20
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@22
    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@24
    .line 223
    iput-object p2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@26
    .line 221
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
    .line 235
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
    .line 236
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
    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->reset()V

    #@22
    .line 242
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
    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@42
    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@45
    move-result v6

    #@46
    if-nez v6, :cond_c

    #@48
    .line 246
    const/4 v0, 0x0

    #@49
    .line 250
    .local v0, "defaultRandomization":I
    const-string/jumbo v6, ","

    #@4c
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    .line 251
    .local v4, "strArray":[Ljava/lang/String;
    const/4 v1, 0x0

    #@51
    .local v1, "i":I
    :goto_0
    array-length v6, v4

    #@52
    if-ge v1, v6, :cond_a

    #@54
    .line 254
    aget-object v6, v4, v1

    #@56
    const-string/jumbo v7, "="

    #@59
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 255
    .local v3, "splitStr":[Ljava/lang/String;
    aget-object v6, v3, v9

    #@5f
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    aput-object v6, v3, v9

    #@65
    .line 257
    array-length v6, v3

    #@66
    if-le v6, v8, :cond_6

    #@68
    .line 258
    aget-object v6, v3, v8

    #@6a
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    aput-object v6, v3, v8

    #@70
    .line 260
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
    .line 261
    aget-object v6, v3, v9

    #@7d
    aget-object v7, v3, v8

    #@7f
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@82
    move-result-object v5

    #@83
    .line 262
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
    .line 263
    :cond_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@90
    check-cast v6, Ljava/lang/Integer;

    #@92
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@95
    move-result v0

    #@96
    .line 251
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@98
    goto :goto_0

    #@99
    .line 264
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
    .line 265
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
    .line 266
    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@b1
    goto :goto_1

    #@b2
    .line 268
    :cond_3
    aget-object v6, v3, v9

    #@b4
    aget-object v7, v3, v8

    #@b6
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@b9
    move-result-object v5

    #@ba
    .line 269
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
    .line 270
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
    .line 273
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
    .line 274
    aget-object v8, v4, v1

    #@e1
    .line 273
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
    .line 275
    return v9

    #@ed
    .line 282
    :cond_6
    aget-object v6, v4, v1

    #@ef
    const-string/jumbo v7, ":"

    #@f2
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    .line 283
    aget-object v6, v3, v9

    #@f8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@fb
    move-result-object v6

    #@fc
    aput-object v6, v3, v9

    #@fe
    .line 284
    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@100
    invoke-direct {v2, v9, v9}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    #@103
    .line 285
    .local v2, "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string/jumbo v6, "delayTime"

    #@106
    aget-object v7, v3, v9

    #@108
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@10b
    move-result-object v5

    #@10c
    .line 286
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
    .line 287
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
    .line 290
    array-length v6, v3

    #@122
    if-le v6, v8, :cond_9

    #@124
    .line 291
    aget-object v6, v3, v8

    #@126
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@129
    move-result-object v6

    #@12a
    aput-object v6, v3, v8

    #@12c
    .line 293
    const-string/jumbo v6, "randomizationTime"

    #@12f
    aget-object v7, v3, v8

    #@131
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@134
    move-result-object v5

    #@135
    .line 294
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
    .line 295
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
    .line 299
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@14c
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14f
    goto/16 :goto_1

    #@151
    .line 297
    :cond_9
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@153
    goto :goto_2

    #@154
    .line 302
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
    .line 303
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@160
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@163
    move-result v6

    #@164
    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@166
    .line 311
    .end local v0    # "defaultRandomization":I
    .end local v1    # "i":I
    .end local v4    # "strArray":[Ljava/lang/String;
    :cond_b
    :goto_3
    return v8

    #@167
    .line 307
    :cond_c
    const-string/jumbo v6, "configure: cleared"

    #@16a
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@16d
    goto :goto_3
.end method

.method private configureRetry(Z)V
    .locals 12
    .param p1, "forDefault"    # Z

    #@0
    .prologue
    const-wide/16 v10, 0x4e20

    #@2
    const-wide/16 v8, 0xbb8

    #@4
    .line 319
    const-string/jumbo v3, ""

    #@7
    .line 321
    .local v3, "configString":Ljava/lang/String;
    :try_start_0
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 323
    const-string/jumbo v5, "test.data_retry_config"

    #@e
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 324
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_0

    #@18
    .line 325
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@1b
    .line 326
    return-void

    #@1c
    .line 331
    .end local v1    # "config":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1e
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@21
    move-result-object v5

    #@22
    const-string/jumbo v6, "carrier_config"

    #@25
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 330
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    #@2b
    .line 332
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v5, p0, Lcom/android/internal/telephony/RetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2d
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@30
    move-result v5

    #@31
    invoke-virtual {v2, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    #@34
    move-result-object v0

    #@35
    .line 335
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v5, "carrier_data_call_apn_delay_default_long"

    #@38
    .line 336
    const-wide/16 v6, 0x4e20

    #@3a
    .line 334
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    #@3d
    move-result-wide v6

    #@3e
    iput-wide v6, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    #@40
    .line 338
    const-string/jumbo v5, "carrier_data_call_apn_delay_faster_long"

    #@43
    .line 339
    const-wide/16 v6, 0xbb8

    #@45
    .line 337
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    #@48
    move-result-wide v6

    #@49
    iput-wide v6, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@4b
    .line 341
    if-eqz p1, :cond_1

    #@4d
    .line 343
    const-string/jumbo v5, "carrier_data_call_retry_config_default_string"

    #@50
    .line 344
    const-string/jumbo v6, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    #@53
    .line 342
    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-object v3

    #@57
    .line 364
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    #@5a
    .line 318
    return-void

    #@5b
    .line 348
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "carrier_data_call_retry_config_others_string"

    #@5e
    .line 349
    const-string/jumbo v6, "max_retries=3, 5000, 5000, 5000"

    #@61
    .line 347
    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@64
    move-result-object v3

    #@65
    goto :goto_0

    #@66
    .line 351
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :catch_0
    move-exception v4

    #@67
    .line 352
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "Failed to read configuration! Use the hardcoded default value."

    #@6a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@6d
    .line 354
    iput-wide v10, p0, Lcom/android/internal/telephony/RetryManager;->mInterApnDelay:J

    #@6f
    .line 355
    iput-wide v8, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@71
    .line 356
    if-eqz p1, :cond_2

    #@73
    const-string/jumbo v3, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    #@76
    goto :goto_0

    #@77
    :cond_2
    const-string/jumbo v3, "max_retries=3, 5000, 5000, 5000"

    #@7a
    goto :goto_0
.end method

.method private getRetryTimer()I
    .locals 4

    #@0
    .prologue
    .line 372
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
    .line 373
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@c
    .line 379
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
    .line 380
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
    .line 385
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
    .line 386
    return v1

    #@3e
    .line 375
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
    .line 382
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
    .line 663
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
    .line 662
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 435
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
    .line 436
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    #@d
    .line 437
    return v2

    #@e
    .line 439
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
    .line 399
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v2

    #@5
    .line 400
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
    .line 409
    .end local v2    # "value":I
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    #@17
    .line 401
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@18
    .line 402
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
    .line 403
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
    .line 567
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@3
    .line 568
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@5
    .line 569
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@8
    .line 570
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@a
    .line 571
    const-wide/16 v0, -0x2

    #@c
    iput-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@e
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@13
    .line 566
    return-void
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 420
    if-gez p2, :cond_0

    #@2
    .line 421
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
    .line 422
    const/4 v0, 0x0

    #@1d
    .line 427
    .local v0, "retVal":Z
    :goto_0
    return v0

    #@1e
    .line 424
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
    .line 640
    const-string/jumbo v1, "  RetryManager"

    #@3
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 641
    const-string/jumbo v1, "***************************************"

    #@9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 643
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
    .line 644
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
    .line 645
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
    .line 646
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
    .line 647
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
    .line 648
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
    .line 649
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
    .line 651
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@bd
    if-eqz v1, :cond_0

    #@bf
    .line 652
    const-string/jumbo v1, "    APN list: "

    #@c2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 653
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
    .line 654
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
    .line 653
    add-int/lit8 v0, v0, 0x1

    #@f8
    goto :goto_0

    #@f9
    .line 658
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "***************************************"

    #@fc
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ff
    .line 659
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@102
    .line 639
    return-void
.end method

.method public getDelayForNextApn(Z)J
    .locals 10
    .param p1, "failFastEnabled"    # Z

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 489
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
    .line 490
    :cond_0
    const-string/jumbo v3, "Waiting APN list is null or empty."

    #@11
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@14
    .line 491
    return-wide v8

    #@15
    .line 494
    :cond_1
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@17
    cmp-long v3, v4, v8

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 495
    const-string/jumbo v3, "Modem suggested not retrying."

    #@1e
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@21
    .line 496
    return-wide v8

    #@22
    .line 499
    :cond_2
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@24
    const-wide/16 v6, -0x2

    #@26
    cmp-long v3, v4, v6

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 500
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@2c
    const/4 v4, 0x3

    #@2d
    if-ge v3, v4, :cond_3

    #@2f
    .line 503
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
    .line 504
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@51
    return-wide v4

    #@52
    .line 513
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@54
    .line 515
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
    .line 518
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
    .line 529
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@6d
    if-gt v2, v3, :cond_9

    #@6f
    .line 531
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
    .line 532
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
    .line 533
    return-wide v8

    #@9c
    .line 522
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@9e
    if-ne v2, v3, :cond_4

    #@a0
    .line 523
    const-string/jumbo v3, "All APNs have permanently failed."

    #@a3
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@a6
    .line 524
    return-wide v8

    #@a7
    .line 535
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    #@aa
    move-result v3

    #@ab
    int-to-long v0, v3

    #@ac
    .line 536
    .local v0, "delay":J
    iget v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@ae
    add-int/lit8 v3, v3, 0x1

    #@b0
    iput v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@b2
    .line 542
    :goto_0
    if-eqz p1, :cond_8

    #@b4
    iget-wide v4, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@b6
    cmp-long v3, v0, v4

    #@b8
    if-lez v3, :cond_8

    #@ba
    .line 547
    iget-wide v0, p0, Lcom/android/internal/telephony/RetryManager;->mFailFastInterApnDelay:J

    #@bc
    .line 550
    :cond_8
    return-wide v0

    #@bd
    .line 539
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
    .line 628
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
    .line 449
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
    .line 450
    :cond_0
    const-string/jumbo v1, "Waiting APN list is null or empty."

    #@11
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@14
    .line 451
    return-object v6

    #@15
    .line 457
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@17
    const-wide/16 v4, -0x2

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 458
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@1f
    const/4 v2, 0x3

    #@20
    if-ge v1, v2, :cond_2

    #@22
    .line 459
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@24
    add-int/lit8 v1, v1, 0x1

    #@26
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@28
    .line 460
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
    .line 463
    :cond_2
    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@35
    .line 465
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@37
    .line 468
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
    .line 471
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
    .line 477
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@50
    .line 478
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
    .line 474
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
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public markApnPermanentFailed(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    .line 558
    if-eqz p1, :cond_0

    #@2
    .line 559
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@5
    .line 557
    :cond_0
    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 618
    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@2
    .line 617
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
    .line 581
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-nez p1, :cond_0

    #@2
    .line 582
    const-string/jumbo v2, "No waiting APNs provided"

    #@5
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@8
    .line 583
    return-void

    #@9
    .line 586
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@b
    .line 589
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mApnType:Ljava/lang/String;

    #@d
    const-string/jumbo v3, "default"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->configureRetry(Z)V

    #@17
    .line 591
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "apn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@29
    .line 592
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v2, 0x0

    #@2a
    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->permanentFailed:Z

    #@2c
    goto :goto_0

    #@2d
    .line 595
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Setting "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mWaitingApns:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v3

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, " waiting APNs."

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RetryManager;->log(Ljava/lang/String;)V

    #@51
    .line 579
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 632
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
    .line 633
    const-string/jumbo v1, " mMaxRetryCount="

    #@22
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 633
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@28
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 633
    const-string/jumbo v1, " mCurrentApnIndex="

    #@2f
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 633
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurrentApnIndex:I

    #@35
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 634
    const-string/jumbo v1, " mSameApnRtryCount="

    #@3c
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 634
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mSameApnRetryCount:I

    #@42
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 634
    const-string/jumbo v1, " mModemSuggestedDelay="

    #@49
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 635
    iget-wide v2, p0, Lcom/android/internal/telephony/RetryManager;->mModemSuggestedDelay:J

    #@4f
    .line 632
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 635
    const-string/jumbo v1, " mRetryForever="

    #@56
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 635
    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@5c
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 636
    const-string/jumbo v1, " mConfig={"

    #@63
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@69
    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 636
    const-string/jumbo v1, "}"

    #@70
    .line 632
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

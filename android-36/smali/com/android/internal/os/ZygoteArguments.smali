.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;
.source "ZygoteArguments.java"


# instance fields
.field blacklist mAbiListQuery:Z

.field blacklist mAllowlistedDataInfoList:[Ljava/lang/String;

.field blacklist mApiDenylistExemptions:[Ljava/lang/String;

.field blacklist mAppDataDir:Ljava/lang/String;

.field blacklist mBindMountAppDataDirs:Z

.field blacklist mBindMountAppStorageDirs:Z

.field blacklist mBindMountSyspropOverrides:Z

.field blacklist mBootCompleted:Z

.field private blacklist mCapabilitiesSpecified:Z

.field blacklist mDisabledCompatChanges:[J

.field blacklist mEffectiveCapabilities:J

.field blacklist mGid:I

.field blacklist mGidSpecified:Z

.field blacklist mGids:[I

.field blacklist mHiddenApiAccessLogSampleRate:I

.field blacklist mHiddenApiAccessStatslogSampleRate:I

.field blacklist mInstructionSet:Ljava/lang/String;

.field blacklist mInvokeWith:Ljava/lang/String;

.field blacklist mIsTopApp:Z

.field blacklist mMountExternal:I

.field blacklist mNiceName:Ljava/lang/String;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mPermittedCapabilities:J

.field blacklist mPidQuery:Z

.field blacklist mPkgDataInfoList:[Ljava/lang/String;

.field blacklist mPreloadApp:Ljava/lang/String;

.field blacklist mPreloadDefault:Z

.field blacklist mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field blacklist mRemainingArgs:[Ljava/lang/String;

.field blacklist mRuntimeFlags:I

.field blacklist mSeInfo:Ljava/lang/String;

.field private blacklist mSeInfoSpecified:Z

.field blacklist mStartChildZygote:Z

.field blacklist mTargetSdkVersion:I

.field private blacklist mTargetSdkVersionSpecified:Z

.field blacklist mUid:I

.field blacklist mUidSpecified:Z

.field blacklist mUsapPoolEnabled:Z

.field blacklist mUsapPoolStatusSpecified:Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 4
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    .line 61
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    .line 77
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    .line 189
    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteArguments;->parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    .line 237
    return-void
.end method

.method private static blacklist getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .line 522
    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "arg"    # Ljava/lang/String;

    .line 518
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;
    .registers 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getCount()I

    move-result v0

    .line 247
    .local v0, "argCount":I
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/ZygoteArguments;-><init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    :goto_d
    return-object v1
.end method

.method private blacklist parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 15
    .param p1, "args"    # Lcom/android/internal/os/ZygoteCommandBuffer;
    .param p2, "argCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "unprocessedArg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 272
    .local v1, "curArg":I
    const/4 v2, 0x0

    .line 273
    .local v2, "seenRuntimeArgs":Z
    const/4 v3, 0x1

    .line 275
    .local v3, "expectRuntimeArgs":Z
    :goto_4
    const/4 v4, 0x0

    if-ge v1, p2, :cond_37d

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 279
    add-int/lit8 v1, v1, 0x1

    .line 280
    goto/16 :goto_37d

    .line 281
    :cond_17
    const-string v6, "--setuid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Duplicate arg specified"

    const/4 v8, 0x1

    if-eqz v6, :cond_3a

    .line 282
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v4, :cond_34

    .line 286
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    .line 287
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_378

    .line 283
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_3a
    const-string v6, "--setgid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 289
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v4, :cond_54

    .line 293
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    .line 294
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_378

    .line 290
    :cond_54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_5a
    const-string v6, "--target-sdk-version="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 296
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v4, :cond_74

    .line 300
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    .line 301
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_378

    .line 297
    :cond_74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Duplicate target-sdk-version specified"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_7c
    const-string v6, "--runtime-args"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 303
    const/4 v2, 0x1

    goto/16 :goto_378

    .line 304
    :cond_87
    const-string v6, "--runtime-flags="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 305
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_378

    .line 306
    :cond_9b
    const-string v6, "--seinfo="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 307
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v4, :cond_b1

    .line 311
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    .line 312
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_378

    .line 308
    :cond_b1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_b7
    const-string v6, "--capabilities="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_104

    .line 314
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v6, :cond_fe

    .line 318
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    .line 319
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "capString":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "capStrings":[Ljava/lang/String;
    array-length v9, v7

    if-ne v9, v8, :cond_e4

    .line 324
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 325
    iget-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_fc

    .line 327
    :cond_e4
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 328
    aget-object v4, v7, v8

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 330
    .end local v6    # "capString":Ljava/lang/String;
    .end local v7    # "capStrings":[Ljava/lang/String;
    :goto_fc
    goto/16 :goto_378

    .line 315
    :cond_fe
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 330
    :cond_104
    const-string v6, "--rlimit="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x3

    if-eqz v6, :cond_140

    .line 332
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "limitStrings":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v10, :cond_138

    .line 338
    array-length v6, v4

    new-array v6, v6, [I

    .line 340
    .local v6, "rlimitTuple":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_118
    array-length v9, v4

    if-ge v7, v9, :cond_126

    .line 341
    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v7

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_118

    .line 344
    .end local v7    # "i":I
    :cond_126
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v7, :cond_131

    .line 345
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    .line 348
    :cond_131
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v4    # "limitStrings":[Ljava/lang/String;
    .end local v6    # "rlimitTuple":[I
    goto/16 :goto_378

    .line 335
    .restart local v4    # "limitStrings":[Ljava/lang/String;
    :cond_138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 349
    .end local v4    # "limitStrings":[Ljava/lang/String;
    :cond_140
    const-string v6, "--setgroups="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16e

    .line 350
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v4, :cond_168

    .line 355
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    .line 359
    array-length v6, v4

    sub-int/2addr v6, v8

    .local v6, "i":I
    :goto_157
    if-ltz v6, :cond_166

    .line 360
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v6

    .line 359
    add-int/lit8 v6, v6, -0x1

    goto :goto_157

    .line 362
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_166
    goto/16 :goto_378

    .line 351
    :cond_168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    :cond_16e
    const-string v6, "--invoke-with"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_193

    .line 363
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v4, :cond_18d

    .line 368
    add-int/lit8 v1, v1, 0x1

    .line 369
    :try_start_17c
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_182
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17c .. :try_end_182} :catch_184

    .line 373
    goto/16 :goto_378

    .line 370
    :catch_184
    move-exception v4

    .line 371
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--invoke-with requires argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 364
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_18d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 374
    :cond_193
    const-string v6, "--nice-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ad

    .line 375
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v4, :cond_1a7

    .line 379
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_378

    .line 376
    :cond_1a7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 380
    :cond_1ad
    const-string v6, "--mount-external-default"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    .line 381
    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_378

    .line 382
    :cond_1b9
    const-string v6, "--mount-external-installer"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c5

    .line 383
    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_378

    .line 384
    :cond_1c5
    const-string v6, "--mount-external-pass-through"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d1

    .line 385
    iput v10, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_378

    .line 386
    :cond_1d1
    const-string v6, "--mount-external-android-writable"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1de

    .line 387
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_378

    .line 388
    :cond_1de
    const-string v6, "--query-abi-list"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ea

    .line 389
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_378

    .line 390
    :cond_1ea
    const-string v6, "--get-pid"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f6

    .line 391
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_378

    .line 392
    :cond_1f6
    const-string v6, "--boot-completed"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_202

    .line 393
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_378

    .line 394
    :cond_202
    const-string v6, "--instruction-set="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_212

    .line 395
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_378

    .line 396
    :cond_212
    const-string v6, "--app-data-dir="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_222

    .line 397
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_378

    .line 398
    :cond_222
    const-string v6, "--preload-app"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_234

    .line 399
    add-int/lit8 v1, v1, 0x1

    .line 400
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_378

    .line 401
    :cond_234
    const-string v6, "--preload-default"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_241

    .line 402
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    .line 403
    const/4 v3, 0x0

    goto/16 :goto_378

    .line 404
    :cond_241
    const-string v6, "--start-child-zygote"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24d

    .line 405
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_378

    .line 406
    :cond_24d
    const-string v6, "--set-api-denylist-exemptions"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_271

    .line 409
    sub-int v4, p2, v1

    sub-int/2addr v4, v8

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    .line 410
    add-int/lit8 v1, v1, 0x1

    .line 411
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25f
    if-ge v1, p2, :cond_26e

    .line 412
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 411
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_25f

    .line 414
    .end local v4    # "i":I
    :cond_26e
    const/4 v3, 0x0

    goto/16 :goto_378

    .line 415
    :cond_271
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a1

    .line 416
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "rateStr":Ljava/lang/String;
    :try_start_27d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_283
    .catch Ljava/lang/NumberFormatException; {:try_start_27d .. :try_end_283} :catch_287

    .line 422
    nop

    .line 423
    const/4 v3, 0x0

    .line 424
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_378

    .line 419
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_287
    move-exception v6

    .line 420
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid log sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 424
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2a1
    const-string v6, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d1

    .line 425
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .restart local v4    # "rateStr":Ljava/lang/String;
    :try_start_2ad
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2b3
    .catch Ljava/lang/NumberFormatException; {:try_start_2ad .. :try_end_2b3} :catch_2b7

    .line 431
    nop

    .line 432
    const/4 v3, 0x0

    .line 433
    .end local v4    # "rateStr":Ljava/lang/String;
    goto/16 :goto_378

    .line 428
    .restart local v4    # "rateStr":Ljava/lang/String;
    :catch_2b7
    move-exception v6

    .line 429
    .restart local v6    # "nfe":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid statslog sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 433
    .end local v4    # "rateStr":Ljava/lang/String;
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2d1
    const-string v6, "--package-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2eb

    .line 434
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_2e5

    .line 437
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_378

    .line 435
    :cond_2e5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 438
    :cond_2eb
    const-string v6, "--usap-pool-enabled="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_302

    .line 439
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    .line 440
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    .line 441
    const/4 v3, 0x0

    goto/16 :goto_378

    .line 442
    :cond_302
    const-string v6, "--is-top-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30e

    .line 443
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto/16 :goto_378

    .line 444
    :cond_30e
    const-string v6, "--disabled-compat-changes="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33a

    .line 445
    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v4, :cond_334

    .line 448
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    .line 450
    .local v6, "length":I
    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    .line 451
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_324
    if-ge v7, v6, :cond_333

    .line 452
    iget-object v9, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v10, v4, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v7

    .line 451
    add-int/lit8 v7, v7, 0x1

    goto :goto_324

    .line 454
    .end local v4    # "params":[Ljava/lang/String;
    .end local v6    # "length":I
    .end local v7    # "i":I
    :cond_333
    goto :goto_378

    .line 446
    :cond_334
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 454
    :cond_33a
    const-string v6, "--pkg-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_349

    .line 455
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_378

    .line 456
    :cond_349
    const-string v6, "--allowlisted-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_358

    .line 457
    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    goto :goto_378

    .line 458
    :cond_358
    const-string v6, "--bind-mount-storage-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_363

    .line 459
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_378

    .line 460
    :cond_363
    const-string v6, "--bind-mount-data-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36e

    .line 461
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    goto :goto_378

    .line 462
    :cond_36e
    const-string v6, "--bind-mount-sysprop-overrides"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37b

    .line 463
    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    .line 275
    .end local v5    # "arg":Ljava/lang/String;
    :goto_378
    add-int/2addr v1, v8

    goto/16 :goto_4

    .line 465
    .restart local v5    # "arg":Ljava/lang/String;
    :cond_37b
    move-object v0, v5

    .line 466
    nop

    .line 472
    .end local v5    # "arg":Ljava/lang/String;
    :cond_37d
    :goto_37d
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v5, :cond_38c

    .line 473
    if-gt p2, v1, :cond_384

    goto :goto_3e9

    .line 474
    :cond_384
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --boot-completed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_38c
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v5, :cond_3e7

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v5, :cond_395

    goto :goto_3e7

    .line 480
    :cond_395
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v5, :cond_3a4

    .line 481
    if-gt p2, v1, :cond_39c

    goto :goto_3e9

    .line 482
    :cond_39c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-app."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 485
    :cond_3a4
    if-eqz v3, :cond_3e9

    .line 486
    if-nez v2, :cond_3c9

    .line 487
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected argument : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 488
    if-nez v0, :cond_3bc

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    goto :goto_3bd

    :cond_3bc
    move-object v6, v0

    :goto_3bd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    :cond_3c9
    sub-int v5, p2, v1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 492
    const/4 v5, 0x0

    .line 493
    .local v5, "i":I
    if-eqz v0, :cond_3d8

    .line 494
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    aput-object v0, v6, v4

    .line 495
    add-int/lit8 v5, v5, 0x1

    .line 497
    :cond_3d8
    :goto_3d8
    sub-int v6, p2, v1

    if-ge v5, v6, :cond_3e9

    .line 498
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 497
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d8

    .line 477
    .end local v5    # "i":I
    :cond_3e7
    :goto_3e7
    if-gt p2, v1, :cond_40e

    .line 502
    :cond_3e9
    :goto_3e9
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz v5, :cond_40d

    .line 503
    const/4 v5, 0x0

    .line 504
    .local v5, "seenChildSocketArg":Z
    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v7, v6

    :goto_3f1
    if-ge v4, v7, :cond_402

    aget-object v8, v6, v4

    .line 505
    .local v8, "arg":Ljava/lang/String;
    const-string v9, "--zygote-socket="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3ff

    .line 506
    const/4 v5, 0x1

    .line 507
    goto :goto_402

    .line 504
    .end local v8    # "arg":Ljava/lang/String;
    :cond_3ff
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f1

    .line 510
    :cond_402
    :goto_402
    if-eqz v5, :cond_405

    goto :goto_40d

    .line 511
    :cond_405
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 515
    .end local v5    # "seenChildSocketArg":Z
    :cond_40d
    :goto_40d
    return-void

    .line 478
    :cond_40e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --query-abi-list."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

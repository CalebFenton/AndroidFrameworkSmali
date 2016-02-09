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
.field public static final DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field public static final VDBG:Z


# instance fields
.field private mConfig:Ljava/lang/String;

.field private mCurMaxRetryCount:I

.field private mMaxRetryCount:I

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


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@a
    .line 111
    new-instance v0, Ljava/util/Random;

    #@c
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    #@11
    .line 116
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 443
    const-string/jumbo v0, "RetryManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[RM] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 442
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 434
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
    .line 435
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    #@d
    .line 436
    return v2

    #@e
    .line 438
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
    .line 400
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4
    move-result v2

    #@5
    .line 401
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
    .line 408
    .end local v2    # "value":I
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    #@17
    .line 402
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    #@18
    .line 403
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
    .line 404
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
.method public configure(III)Z
    .locals 2
    .param p1, "maxRetryCount"    # I
    .param p2, "retryTime"    # I
    .param p3, "randomizationTime"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 149
    const-string/jumbo v0, "maxRetryCount"

    #@4
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 150
    return v1

    #@b
    .line 153
    :cond_0
    const-string/jumbo v0, "retryTime"

    #@e
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1

    #@14
    .line 154
    return v1

    #@15
    .line 157
    :cond_1
    const-string/jumbo v0, "randomizationTime"

    #@18
    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 158
    return v1

    #@1f
    .line 161
    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@21
    .line 162
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@23
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@25
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    #@28
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2d
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@2f
    new-instance v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@31
    invoke-direct {v1, p2, p3}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    #@34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 168
    const/4 v0, 0x1

    #@38
    return v0
.end method

.method public configure(Ljava/lang/String;)Z
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
    .line 180
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
    .line 181
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
    .line 184
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@21
    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@24
    move-result v6

    #@25
    if-nez v6, :cond_c

    #@27
    .line 187
    const/4 v0, 0x0

    #@28
    .line 191
    .local v0, "defaultRandomization":I
    iput v9, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@2a
    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    #@2d
    .line 193
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    #@32
    .line 195
    const-string/jumbo v6, ","

    #@35
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 196
    .local v4, "strArray":[Ljava/lang/String;
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_0
    array-length v6, v4

    #@3b
    if-ge v1, v6, :cond_a

    #@3d
    .line 199
    aget-object v6, v4, v1

    #@3f
    const-string/jumbo v7, "="

    #@42
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 200
    .local v3, "splitStr":[Ljava/lang/String;
    aget-object v6, v3, v9

    #@48
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    aput-object v6, v3, v9

    #@4e
    .line 202
    array-length v6, v3

    #@4f
    if-le v6, v8, :cond_6

    #@51
    .line 203
    aget-object v6, v3, v8

    #@53
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@56
    move-result-object v6

    #@57
    aput-object v6, v3, v8

    #@59
    .line 205
    aget-object v6, v3, v9

    #@5b
    const-string/jumbo v7, "default_randomization"

    #@5e
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@61
    move-result v6

    #@62
    if-eqz v6, :cond_2

    #@64
    .line 206
    aget-object v6, v3, v9

    #@66
    aget-object v7, v3, v8

    #@68
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@6b
    move-result-object v5

    #@6c
    .line 207
    .local v5, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@6e
    check-cast v6, Ljava/lang/Boolean;

    #@70
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@73
    move-result v6

    #@74
    if-nez v6, :cond_1

    #@76
    return v9

    #@77
    .line 208
    :cond_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@79
    check-cast v6, Ljava/lang/Integer;

    #@7b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@7e
    move-result v0

    #@7f
    .line 196
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@81
    goto :goto_0

    #@82
    .line 209
    :cond_2
    aget-object v6, v3, v9

    #@84
    const-string/jumbo v7, "max_retries"

    #@87
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@8a
    move-result v6

    #@8b
    if-eqz v6, :cond_5

    #@8d
    .line 210
    const-string/jumbo v6, "infinite"

    #@90
    aget-object v7, v3, v8

    #@92
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@95
    move-result v6

    #@96
    if-eqz v6, :cond_3

    #@98
    .line 211
    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@9a
    goto :goto_1

    #@9b
    .line 213
    :cond_3
    aget-object v6, v3, v9

    #@9d
    aget-object v7, v3, v8

    #@9f
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@a2
    move-result-object v5

    #@a3
    .line 214
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@a5
    check-cast v6, Ljava/lang/Boolean;

    #@a7
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@aa
    move-result v6

    #@ab
    if-nez v6, :cond_4

    #@ad
    return v9

    #@ae
    .line 215
    :cond_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@b0
    check-cast v6, Ljava/lang/Integer;

    #@b2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@b5
    move-result v6

    #@b6
    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@b8
    goto :goto_1

    #@b9
    .line 218
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    const-string/jumbo v6, "RetryManager"

    #@bc
    new-instance v7, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v8, "Unrecognized configuration name value pair: "

    #@c4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v7

    #@c8
    .line 219
    aget-object v8, v4, v1

    #@ca
    .line 218
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v7

    #@ce
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v7

    #@d2
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    .line 220
    return v9

    #@d6
    .line 227
    :cond_6
    aget-object v6, v4, v1

    #@d8
    const-string/jumbo v7, ":"

    #@db
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@de
    move-result-object v3

    #@df
    .line 228
    aget-object v6, v3, v9

    #@e1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@e4
    move-result-object v6

    #@e5
    aput-object v6, v3, v9

    #@e7
    .line 229
    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@e9
    invoke-direct {v2, v9, v9}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    #@ec
    .line 230
    .local v2, "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string/jumbo v6, "delayTime"

    #@ef
    aget-object v7, v3, v9

    #@f1
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@f4
    move-result-object v5

    #@f5
    .line 231
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@f7
    check-cast v6, Ljava/lang/Boolean;

    #@f9
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@fc
    move-result v6

    #@fd
    if-nez v6, :cond_7

    #@ff
    return v9

    #@100
    .line 232
    :cond_7
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@102
    check-cast v6, Ljava/lang/Integer;

    #@104
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@107
    move-result v6

    #@108
    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    #@10a
    .line 235
    array-length v6, v3

    #@10b
    if-le v6, v8, :cond_9

    #@10d
    .line 236
    aget-object v6, v3, v8

    #@10f
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@112
    move-result-object v6

    #@113
    aput-object v6, v3, v8

    #@115
    .line 238
    const-string/jumbo v6, "randomizationTime"

    #@118
    aget-object v7, v3, v8

    #@11a
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    #@11d
    move-result-object v5

    #@11e
    .line 239
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@120
    check-cast v6, Ljava/lang/Boolean;

    #@122
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@125
    move-result v6

    #@126
    if-nez v6, :cond_8

    #@128
    return v9

    #@129
    .line 240
    :cond_8
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@12b
    check-cast v6, Ljava/lang/Integer;

    #@12d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@130
    move-result v6

    #@131
    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@133
    .line 244
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@135
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@138
    goto/16 :goto_1

    #@13a
    .line 242
    :cond_9
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@13c
    goto :goto_2

    #@13d
    .line 247
    .end local v2    # "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v3    # "splitStr":[Ljava/lang/String;
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@13f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@142
    move-result v6

    #@143
    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@145
    if-le v6, v7, :cond_b

    #@147
    .line 248
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@149
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@14c
    move-result v6

    #@14d
    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@14f
    .line 251
    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@151
    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@153
    .line 253
    return v8

    #@154
    .line 256
    .end local v0    # "defaultRandomization":I
    .end local v1    # "i":I
    .end local v4    # "strArray":[Ljava/lang/String;
    :cond_c
    return v9
.end method

.method public getRetryCount()I
    .locals 1

    #@0
    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@2
    return v0
.end method

.method public getRetryTimer()I
    .locals 4

    #@0
    .prologue
    .line 277
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
    .line 278
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@c
    .line 284
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
    .line 285
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
    .line 291
    .local v1, "retVal":I
    :goto_1
    return v1

    #@27
    .line 280
    .end local v0    # "index":I
    .end local v1    # "retVal":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v2

    #@2d
    add-int/lit8 v0, v2, -0x1

    #@2f
    .restart local v0    # "index":I
    goto :goto_0

    #@30
    .line 287
    :cond_1
    const/4 v1, 0x0

    #@31
    .restart local v1    # "retVal":I
    goto :goto_1
.end method

.method public increaseRetryCount()V
    .locals 2

    #@0
    .prologue
    .line 306
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@6
    .line 307
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@8
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 308
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@e
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@10
    .line 305
    :cond_0
    return-void
.end method

.method public isRetryForever()Z
    .locals 1

    #@0
    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@2
    return v0
.end method

.method public isRetryNeeded()Z
    .locals 3

    #@0
    .prologue
    .line 267
    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@2
    if-nez v1, :cond_0

    #@4
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@6
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@8
    if-ge v1, v2, :cond_1

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    .line 269
    .local v0, "retVal":Z
    :goto_0
    return v0

    #@c
    .line 267
    .end local v0    # "retVal":Z
    :cond_1
    const/4 v0, 0x0

    #@d
    .restart local v0    # "retVal":Z
    goto :goto_0
.end method

.method public resetRetryCount()V
    .locals 1

    #@0
    .prologue
    .line 368
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@3
    .line 367
    return-void
.end method

.method public restoreCurMaxRetryCount()V
    .locals 1

    #@0
    .prologue
    .line 350
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@2
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@4
    .line 353
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    #@9
    .line 349
    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    #@0
    .prologue
    .line 376
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@2
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@4
    .line 377
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@7
    .line 375
    return-void
.end method

.method public setCurMaxRetryCount(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 333
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@3
    .line 336
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@5
    if-gez v0, :cond_0

    #@7
    .line 337
    iput v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@9
    .line 341
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    #@e
    .line 332
    return-void
.end method

.method public setRetryCount(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 317
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@3
    .line 318
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@5
    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@7
    if-le v0, v1, :cond_0

    #@9
    .line 319
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@b
    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@d
    .line 322
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@f
    if-gez v0, :cond_1

    #@11
    .line 323
    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@13
    .line 316
    :cond_1
    return-void
.end method

.method public setRetryForever(Z)V
    .locals 0
    .param p1, "retryForever"    # Z

    #@0
    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@2
    .line 359
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v4, "RetryManager: { forever="

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget-boolean v4, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, " maxRetry="

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 123
    const-string/jumbo v4, " curMaxRetry="

    #@22
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 123
    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    #@28
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 123
    const-string/jumbo v4, " retry="

    #@2f
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 123
    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    #@35
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 124
    const-string/jumbo v4, " config={"

    #@3c
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    #@42
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 124
    const-string/jumbo v4, "} retryArray={"

    #@49
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 125
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    #@53
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v1

    #@57
    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_0

    #@5d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/android/internal/telephony/RetryManager$RetryRec;

    #@63
    .line 126
    .local v0, "r":Lcom/android/internal/telephony/RetryManager$RetryRec;
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    iget v4, v0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    #@6e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v3

    #@72
    const-string/jumbo v4, ":"

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    iget v4, v0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    #@7b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    const-string/jumbo v4, " "

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    goto :goto_0

    #@8b
    .line 128
    .end local v0    # "r":Lcom/android/internal/telephony/RetryManager$RetryRec;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    const-string/jumbo v4, "}}"

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    .line 129
    return-object v2
.end method

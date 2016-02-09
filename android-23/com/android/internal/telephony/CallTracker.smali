.class public abstract Lcom/android/internal/telephony/CallTracker;
.super Landroid/os/Handler;
.source "CallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final POLL_DELAY_MSEC:I = 0xfa


# instance fields
.field private final VALID_COMPARE_LENGTH:I

.field public mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mHandoverConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastRelevantPoll:Landroid/os/Message;

.field protected mNeedsPoll:Z

.field protected mNumberConverted:Z

.field protected mPendingOperations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@a
    .line 49
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    #@d
    .line 50
    const/4 v0, 0x3

    #@e
    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->VALID_COMPARE_LENGTH:I

    #@10
    .line 34
    return-void
.end method

.method private checkNoOperationsPending()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 154
    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "serviceGid1"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 263
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 264
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .line 265
    .local v1, "gid_length":I
    const/4 v2, 0x1

    #@a
    .line 267
    .local v2, "ret":Z
    if-eqz p2, :cond_0

    #@c
    const-string/jumbo v4, ""

    #@f
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 268
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "compareGid1 serviceGid is empty, return "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@2c
    .line 269
    return v2

    #@2d
    .line 272
    :cond_1
    if-eqz v0, :cond_2

    #@2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@32
    move-result v4

    #@33
    if-lt v4, v1, :cond_2

    #@35
    .line 273
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    .line 272
    :cond_2
    if-nez v3, :cond_3

    #@3f
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, " gid1 "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    const-string/jumbo v4, " serviceGid1 "

    #@52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@61
    .line 275
    const/4 v2, 0x0

    #@62
    .line 277
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v4, "compareGid1 is "

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    if-eqz v2, :cond_4

    #@70
    const-string/jumbo v3, "Same"

    #@73
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v3

    #@7b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@7e
    .line 278
    return v2

    #@7f
    .line 277
    :cond_4
    const-string/jumbo v3, "Different"

    #@82
    goto :goto_0
.end method


# virtual methods
.method protected checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 179
    const-string/jumbo v2, "ril.test.emergencynumber"

    #@4
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 184
    .local v0, "testEn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 185
    const-string/jumbo v2, ":"

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 186
    .local v1, "values":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "checkForTestEmergencyNumber: values.length="

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    array-length v3, v1

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@2d
    .line 187
    array-length v2, v1

    #@2e
    const/4 v3, 0x2

    #@2f
    if-ne v2, v3, :cond_0

    #@31
    .line 188
    const/4 v2, 0x0

    #@32
    aget-object v2, v1, v2

    #@34
    .line 189
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_0

    #@3e
    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@40
    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->testingEmergencyCall()V

    #@43
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v3, "checkForTestEmergencyNumber: remap "

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 192
    const-string/jumbo v3, " to "

    #@56
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 192
    aget-object v3, v1, v4

    #@5c
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@67
    .line 193
    aget-object p1, v1, v4

    #@69
    .line 197
    .end local v1    # "values":[Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "dialNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    if-nez p2, :cond_0

    #@2
    .line 202
    return-object p2

    #@3
    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v7

    #@b
    .line 205
    const v8, 0x107003f

    #@e
    .line 204
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 206
    .local v1, "convertMaps":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "convertNumberIfNecessary Roaming convertMaps.length "

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    .line 207
    array-length v8, v1

    #@1f
    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    .line 208
    const-string/jumbo v8, " dialNumber.length() "

    #@26
    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2d
    move-result v8

    #@2e
    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@39
    .line 210
    array-length v7, v1

    #@3a
    const/4 v8, 0x1

    #@3b
    if-lt v7, v8, :cond_1

    #@3d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@40
    move-result v7

    #@41
    const/4 v8, 0x3

    #@42
    if-ge v7, v8, :cond_2

    #@44
    .line 211
    :cond_1
    return-object p2

    #@45
    .line 216
    :cond_2
    const-string/jumbo v5, ""

    #@48
    .line 217
    .local v5, "outNumber":Ljava/lang/String;
    const/4 v4, 0x0

    #@49
    .line 218
    .local v4, "needConvert":Z
    const/4 v7, 0x0

    #@4a
    array-length v8, v1

    #@4b
    :goto_0
    if-ge v7, v8, :cond_a

    #@4d
    aget-object v0, v1, v7

    #@4f
    .line 219
    .local v0, "convertMap":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v10, "convertNumberIfNecessary: "

    #@57
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v9

    #@5b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@66
    .line 220
    const-string/jumbo v9, ":"

    #@69
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    .line 221
    .local v2, "entry":[Ljava/lang/String;
    array-length v9, v2

    #@6e
    const/4 v10, 0x1

    #@6f
    if-le v9, v10, :cond_6

    #@71
    .line 222
    const/4 v9, 0x1

    #@72
    aget-object v9, v2, v9

    #@74
    const-string/jumbo v10, ","

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    .line 223
    .local v6, "tmpArray":[Ljava/lang/String;
    const/4 v9, 0x0

    #@7c
    aget-object v9, v2, v9

    #@7e
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@81
    move-result v9

    #@82
    if-nez v9, :cond_6

    #@84
    const/4 v9, 0x0

    #@85
    aget-object v9, v2, v9

    #@87
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v9

    #@8b
    if-eqz v9, :cond_6

    #@8d
    .line 224
    array-length v9, v6

    #@8e
    const/4 v10, 0x2

    #@8f
    if-lt v9, v10, :cond_3

    #@91
    const/4 v9, 0x1

    #@92
    aget-object v9, v6, v9

    #@94
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@97
    move-result v9

    #@98
    if-eqz v9, :cond_7

    #@9a
    .line 228
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    #@9d
    move-result v9

    #@9e
    if-eqz v9, :cond_4

    #@a0
    .line 229
    const/4 v4, 0x1

    #@a1
    .line 232
    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    #@a3
    .line 233
    const/4 v9, 0x0

    #@a4
    aget-object v9, v6, v9

    #@a6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a9
    move-result v9

    #@aa
    if-nez v9, :cond_9

    #@ac
    const/4 v9, 0x0

    #@ad
    aget-object v9, v6, v9

    #@af
    const-string/jumbo v10, "MDN"

    #@b2
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@b5
    move-result v9

    #@b6
    if-eqz v9, :cond_9

    #@b8
    .line 234
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    .line 235
    .local v3, "mdn":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@bf
    move-result v9

    #@c0
    if-nez v9, :cond_5

    #@c2
    .line 236
    const-string/jumbo v9, "+"

    #@c5
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c8
    move-result v9

    #@c9
    if-eqz v9, :cond_8

    #@cb
    .line 237
    move-object v5, v3

    #@cc
    .line 246
    .end local v3    # "mdn":Ljava/lang/String;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    #@cd
    .line 218
    .end local v6    # "tmpArray":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    #@cf
    goto/16 :goto_0

    #@d1
    .line 225
    .restart local v6    # "tmpArray":[Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    #@d2
    aget-object v9, v6, v9

    #@d4
    invoke-direct {p0, p1, v9}, Lcom/android/internal/telephony/CallTracker;->compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    #@d7
    move-result v9

    #@d8
    if-eqz v9, :cond_4

    #@da
    .line 226
    const/4 v4, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 239
    .restart local v3    # "mdn":Ljava/lang/String;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const/4 v10, 0x0

    #@e2
    aget-object v10, v6, v10

    #@e4
    const/4 v11, 0x0

    #@e5
    aget-object v11, v6, v11

    #@e7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@ea
    move-result v11

    #@eb
    add-int/lit8 v11, v11, -0x3

    #@ed
    const/4 v12, 0x0

    #@ee
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f1
    move-result-object v10

    #@f2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v9

    #@f6
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v9

    #@fa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v5

    #@fe
    goto :goto_2

    #@ff
    .line 244
    .end local v3    # "mdn":Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    #@100
    aget-object v5, v6, v9

    #@102
    goto :goto_2

    #@103
    .line 252
    .end local v0    # "convertMap":Ljava/lang/String;
    .end local v2    # "entry":[Ljava/lang/String;
    .end local v6    # "tmpArray":[Ljava/lang/String;
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@106
    move-result v7

    #@107
    if-nez v7, :cond_b

    #@109
    .line 253
    const-string/jumbo v7, "convertNumberIfNecessary: convert service number"

    #@10c
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@10f
    .line 254
    const/4 v7, 0x1

    #@110
    iput-boolean v7, p0, Lcom/android/internal/telephony/CallTracker;->mNumberConverted:Z

    #@112
    .line 255
    return-object v5

    #@113
    .line 258
    :cond_b
    return-object p2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 292
    const-string/jumbo v0, "CallTracker:"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v1, " mPendingOperations="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v1, " mNeedsPoll="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v1, " mLastRelevantPoll="

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 291
    return-void
.end method

.method protected getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "hoConn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@13
    .line 99
    .local v0, "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "getHoConnection - compare number: hoConn= "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@2e
    .line 100
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    if-eqz v2, :cond_0

    #@34
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_0

    #@40
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "getHoConnection: Handover connection match found = "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@5b
    .line 102
    return-object v0

    #@5c
    .line 105
    .end local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@5e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v1

    #@62
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v2

    #@66
    if-eqz v2, :cond_3

    #@68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@6e
    .line 106
    .restart local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, "getHoConnection: compare state hoConn= "

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@89
    .line 107
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    #@8c
    move-result-object v2

    #@8d
    iget-object v3, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    #@8f
    invoke-static {v3}, Lcom/android/internal/telephony/Call;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    #@92
    move-result-object v3

    #@93
    if-ne v2, v3, :cond_2

    #@95
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v3, "getHoConnection: Handover connection match found = "

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@b0
    .line 109
    return-object v0

    #@b1
    .line 112
    .end local v0    # "hoConn":Lcom/android/internal/telephony/Connection;
    :cond_3
    return-object v4
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method protected abstract handlePollCalls(Landroid/os/AsyncResult;)V
.end method

.method protected handleRadioAvailable()V
    .locals 0

    #@0
    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->pollCallsWhenSafe()V

    #@3
    .line 127
    return-void
.end method

.method protected isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 90
    if-eqz p1, :cond_0

    #@3
    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 91
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    #@9
    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    #@c
    move-result-object v1

    #@d
    .line 92
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@f
    .line 91
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 90
    :cond_0
    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Call$SrvccState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    .local p2, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    #@2
    if-ne p1, v0, :cond_1

    #@4
    if-eqz p2, :cond_1

    #@6
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@b
    .line 124
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "notifySrvccState: mHandoverConnections= "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CallTracker;->log(Ljava/lang/String;)V

    #@28
    .line 115
    return-void

    #@29
    .line 119
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    #@2b
    if-eq p1, v0, :cond_0

    #@2d
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@32
    goto :goto_0
.end method

.method protected obtainNoPollCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    #@0
    .prologue
    .line 141
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->mPendingOperations:I

    #@6
    .line 142
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@9
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected pollCallsAfterDelay()V
    .locals 4

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallTracker;->obtainMessage()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 84
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    #@5
    iput v1, v0, Landroid/os/Message;->what:I

    #@7
    .line 85
    const-wide/16 v2, 0xfa

    #@9
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/CallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c
    .line 81
    return-void
.end method

.method protected pollCallsWhenSafe()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 72
    iput-boolean v1, p0, Lcom/android/internal/telephony/CallTracker;->mNeedsPoll:Z

    #@3
    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;->checkNoOperationsPending()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 75
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/CallTracker;->obtainMessage(I)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@f
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@11
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->mLastRelevantPoll:Landroid/os/Message;

    #@13
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    #@16
    .line 71
    :cond_0
    return-void
.end method

.method public abstract registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForVoiceCallEnded(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceCallStarted(Landroid/os/Handler;)V
.end method

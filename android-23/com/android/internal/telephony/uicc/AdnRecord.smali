.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AdnRecord$1;
    }
.end annotation


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field mAlphaTag:Ljava/lang/String;

.field mEfid:I

.field mEmails:[Ljava/lang/String;

.field mExtRecord:I

.field mNumber:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 75
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    #@5
    .line 74
    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@6
    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@8
    .line 45
    const/16 v0, 0xff

    #@a
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@c
    .line 128
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@e
    .line 129
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@10
    .line 130
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@12
    .line 131
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@14
    .line 132
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@16
    .line 127
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "alphaTag"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@6
    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@8
    .line 45
    const/16 v0, 0xff

    #@a
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@c
    .line 120
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@e
    .line 121
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@10
    .line 122
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@12
    .line 123
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@14
    .line 124
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@16
    .line 119
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "record"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@6
    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@8
    .line 45
    const/16 v0, 0xff

    #@a
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@c
    .line 106
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@e
    .line 107
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@10
    .line 108
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    #@13
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 112
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@4
    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emails"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move v2, v1

    #@3
    move-object v3, p1

    #@4
    move-object v4, p2

    #@5
    move-object v5, p3

    #@6
    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@9
    .line 115
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 102
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    #@4
    .line 101
    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .param p1, "record"    # [B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 294
    :try_start_0
    array-length v3, p1

    #@2
    add-int/lit8 v3, v3, -0xe

    #@4
    const/4 v4, 0x0

    #@5
    .line 293
    invoke-static {p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@b
    .line 296
    array-length v3, p1

    #@c
    add-int/lit8 v1, v3, -0xe

    #@e
    .line 298
    .local v1, "footerOffset":I
    aget-byte v3, p1, v1

    #@10
    and-int/lit16 v2, v3, 0xff

    #@12
    .line 300
    .local v2, "numberLength":I
    const/16 v3, 0xb

    #@14
    if-le v2, v3, :cond_0

    #@16
    .line 302
    const-string/jumbo v3, ""

    #@19
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@1b
    .line 303
    return-void

    #@1c
    .line 314
    :cond_0
    add-int/lit8 v3, v1, 0x1

    #@1e
    .line 313
    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@24
    .line 317
    array-length v3, p1

    #@25
    add-int/lit8 v3, v3, -0x1

    #@27
    aget-byte v3, p1, v3

    #@29
    and-int/lit16 v3, v3, 0xff

    #@2b
    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@2d
    .line 319
    const/4 v3, 0x0

    #@2e
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 291
    .end local v1    # "footerOffset":I
    .end local v2    # "numberLength":I
    :goto_0
    return-void

    #@31
    .line 321
    :catch_0
    move-exception v0

    #@32
    .line 322
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AdnRecord"

    #@35
    const-string/jumbo v4, "Error parsing AdnRecord"

    #@38
    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 323
    const-string/jumbo v3, ""

    #@3e
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@40
    .line 324
    const-string/jumbo v3, ""

    #@43
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@45
    .line 325
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@47
    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    if-ne p0, p1, :cond_0

    #@2
    .line 169
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 171
    :cond_0
    if-nez p0, :cond_1

    #@6
    .line 172
    const-string/jumbo p0, ""

    #@9
    .line 174
    :cond_1
    if-nez p1, :cond_2

    #@b
    .line 175
    const-string/jumbo p1, ""

    #@e
    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 261
    :try_start_0
    array-length v1, p1

    #@2
    const/16 v2, 0xd

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 262
    return-void

    #@7
    .line 265
    :cond_0
    const/4 v1, 0x0

    #@8
    aget-byte v1, p1, v1

    #@a
    and-int/lit8 v1, v1, 0x3

    #@c
    if-eq v1, v3, :cond_1

    #@e
    .line 267
    return-void

    #@f
    .line 270
    :cond_1
    const/4 v1, 0x1

    #@10
    aget-byte v1, p1, v1

    #@12
    and-int/lit16 v1, v1, 0xff

    #@14
    const/16 v2, 0xa

    #@16
    if-le v1, v2, :cond_2

    #@18
    .line 272
    return-void

    #@19
    .line 275
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 276
    const/4 v2, 0x1

    #@25
    aget-byte v2, p1, v2

    #@27
    and-int/lit16 v2, v2, 0xff

    #@29
    const/4 v3, 0x2

    #@2a
    .line 275
    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 259
    :goto_0
    return-void

    #@39
    .line 280
    :catch_0
    move-exception v0

    #@3a
    .line 281
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "AdnRecord"

    #@3d
    const-string/jumbo v2, "Error parsing AdnRecord ext record"

    #@40
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@43
    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .param p1, "recordSize"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, -0x1

    #@3
    .line 213
    add-int/lit8 v3, p1, -0xe

    #@5
    .line 216
    .local v3, "footerOffset":I
    new-array v0, p1, [B

    #@7
    .line 217
    .local v0, "adnString":[B
    const/4 v4, 0x0

    #@8
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    #@a
    .line 218
    aput-byte v7, v0, v4

    #@c
    .line 217
    add-int/lit8 v4, v4, 0x1

    #@e
    goto :goto_0

    #@f
    .line 221
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    .line 222
    const-string/jumbo v5, "AdnRecord"

    #@1a
    const-string/jumbo v6, "[buildAdnString] Empty dialing number"

    #@1d
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 223
    return-object v0

    #@21
    .line 224
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@23
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@26
    move-result v5

    #@27
    .line 225
    const/16 v6, 0x14

    #@29
    .line 224
    if-le v5, v6, :cond_2

    #@2b
    .line 226
    const-string/jumbo v5, "AdnRecord"

    #@2e
    .line 227
    const-string/jumbo v6, "[buildAdnString] Max length of dialing number is 20"

    #@31
    .line 226
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 228
    return-object v9

    #@35
    .line 229
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@37
    if-eqz v5, :cond_3

    #@39
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@3b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@3e
    move-result v5

    #@3f
    if-le v5, v3, :cond_3

    #@41
    .line 230
    const-string/jumbo v5, "AdnRecord"

    #@44
    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v7, "[buildAdnString] Max length of tag is "

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 230
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 232
    return-object v9

    #@5c
    .line 234
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@5e
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    #@61
    move-result-object v1

    #@62
    .line 237
    .local v1, "bcdNumber":[B
    add-int/lit8 v5, v3, 0x1

    #@64
    array-length v6, v1

    #@65
    .line 236
    invoke-static {v1, v8, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@68
    .line 239
    add-int/lit8 v5, v3, 0x0

    #@6a
    .line 240
    array-length v6, v1

    #@6b
    int-to-byte v6, v6

    #@6c
    .line 239
    aput-byte v6, v0, v5

    #@6e
    .line 241
    add-int/lit8 v5, v3, 0xc

    #@70
    aput-byte v7, v0, v5

    #@72
    .line 243
    add-int/lit8 v5, v3, 0xd

    #@74
    aput-byte v7, v0, v5

    #@76
    .line 246
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@78
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7b
    move-result v5

    #@7c
    if-nez v5, :cond_4

    #@7e
    .line 247
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@80
    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    #@83
    move-result-object v2

    #@84
    .line 248
    .local v2, "byteTag":[B
    array-length v5, v2

    #@85
    invoke-static {v2, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@88
    .line 251
    .end local v2    # "byteTag":[B
    :cond_4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 189
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 163
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    #@7
    const/16 v2, 0xff

    #@9
    if-eq v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@13
    if-nez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@2
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@c
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@e
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    .line 181
    if-eqz v0, :cond_0

    #@14
    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@16
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 181
    :goto_0
    return v0

    #@1d
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .param p1, "emails"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@2
    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ADN Record \'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\' \'"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "\'"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 194
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 195
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@19
    .line 193
    return-void
.end method

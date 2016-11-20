.class public Landroid/location/GpsNavigationMessage;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsNavigationMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:S = 0x1s

.field public static final STATUS_PARITY_REBUILT:S = 0x2s

.field public static final STATUS_UNKNOWN:S = 0x0s

.field public static final TYPE_CNAV2:B = 0x4t

.field public static final TYPE_L1CA:B = 0x1t

.field public static final TYPE_L2CNAV:B = 0x2t

.field public static final TYPE_L5CNAV:B = 0x3t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mData:[B

.field private mMessageId:S

.field private mPrn:B

.field private mStatus:S

.field private mSubmessageId:S

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [B

    #@3
    sput-object v0, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    #@5
    .line 247
    new-instance v0, Landroid/location/GpsNavigationMessage$1;

    #@7
    invoke-direct {v0}, Landroid/location/GpsNavigationMessage$1;-><init>()V

    #@a
    .line 246
    sput-object v0, Landroid/location/GpsNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c
    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 89
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    #@6
    .line 88
    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 234
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-short v1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 236
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 238
    :pswitch_1
    const-string/jumbo v0, "ParityPassed"

    #@2a
    return-object v0

    #@2b
    .line 240
    :pswitch_2
    const-string/jumbo v0, "ParityRebuilt"

    #@2e
    return-object v0

    #@2f
    .line 234
    nop

    #@30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 130
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v1, "<Invalid:"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-byte v1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ">"

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 132
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    #@26
    return-object v0

    #@27
    .line 134
    :pswitch_1
    const-string/jumbo v0, "L1 C/A"

    #@2a
    return-object v0

    #@2b
    .line 136
    :pswitch_2
    const-string/jumbo v0, "L2-CNAV"

    #@2e
    return-object v0

    #@2f
    .line 138
    :pswitch_3
    const-string/jumbo v0, "L5-CNAV"

    #@32
    return-object v0

    #@33
    .line 140
    :pswitch_4
    const-string/jumbo v0, "CNAV-2"

    #@36
    return-object v0

    #@37
    .line 130
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 317
    iput-byte v1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@4
    .line 318
    iput-byte v1, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@6
    .line 319
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@8
    .line 320
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@a
    .line 321
    sget-object v0, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    #@c
    iput-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@e
    .line 322
    iput-short v1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@10
    .line 316
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 290
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@2
    return-object v0
.end method

.method public getMessageId()S
    .locals 1

    #@0
    .prologue
    .line 168
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@2
    return v0
.end method

.method public getPrn()B
    .locals 1

    #@0
    .prologue
    .line 151
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@2
    return v0
.end method

.method public getStatus()S
    .locals 1

    #@0
    .prologue
    .line 219
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@2
    return v0
.end method

.method public getSubmessageId()S
    .locals 1

    #@0
    .prologue
    .line 185
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@2
    return v0
.end method

.method public getType()B
    .locals 1

    #@0
    .prologue
    .line 115
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@2
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    #@3
    .line 107
    return-void
.end method

.method public set(Landroid/location/GpsNavigationMessage;)V
    .locals 1
    .param p1, "navigationMessage"    # Landroid/location/GpsNavigationMessage;

    #@0
    .prologue
    .line 96
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mType:B

    #@2
    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@4
    .line 97
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@6
    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@8
    .line 98
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@a
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@c
    .line 99
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@e
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@10
    .line 100
    iget-object v0, p1, Landroid/location/GpsNavigationMessage;->mData:[B

    #@12
    iput-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@14
    .line 101
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@16
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@18
    .line 95
    return-void
.end method

.method public setData([B)V
    .locals 2
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 208
    if-nez p1, :cond_0

    #@2
    .line 209
    new-instance v0, Ljava/security/InvalidParameterException;

    #@4
    const-string/jumbo v1, "Data must be a non-null array"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 212
    :cond_0
    iput-object p1, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@d
    .line 207
    return-void
.end method

.method public setMessageId(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 175
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@2
    .line 174
    return-void
.end method

.method public setPrn(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 158
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@2
    .line 157
    return-void
.end method

.method public setStatus(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 226
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@2
    .line 225
    return-void
.end method

.method public setSubmessageId(S)V
    .locals 0
    .param p1, "value"    # S

    #@0
    .prologue
    .line 192
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@2
    .line 191
    return-void
.end method

.method public setType(B)V
    .locals 0
    .param p1, "value"    # B

    #@0
    .prologue
    .line 122
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@2
    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 295
    const-string/jumbo v1, "   %-15s = %s\n"

    #@6
    .line 296
    .local v1, "format":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const-string/jumbo v5, "GpsNavigationMessage:\n"

    #@b
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 298
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "   %-15s = %s\n"

    #@11
    new-array v6, v9, [Ljava/lang/Object;

    #@13
    const-string/jumbo v7, "Type"

    #@16
    aput-object v7, v6, v4

    #@18
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getTypeString()Ljava/lang/String;

    #@1b
    move-result-object v7

    #@1c
    aput-object v7, v6, v8

    #@1e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 299
    const-string/jumbo v5, "   %-15s = %s\n"

    #@28
    new-array v6, v9, [Ljava/lang/Object;

    #@2a
    const-string/jumbo v7, "Prn"

    #@2d
    aput-object v7, v6, v4

    #@2f
    iget-byte v7, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@31
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v6, v8

    #@37
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 300
    const-string/jumbo v5, "   %-15s = %s\n"

    #@41
    new-array v6, v9, [Ljava/lang/Object;

    #@43
    const-string/jumbo v7, "Status"

    #@46
    aput-object v7, v6, v4

    #@48
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getStatusString()Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    aput-object v7, v6, v8

    #@4e
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 301
    const-string/jumbo v5, "   %-15s = %s\n"

    #@58
    new-array v6, v9, [Ljava/lang/Object;

    #@5a
    const-string/jumbo v7, "MessageId"

    #@5d
    aput-object v7, v6, v4

    #@5f
    iget-short v7, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@61
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@64
    move-result-object v7

    #@65
    aput-object v7, v6, v8

    #@67
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    .line 302
    const-string/jumbo v5, "   %-15s = %s\n"

    #@71
    new-array v6, v9, [Ljava/lang/Object;

    #@73
    const-string/jumbo v7, "SubmessageId"

    #@76
    aput-object v7, v6, v4

    #@78
    iget-short v7, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@7a
    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@7d
    move-result-object v7

    #@7e
    aput-object v7, v6, v8

    #@80
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@83
    move-result-object v5

    #@84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 304
    const-string/jumbo v5, "   %-15s = %s\n"

    #@8a
    new-array v6, v9, [Ljava/lang/Object;

    #@8c
    const-string/jumbo v7, "Data"

    #@8f
    aput-object v7, v6, v4

    #@91
    const-string/jumbo v7, "{"

    #@94
    aput-object v7, v6, v8

    #@96
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@99
    move-result-object v5

    #@9a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 305
    const-string/jumbo v2, "        "

    #@a0
    .line 306
    .local v2, "prefix":Ljava/lang/String;
    iget-object v5, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@a2
    array-length v6, v5

    #@a3
    :goto_0
    if-ge v4, v6, :cond_0

    #@a5
    aget-byte v3, v5, v4

    #@a7
    .line 307
    .local v3, "value":B
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    .line 309
    const-string/jumbo v2, ", "

    #@b0
    .line 306
    add-int/lit8 v4, v4, 0x1

    #@b2
    goto :goto_0

    #@b3
    .line 311
    .end local v3    # "value":B
    :cond_0
    const-string/jumbo v4, " }"

    #@b6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v4

    #@bd
    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 279
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@5
    .line 280
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@a
    .line 281
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 282
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 283
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@16
    array-length v0, v0

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 284
    iget-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@1f
    .line 285
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 278
    return-void
.end method

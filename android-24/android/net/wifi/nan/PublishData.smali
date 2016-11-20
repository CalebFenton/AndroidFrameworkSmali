.class public Landroid/net/wifi/nan/PublishData;
.super Ljava/lang/Object;
.source "PublishData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/PublishData$1;,
        Landroid/net/wifi/nan/PublishData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/PublishData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mRxFilter:[B

.field public final mRxFilterLength:I

.field public final mServiceName:Ljava/lang/String;

.field public final mServiceSpecificInfo:[B

.field public final mServiceSpecificInfoLength:I

.field public final mTxFilter:[B

.field public final mTxFilterLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 113
    new-instance v0, Landroid/net/wifi/nan/PublishData$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/nan/PublishData$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/nan/PublishData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BI[BI[BI)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "txFilter"    # [B
    .param p5, "txFilterLength"    # I
    .param p6, "rxFilter"    # [B
    .param p7, "rxFilterLength"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    iput-object p1, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    #@5
    .line 71
    iput p3, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@7
    .line 72
    iput-object p2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@9
    .line 73
    iput p5, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@b
    .line 74
    iput-object p4, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@d
    .line 75
    iput p7, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@f
    .line 76
    iput-object p6, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@11
    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/PublishData;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "serviceSpecificInfoLength"    # I
    .param p4, "txFilter"    # [B
    .param p5, "txFilterLength"    # I
    .param p6, "rxFilter"    # [B
    .param p7, "rxFilterLength"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/nan/PublishData;-><init>(Ljava/lang/String;[BI[BI[BI)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 145
    if-ne p0, p1, :cond_0

    #@4
    .line 146
    return v5

    #@5
    .line 149
    :cond_0
    instance-of v2, p1, Landroid/net/wifi/nan/PublishData;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 150
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 153
    nop

    #@c
    nop

    #@d
    .line 155
    .local v1, "lhs":Landroid/net/wifi/nan/PublishData;
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    #@f
    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 156
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@19
    iget v3, v1, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@1b
    if-eq v2, v3, :cond_3

    #@1d
    .line 159
    :cond_2
    return v4

    #@1e
    .line 157
    :cond_3
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@20
    iget v3, v1, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@22
    if-ne v2, v3, :cond_2

    #@24
    .line 158
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@26
    iget v3, v1, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@28
    if-ne v2, v3, :cond_2

    #@2a
    .line 162
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@2c
    if-eqz v2, :cond_5

    #@2e
    iget-object v2, v1, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@30
    if-eqz v2, :cond_5

    #@32
    .line 163
    const/4 v0, 0x0

    #@33
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@35
    if-ge v0, v2, :cond_6

    #@37
    .line 164
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@39
    aget-byte v2, v2, v0

    #@3b
    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@3d
    aget-byte v3, v3, v0

    #@3f
    if-eq v2, v3, :cond_4

    #@41
    .line 165
    return v4

    #@42
    .line 163
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 168
    .end local v0    # "i":I
    :cond_5
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@47
    if-eqz v2, :cond_6

    #@49
    .line 169
    return v4

    #@4a
    .line 172
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@4c
    if-eqz v2, :cond_8

    #@4e
    iget-object v2, v1, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@50
    if-eqz v2, :cond_8

    #@52
    .line 173
    const/4 v0, 0x0

    #@53
    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@55
    if-ge v0, v2, :cond_9

    #@57
    .line 174
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@59
    aget-byte v2, v2, v0

    #@5b
    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@5d
    aget-byte v3, v3, v0

    #@5f
    if-eq v2, v3, :cond_7

    #@61
    .line 175
    return v4

    #@62
    .line 173
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_1

    #@65
    .line 178
    .end local v0    # "i":I
    :cond_8
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@67
    if-eqz v2, :cond_9

    #@69
    .line 179
    return v4

    #@6a
    .line 182
    :cond_9
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@6c
    if-eqz v2, :cond_b

    #@6e
    iget-object v2, v1, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@70
    if-eqz v2, :cond_b

    #@72
    .line 183
    const/4 v0, 0x0

    #@73
    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@75
    if-ge v0, v2, :cond_c

    #@77
    .line 184
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@79
    aget-byte v2, v2, v0

    #@7b
    iget-object v3, v1, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@7d
    aget-byte v3, v3, v0

    #@7f
    if-eq v2, v3, :cond_a

    #@81
    .line 185
    return v4

    #@82
    .line 183
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@84
    goto :goto_2

    #@85
    .line 188
    .end local v0    # "i":I
    :cond_b
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@87
    if-eqz v2, :cond_c

    #@89
    .line 189
    return v4

    #@8a
    .line 192
    :cond_c
    return v5
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 199
    iget-object v1, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 200
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 201
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@12
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@15
    move-result v2

    #@16
    add-int v0, v1, v2

    #@18
    .line 202
    mul-int/lit8 v1, v0, 0x1f

    #@1a
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@1c
    add-int v0, v1, v2

    #@1e
    .line 203
    mul-int/lit8 v1, v0, 0x1f

    #@20
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@22
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@25
    move-result v2

    #@26
    add-int v0, v1, v2

    #@28
    .line 204
    mul-int/lit8 v1, v0, 0x1f

    #@2a
    iget v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@2c
    add-int v0, v1, v2

    #@2e
    .line 205
    mul-int/lit8 v1, v0, 0x1f

    #@30
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@32
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@35
    move-result v2

    #@36
    add-int v0, v1, v2

    #@38
    .line 207
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "PublishData [mServiceName=\'"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "\', mServiceSpecificInfo=\'"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 82
    new-instance v1, Ljava/lang/String;

    #@1d
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@1f
    iget v3, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@21
    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    #@24
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 83
    const-string/jumbo v1, "\', mTxFilter="

    #@2b
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 84
    new-instance v1, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@31
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@33
    iget v3, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@35
    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;-><init>(II[BI)V

    #@38
    invoke-virtual {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 85
    const-string/jumbo v1, ", mRxFilter="

    #@43
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 86
    new-instance v1, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;

    #@49
    iget-object v2, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@4b
    iget v3, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@4d
    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;-><init>(II[BI)V

    #@50
    invoke-virtual {v1}, Landroid/net/wifi/nan/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    .line 87
    const-string/jumbo v1, "\']"

    #@5b
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 98
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceName:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 99
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 100
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 101
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfo:[B

    #@11
    iget v1, p0, Landroid/net/wifi/nan/PublishData;->mServiceSpecificInfoLength:I

    #@13
    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    #@16
    .line 103
    :cond_0
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 104
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 105
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mTxFilter:[B

    #@21
    iget v1, p0, Landroid/net/wifi/nan/PublishData;->mTxFilterLength:I

    #@23
    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    #@26
    .line 107
    :cond_1
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 108
    iget v0, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 109
    iget-object v0, p0, Landroid/net/wifi/nan/PublishData;->mRxFilter:[B

    #@31
    iget v1, p0, Landroid/net/wifi/nan/PublishData;->mRxFilterLength:I

    #@33
    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    #@36
    .line 97
    :cond_2
    return-void
.end method

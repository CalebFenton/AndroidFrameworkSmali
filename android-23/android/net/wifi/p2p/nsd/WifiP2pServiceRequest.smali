.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mProtocolType:I

.field private mQuery:Ljava/lang/String;

.field private mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 266
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;-><init>()V

    #@5
    .line 265
    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 40
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "length"    # I
    .param p3, "transId"    # I
    .param p4, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 97
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@5
    .line 98
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@7
    .line 99
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    #@9
    .line 100
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@b
    .line 96
    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p1, "serviceType"    # I
    .param p2, "length"    # I
    .param p3, "transId"    # I
    .param p4, "query"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;)V

    #@3
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "protocolType"    # I
    .param p2, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->validateQuery(Ljava/lang/String;)V

    #@6
    .line 78
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@8
    .line 79
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@a
    .line 80
    if-eqz p2, :cond_0

    #@c
    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    div-int/lit8 v0, v0, 0x2

    #@12
    add-int/lit8 v0, v0, 0x2

    #@14
    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@16
    .line 75
    :goto_0
    return-void

    #@17
    .line 83
    :cond_0
    const/4 v0, 0x2

    #@18
    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@1a
    goto :goto_0
.end method

.method public static newInstance(I)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 2
    .param p0, "protocolType"    # I

    #@0
    .prologue
    .line 211
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@6
    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 1
    .param p0, "protocolType"    # I
    .param p1, "queryData"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    #@5
    return-object v0
.end method

.method private validateQuery(Ljava/lang/String;)V
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 157
    if-nez p1, :cond_0

    #@2
    .line 158
    return-void

    #@3
    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    rem-int/lit8 v2, v2, 0x2

    #@9
    const/4 v3, 0x1

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "query size is invalid. query="

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 163
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@29
    move-result v2

    #@2a
    div-int/lit8 v2, v2, 0x2

    #@2c
    .line 161
    const v3, 0xffff

    #@2f
    .line 166
    if-le v2, v3, :cond_2

    #@31
    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@33
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v4, "query size is too large. len="

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@42
    move-result v4

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 167
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2

    #@4f
    .line 172
    :cond_2
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@51
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@54
    move-result-object p1

    #@55
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@58
    move-result-object v1

    #@59
    .line 174
    .local v1, "chars":[C
    const/4 v2, 0x0

    #@5a
    array-length v3, v1

    #@5b
    :goto_0
    if-ge v2, v3, :cond_6

    #@5d
    aget-char v0, v1, v2

    #@5f
    .line 175
    .local v0, "c":C
    const/16 v4, 0x30

    #@61
    if-lt v0, v4, :cond_3

    #@63
    const/16 v4, 0x39

    #@65
    if-le v0, v4, :cond_5

    #@67
    .line 176
    :cond_3
    const/16 v4, 0x61

    #@69
    if-lt v0, v4, :cond_4

    #@6b
    const/16 v4, 0x66

    #@6d
    if-le v0, v4, :cond_5

    #@6f
    .line 177
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@71
    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v4, "query should be hex string. query="

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    .line 177
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v2

    #@89
    .line 174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@8b
    goto :goto_0

    #@8c
    .line 156
    .end local v0    # "c":C
    :cond_6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 253
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 216
    if-ne p1, p0, :cond_0

    #@4
    .line 217
    return v4

    #@5
    .line 219
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 220
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 223
    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    #@d
    .line 229
    .local v0, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    iget v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@f
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@11
    if-ne v1, v2, :cond_2

    #@13
    .line 230
    iget v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@15
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@17
    if-eq v1, v2, :cond_3

    #@19
    .line 231
    :cond_2
    return v3

    #@1a
    .line 234
    :cond_3
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@1c
    if-nez v1, :cond_4

    #@1e
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@20
    if-nez v1, :cond_4

    #@22
    .line 235
    return v4

    #@23
    .line 236
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_5

    #@27
    .line 237
    iget-object v1, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@29
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 239
    :cond_5
    return v3
.end method

.method public getSupplicantQuery()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 139
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@9
    const-string/jumbo v2, "%02x"

    #@c
    new-array v3, v6, [Ljava/lang/Object;

    #@e
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@10
    and-int/lit16 v4, v4, 0xff

    #@12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v4

    #@16
    aput-object v4, v3, v5

    #@18
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1f
    .line 140
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@21
    const-string/jumbo v2, "%02x"

    #@24
    new-array v3, v6, [Ljava/lang/Object;

    #@26
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@28
    shr-int/lit8 v4, v4, 0x8

    #@2a
    and-int/lit16 v4, v4, 0xff

    #@2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v4

    #@30
    aput-object v4, v3, v5

    #@32
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 141
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3b
    const-string/jumbo v2, "%02x"

    #@3e
    new-array v3, v6, [Ljava/lang/Object;

    #@40
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v4

    #@46
    aput-object v4, v3, v5

    #@48
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    .line 142
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@51
    const-string/jumbo v2, "%02x"

    #@54
    new-array v3, v6, [Ljava/lang/Object;

    #@56
    iget v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    #@58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v4

    #@5c
    aput-object v4, v3, v5

    #@5e
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@65
    .line 143
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@67
    if-eqz v1, :cond_0

    #@69
    .line 144
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6e
    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    return-object v1
.end method

.method public getTransactionId()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 245
    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 246
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 247
    mul-int/lit8 v2, v0, 0x1f

    #@c
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@e
    if-nez v1, :cond_0

    #@10
    const/4 v1, 0x0

    #@11
    :goto_0
    add-int v0, v2, v1

    #@13
    .line 248
    return v0

    #@14
    .line 247
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@19
    move-result v1

    #@1a
    goto :goto_0
.end method

.method public setTransactionId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    #@2
    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 258
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 259
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 260
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 261
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 257
    return-void
.end method

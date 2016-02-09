.class public Landroid/net/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/DnsSdTxtRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeperator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method static synthetic -get0(Landroid/net/nsd/DnsSdTxtRecord;)[B
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 314
    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord$1;

    #@2
    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord$1;-><init>()V

    #@5
    .line 313
    sput-object v0, Landroid/net/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [B

    #@6
    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@8
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/DnsSdTxtRecord;)V
    .locals 1
    .param p1, "src"    # Landroid/net/nsd/DnsSdTxtRecord;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    if-eqz p1, :cond_0

    #@5
    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 60
    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, [B

    #@11
    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@13
    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [B

    #@9
    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@b
    .line 53
    return-void
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    #@0
    .prologue
    .line 195
    const/4 v2, 0x0

    #@1
    .line 197
    .local v2, "avStart":I
    const/4 v3, 0x0

    #@2
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    #@4
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@6
    array-length v4, v4

    #@7
    if-ge v2, v4, :cond_0

    #@9
    .line 198
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@b
    aget-byte v4, v4, v2

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    add-int/2addr v2, v4

    #@10
    .line 197
    add-int/lit8 v3, v3, 0x1

    #@12
    goto :goto_0

    #@13
    .line 201
    :cond_0
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@15
    array-length v4, v4

    #@16
    if-ge v2, v4, :cond_3

    #@18
    .line 202
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@1a
    aget-byte v1, v4, v2

    #@1c
    .line 203
    .local v1, "avLen":I
    const/4 v0, 0x0

    #@1d
    .line 205
    .local v0, "aLen":I
    const/4 v0, 0x0

    #@1e
    :goto_1
    if-ge v0, v1, :cond_1

    #@20
    .line 206
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@22
    add-int v5, v2, v0

    #@24
    add-int/lit8 v5, v5, 0x1

    #@26
    aget-byte v4, v4, v5

    #@28
    const/16 v5, 0x3d

    #@2a
    if-ne v4, v5, :cond_2

    #@2c
    .line 208
    :cond_1
    new-instance v4, Ljava/lang/String;

    #@2e
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@30
    add-int/lit8 v6, v2, 0x1

    #@32
    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([BII)V

    #@35
    return-object v4

    #@36
    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_1

    #@39
    .line 210
    .end local v0    # "aLen":I
    .end local v1    # "avLen":I
    :cond_3
    const/4 v4, 0x0

    #@3a
    return-object v4
.end method

.method private getValue(I)[B
    .locals 9
    .param p1, "index"    # I

    #@0
    .prologue
    .line 219
    const/4 v2, 0x0

    #@1
    .line 220
    .local v2, "avStart":I
    const/4 v4, 0x0

    #@2
    .line 222
    .local v4, "value":[B
    const/4 v3, 0x0

    #@3
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    #@5
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@7
    array-length v5, v5

    #@8
    if-ge v2, v5, :cond_0

    #@a
    .line 223
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@c
    aget-byte v5, v5, v2

    #@e
    add-int/lit8 v5, v5, 0x1

    #@10
    add-int/2addr v2, v5

    #@11
    .line 222
    add-int/lit8 v3, v3, 0x1

    #@13
    goto :goto_0

    #@14
    .line 226
    :cond_0
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@16
    array-length v5, v5

    #@17
    if-ge v2, v5, :cond_1

    #@19
    .line 227
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@1b
    aget-byte v1, v5, v2

    #@1d
    .line 228
    .local v1, "avLen":I
    const/4 v0, 0x0

    #@1e
    .line 230
    .local v0, "aLen":I
    const/4 v0, 0x0

    #@1f
    :goto_1
    if-ge v0, v1, :cond_1

    #@21
    .line 231
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@23
    add-int v6, v2, v0

    #@25
    add-int/lit8 v6, v6, 0x1

    #@27
    aget-byte v5, v5, v6

    #@29
    const/16 v6, 0x3d

    #@2b
    if-ne v5, v6, :cond_2

    #@2d
    .line 232
    sub-int v5, v1, v0

    #@2f
    add-int/lit8 v5, v5, -0x1

    #@31
    new-array v4, v5, [B

    #@33
    .line 233
    .local v4, "value":[B
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@35
    add-int v6, v2, v0

    #@37
    add-int/lit8 v6, v6, 0x2

    #@39
    sub-int v7, v1, v0

    #@3b
    add-int/lit8 v7, v7, -0x1

    #@3d
    const/4 v8, 0x0

    #@3e
    invoke-static {v5, v6, v4, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@41
    .line 238
    .end local v0    # "aLen":I
    .end local v1    # "avLen":I
    .end local v4    # "value":[B
    :cond_1
    return-object v4

    #@42
    .line 230
    .restart local v0    # "aLen":I
    .restart local v1    # "avLen":I
    .local v4, "value":[B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_1
.end method

.method private getValue(Ljava/lang/String;)[B
    .locals 4
    .param p1, "forKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 247
    const/4 v1, 0x0

    #@2
    .line 250
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .end local v1    # "s":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@9
    .line 251
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 252
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 256
    :cond_1
    return-object v3
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 242
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    #@4
    move-result-object v0

    #@5
    .line 243
    .local v0, "value":[B
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Ljava/lang/String;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    #@c
    :cond_0
    return-object v1
.end method

.method private insert([B[BI)V
    .locals 11
    .param p1, "keyBytes"    # [B
    .param p2, "value"    # [B
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 169
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@3
    .line 170
    .local v4, "oldBytes":[B
    if-eqz p2, :cond_0

    #@5
    array-length v6, p2

    #@6
    .line 171
    .local v6, "valLen":I
    :goto_0
    const/4 v2, 0x0

    #@7
    .line 174
    .local v2, "insertion":I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_1

    #@a
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@c
    array-length v7, v7

    #@d
    if-ge v2, v7, :cond_1

    #@f
    .line 175
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@11
    aget-byte v7, v7, v2

    #@13
    add-int/lit8 v7, v7, 0x1

    #@15
    and-int/lit16 v7, v7, 0xff

    #@17
    add-int/2addr v2, v7

    #@18
    .line 174
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 170
    .end local v1    # "i":I
    .end local v2    # "insertion":I
    .end local v6    # "valLen":I
    :cond_0
    const/4 v6, 0x0

    #@1c
    .restart local v6    # "valLen":I
    goto :goto_0

    #@1d
    .line 178
    .restart local v1    # "i":I
    .restart local v2    # "insertion":I
    :cond_1
    array-length v7, p1

    #@1e
    add-int v9, v7, v6

    #@20
    if-eqz p2, :cond_3

    #@22
    const/4 v7, 0x1

    #@23
    :goto_2
    add-int v0, v9, v7

    #@25
    .line 179
    .local v0, "avLen":I
    array-length v7, v4

    #@26
    add-int/2addr v7, v0

    #@27
    add-int/lit8 v3, v7, 0x1

    #@29
    .line 181
    .local v3, "newLen":I
    new-array v7, v3, [B

    #@2b
    iput-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2d
    .line 182
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2f
    invoke-static {v4, v8, v7, v8, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@32
    .line 183
    array-length v7, v4

    #@33
    sub-int v5, v7, v2

    #@35
    .line 184
    .local v5, "secondHalfLen":I
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@37
    sub-int v9, v3, v5

    #@39
    invoke-static {v4, v2, v7, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 185
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@3e
    int-to-byte v9, v0

    #@3f
    aput-byte v9, v7, v2

    #@41
    .line 186
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@43
    add-int/lit8 v9, v2, 0x1

    #@45
    array-length v10, p1

    #@46
    invoke-static {p1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 187
    if-eqz p2, :cond_2

    #@4b
    .line 188
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@4d
    add-int/lit8 v9, v2, 0x1

    #@4f
    array-length v10, p1

    #@50
    add-int/2addr v9, v10

    #@51
    const/16 v10, 0x3d

    #@53
    aput-byte v10, v7, v9

    #@55
    .line 189
    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@57
    array-length v9, p1

    #@58
    add-int/2addr v9, v2

    #@59
    add-int/lit8 v9, v9, 0x2

    #@5b
    invoke-static {p2, v8, v7, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5e
    .line 168
    :cond_2
    return-void

    #@5f
    .end local v0    # "avLen":I
    .end local v3    # "newLen":I
    .end local v5    # "secondHalfLen":I
    :cond_3
    move v7, v8

    #@60
    .line 178
    goto :goto_2
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    const/4 v1, 0x0

    #@2
    .line 152
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    #@3
    .end local v1    # "s":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@9
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 155
    :cond_1
    return v3
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 304
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 286
    if-ne p1, p0, :cond_0

    #@2
    .line 287
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 289
    :cond_0
    instance-of v1, p1, Landroid/net/nsd/DnsSdTxtRecord;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 290
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 293
    check-cast v0, Landroid/net/nsd/DnsSdTxtRecord;

    #@d
    .line 294
    .local v0, "record":Landroid/net/nsd/DnsSdTxtRecord;
    iget-object v1, v0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@f
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@11
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 113
    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    #@4
    move-result-object v0

    #@5
    .line 114
    .local v0, "val":[B
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Ljava/lang/String;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    #@c
    :cond_0
    return-object v1
.end method

.method public getRawData()[B
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keyCount()I
    .locals 3

    #@0
    .prologue
    .line 142
    const/4 v0, 0x0

    #@1
    .line 143
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "nextKey":I
    :goto_0
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 144
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@9
    aget-byte v2, v2, v1

    #@b
    add-int/lit8 v2, v2, 0x1

    #@d
    and-int/lit16 v2, v2, 0xff

    #@f
    add-int/2addr v1, v2

    #@10
    .line 143
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 146
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/String;)I
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 119
    const/4 v1, 0x0

    #@2
    .line 121
    .local v1, "avStart":I
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@5
    array-length v5, v5

    #@6
    if-ge v1, v5, :cond_2

    #@8
    .line 122
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@a
    aget-byte v0, v5, v1

    #@c
    .line 123
    .local v0, "avLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v5

    #@10
    if-gt v5, v0, :cond_1

    #@12
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@15
    move-result v5

    #@16
    if-eq v5, v0, :cond_0

    #@18
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v6

    #@1e
    add-int/2addr v6, v1

    #@1f
    add-int/lit8 v6, v6, 0x1

    #@21
    aget-byte v5, v5, v6

    #@23
    const/16 v6, 0x3d

    #@25
    if-ne v5, v6, :cond_1

    #@27
    .line 125
    :cond_0
    new-instance v4, Ljava/lang/String;

    #@29
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2b
    add-int/lit8 v6, v1, 0x1

    #@2d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@30
    move-result v7

    #@31
    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    #@34
    .line 126
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@37
    move-result v5

    #@38
    if-nez v5, :cond_1

    #@3a
    .line 127
    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@3c
    .line 128
    .local v3, "oldBytes":[B
    array-length v5, v3

    #@3d
    sub-int/2addr v5, v0

    #@3e
    add-int/lit8 v5, v5, -0x1

    #@40
    new-array v5, v5, [B

    #@42
    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@44
    .line 129
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@46
    invoke-static {v3, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@49
    .line 130
    add-int v5, v1, v0

    #@4b
    add-int/lit8 v5, v5, 0x1

    #@4d
    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@4f
    .line 131
    array-length v7, v3

    #@50
    sub-int/2addr v7, v1

    #@51
    sub-int/2addr v7, v0

    #@52
    add-int/lit8 v7, v7, -0x1

    #@54
    .line 130
    invoke-static {v3, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@57
    .line 132
    return v2

    #@58
    .line 135
    .end local v3    # "oldBytes":[B
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v0, 0x1

    #@5a
    and-int/lit16 v5, v5, 0xff

    #@5c
    add-int/2addr v1, v5

    #@5d
    .line 121
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 137
    .end local v0    # "avLen":I
    :cond_2
    const/4 v5, -0x1

    #@61
    return v5
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    if-eqz p2, :cond_0

    #@2
    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    #@5
    move-result-object v4

    #@6
    .line 76
    .local v4, "valBytes":[B
    array-length v5, v4

    #@7
    .line 83
    .end local v4    # "valBytes":[B
    .local v5, "valLen":I
    :goto_0
    :try_start_0
    const-string/jumbo v6, "US-ASCII"

    #@a
    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v3

    #@e
    .line 89
    .local v3, "keyBytes":[B
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_1
    array-length v6, v3

    #@10
    if-ge v2, v6, :cond_2

    #@12
    .line 90
    aget-byte v6, v3, v2

    #@14
    const/16 v7, 0x3d

    #@16
    if-ne v6, v7, :cond_1

    #@18
    .line 91
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v7, "= is not a valid character in key"

    #@1d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6

    #@21
    .line 78
    .end local v2    # "i":I
    .end local v3    # "keyBytes":[B
    .end local v5    # "valLen":I
    :cond_0
    const/4 v4, 0x0

    #@22
    .line 79
    .local v4, "valBytes":[B
    const/4 v5, 0x0

    #@23
    .restart local v5    # "valLen":I
    goto :goto_0

    #@24
    .line 85
    .end local v4    # "valBytes":[B
    :catch_0
    move-exception v1

    #@25
    .line 86
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v7, "key should be US-ASCII"

    #@2a
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v6

    #@2e
    .line 89
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i":I
    .restart local v3    # "keyBytes":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_1

    #@31
    .line 95
    :cond_2
    array-length v6, v3

    #@32
    add-int/2addr v6, v5

    #@33
    const/16 v7, 0xff

    #@35
    if-lt v6, v7, :cond_3

    #@37
    .line 96
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v7, "Key and Value length cannot exceed 255 bytes"

    #@3c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6

    #@40
    .line 99
    :cond_3
    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    #@43
    move-result v0

    #@44
    .line 100
    .local v0, "currentLoc":I
    const/4 v6, -0x1

    #@45
    if-ne v0, v6, :cond_4

    #@47
    .line 101
    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    #@4a
    move-result v0

    #@4b
    .line 103
    :cond_4
    invoke-direct {p0, v3, v4, v0}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    #@4e
    .line 69
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 267
    const/4 v3, 0x0

    #@1
    .line 269
    .local v3, "result":Ljava/lang/String;
    const/4 v2, 0x0

    #@2
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    invoke-direct {p0, v2}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@8
    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "{"

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 271
    .local v1, "av":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    .line 272
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@22
    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    const-string/jumbo v6, "="

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    const-string/jumbo v6, "}"

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 276
    :goto_1
    if-nez v3, :cond_1

    #@43
    .line 277
    move-object v3, v1

    #@44
    .line 269
    .local v3, "result":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_0

    #@47
    .line 275
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    const-string/jumbo v6, "}"

    #@53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    goto :goto_1

    #@5c
    .line 279
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    const-string/jumbo v6, ", "

    #@68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_2

    #@75
    .line 281
    .end local v1    # "av":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    #@77
    :goto_3
    return-object v3

    #@78
    :cond_3
    const-string/jumbo v3, ""

    #@7b
    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@5
    .line 308
    return-void
.end method

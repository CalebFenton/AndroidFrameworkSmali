.class Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;
.super Ljava/lang/Object;
.source "SupplicantBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/SupplicantBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharIterator"
.end annotation


# instance fields
.field private mHex:I

.field private mPosition:I

.field private final mString:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasDoubleHex()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)C
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->next()C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->nextDoubleHex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 407
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    #@5
    .line 406
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private hasDoubleHex()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 419
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    #@4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    iget v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@a
    sub-int/2addr v2, v3

    #@b
    const/4 v3, 0x2

    #@c
    if-ge v2, v3, :cond_0

    #@e
    .line 420
    return v4

    #@f
    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    #@11
    iget v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v2

    #@17
    invoke-static {v2, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    #@1a
    move-result v0

    #@1b
    .line 423
    .local v0, "nh":I
    if-gez v0, :cond_1

    #@1d
    .line 424
    return v4

    #@1e
    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    #@20
    iget v3, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@22
    add-int/lit8 v3, v3, 0x1

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v2

    #@28
    invoke-static {v2, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    #@2b
    move-result v1

    #@2c
    .line 427
    .local v1, "nl":I
    if-gez v1, :cond_2

    #@2e
    .line 428
    return v4

    #@2f
    .line 430
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@31
    add-int/lit8 v2, v2, 0x2

    #@33
    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@35
    .line 431
    shl-int/lit8 v2, v0, 0x4

    #@37
    or-int/2addr v2, v1

    #@38
    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mHex:I

    #@3a
    .line 432
    return v5
.end method

.method private hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 411
    iget v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private next()C
    .locals 3

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mString:Ljava/lang/String;

    #@2
    iget v1, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mPosition:I

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private nextDoubleHex()I
    .locals 1

    #@0
    .prologue
    .line 436
    iget v0, p0, Lcom/android/server/wifi/hotspot2/SupplicantBridge$CharIterator;->mHex:I

    #@2
    return v0
.end method

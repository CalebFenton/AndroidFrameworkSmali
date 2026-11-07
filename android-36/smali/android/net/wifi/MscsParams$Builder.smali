.class public final Landroid/net/wifi/MscsParams$Builder;
.super Ljava/lang/Object;
.source "MscsParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MscsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFrameClassifierFields:I

.field private blacklist mStreamTimeoutUs:I

.field private blacklist mUserPriorityBitmap:I

.field private blacklist mUserPriorityLimit:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/16 v0, 0x5f

    iput v0, p0, Landroid/net/wifi/MscsParams$Builder;->mFrameClassifierFields:I

    .line 220
    const/16 v0, 0xc0

    iput v0, p0, Landroid/net/wifi/MscsParams$Builder;->mUserPriorityBitmap:I

    .line 221
    const/4 v0, 0x7

    iput v0, p0, Landroid/net/wifi/MscsParams$Builder;->mUserPriorityLimit:I

    .line 222
    const v0, 0x3938700

    iput v0, p0, Landroid/net/wifi/MscsParams$Builder;->mStreamTimeoutUs:I

    .line 228
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/MscsParams;
    .registers 7

    .line 308
    new-instance v0, Landroid/net/wifi/MscsParams;

    iget v1, p0, Landroid/net/wifi/MscsParams$Builder;->mFrameClassifierFields:I

    iget v2, p0, Landroid/net/wifi/MscsParams$Builder;->mUserPriorityBitmap:I

    iget v3, p0, Landroid/net/wifi/MscsParams$Builder;->mUserPriorityLimit:I

    iget v4, p0, Landroid/net/wifi/MscsParams$Builder;->mStreamTimeoutUs:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/MscsParams;-><init>(IIIILandroid/net/wifi/MscsParams-IA;)V

    return-object v0
.end method

.method public whitelist setFrameClassifierFields(I)Landroid/net/wifi/MscsParams$Builder;
    .registers 4
    .param p1, "frameClassifierFields"    # I

    .line 240
    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_7

    .line 243
    iput p1, p0, Landroid/net/wifi/MscsParams$Builder;->mFrameClassifierFields:I

    .line 244
    return-object p0

    .line 241
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "frameClassifierFields can only use bits 0-7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStreamTimeoutUs(I)Landroid/net/wifi/MscsParams$Builder;
    .registers 4
    .param p1, "streamTimeoutUs"    # I

    .line 295
    if-ltz p1, :cond_a

    const v0, 0x3938700

    if-gt p1, v0, :cond_a

    .line 298
    iput p1, p0, Landroid/net/wifi/MscsParams$Builder;->mStreamTimeoutUs:I

    .line 299
    return-object p0

    .line 296
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "streamTimeoutUs must be 60 seconds or less"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserPriorityBitmap(I)Landroid/net/wifi/MscsParams$Builder;
    .registers 4
    .param p1, "userPriorityBitmap"    # I

    .line 258
    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_7

    .line 261
    iput p1, p0, Landroid/net/wifi/MscsParams$Builder;->mUserPriorityBitmap:I

    .line 262
    return-object p0

    .line 259
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userPriorityBitmap can only use bits 0-7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserPriorityLimit(I)Landroid/net/wifi/MscsParams$Builder;
    .registers 4
    .param p1, "userPriorityLimit"    # I

    .line 276
    if-ltz p1, :cond_8

    const/4 v0, 0x7

    if-gt p1, v0, :cond_8

    .line 280
    iput p1, p0, Landroid/net/wifi/MscsParams$Builder;->mUserPriorityLimit:I

    .line 281
    return-object p0

    .line 277
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userPriorityLimit must be between 0-7 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

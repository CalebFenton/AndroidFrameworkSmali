.class public final Ljavax/obex/ApplicationParameter;
.super Ljava/lang/Object;
.source "ApplicationParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/obex/ApplicationParameter$TRIPLET_TAGID;,
        Ljavax/obex/ApplicationParameter$TRIPLET_VALUE;,
        Ljavax/obex/ApplicationParameter$TRIPLET_LENGTH;
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mLength:I

.field private mMaxLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/16 v0, 0x3e8

    #@5
    iput v0, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    #@7
    .line 112
    iget v0, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    #@9
    new-array v0, v0, [B

    #@b
    iput-object v0, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@d
    .line 113
    const/4 v0, 0x0

    #@e
    iput v0, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@10
    .line 111
    return-void
.end method


# virtual methods
.method public addAPPHeader(BB[B)V
    .locals 5
    .param p1, "tag"    # B
    .param p2, "len"    # B
    .param p3, "value"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 117
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@3
    add-int/2addr v1, p2

    #@4
    add-int/lit8 v1, v1, 0x2

    #@6
    iget v2, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    #@8
    if-le v1, v2, :cond_0

    #@a
    .line 118
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@c
    mul-int/lit8 v2, p2, 0x4

    #@e
    add-int/2addr v1, v2

    #@f
    new-array v0, v1, [B

    #@11
    .line 119
    .local v0, "array_tmp":[B
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@13
    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@15
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18
    .line 120
    iput-object v0, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@1a
    .line 121
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@1c
    mul-int/lit8 v2, p2, 0x4

    #@1e
    add-int/2addr v1, v2

    #@1f
    iput v1, p0, Ljavax/obex/ApplicationParameter;->mMaxLength:I

    #@21
    .line 123
    .end local v0    # "array_tmp":[B
    :cond_0
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@23
    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@25
    add-int/lit8 v3, v2, 0x1

    #@27
    iput v3, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@29
    aput-byte p1, v1, v2

    #@2b
    .line 124
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@2d
    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@2f
    add-int/lit8 v3, v2, 0x1

    #@31
    iput v3, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@33
    aput-byte p2, v1, v2

    #@35
    .line 125
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@37
    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@39
    invoke-static {p3, v4, v1, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3c
    .line 126
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@3e
    add-int/2addr v1, p2

    #@3f
    iput v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@41
    .line 116
    return-void
.end method

.method public getAPPparam()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 130
    iget v1, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@3
    new-array v0, v1, [B

    #@5
    .line 131
    .local v0, "para":[B
    iget-object v1, p0, Ljavax/obex/ApplicationParameter;->mArray:[B

    #@7
    iget v2, p0, Ljavax/obex/ApplicationParameter;->mLength:I

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@c
    .line 132
    return-object v0
.end method

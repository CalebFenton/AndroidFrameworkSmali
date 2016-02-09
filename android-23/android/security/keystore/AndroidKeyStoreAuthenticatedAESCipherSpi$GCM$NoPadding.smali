.class public final Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 225
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;-><init>(I)V

    #@4
    .line 224
    return-void
.end method


# virtual methods
.method protected final engineGetOutputSize(I)I
    .locals 8
    .param p1, "inputLen"    # I

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getTagLengthBits()I

    #@3
    move-result v3

    #@4
    add-int/lit8 v3, v3, 0x7

    #@6
    div-int/lit8 v2, v3, 0x8

    #@8
    .line 232
    .local v2, "tagLengthBytes":I
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->isEncrypting()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 233
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    #@11
    move-result-wide v4

    #@12
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    #@15
    move-result-wide v6

    #@16
    sub-long/2addr v4, v6

    #@17
    int-to-long v6, p1

    #@18
    add-long/2addr v4, v6

    #@19
    .line 234
    int-to-long v6, v2

    #@1a
    .line 233
    add-long v0, v4, v6

    #@1c
    .line 239
    .local v0, "result":J
    :goto_0
    const-wide/16 v4, 0x0

    #@1e
    cmp-long v3, v0, v4

    #@20
    if-gez v3, :cond_1

    #@22
    .line 240
    const/4 v3, 0x0

    #@23
    return v3

    #@24
    .line 236
    .end local v0    # "result":J
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getConsumedInputSizeBytes()J

    #@27
    move-result-wide v4

    #@28
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;->getProducedOutputSizeBytes()J

    #@2b
    move-result-wide v6

    #@2c
    sub-long/2addr v4, v6

    #@2d
    int-to-long v6, p1

    #@2e
    add-long/2addr v4, v6

    #@2f
    .line 237
    int-to-long v6, v2

    #@30
    .line 236
    sub-long v0, v4, v6

    #@32
    .restart local v0    # "result":J
    goto :goto_0

    #@33
    .line 241
    :cond_1
    const-wide/32 v4, 0x7fffffff

    #@36
    cmp-long v3, v0, v4

    #@38
    if-lez v3, :cond_2

    #@3a
    .line 242
    const v3, 0x7fffffff

    #@3d
    return v3

    #@3e
    .line 244
    :cond_2
    long-to-int v3, v0

    #@3f
    return v3
.end method

.method public bridge synthetic finalize()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->finalize()V

    #@3
    return-void
.end method

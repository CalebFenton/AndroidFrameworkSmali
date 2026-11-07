.class Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IkePayloadDecoder;
.super Ljava/lang/Object;
.source "IkePayloadFactory.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkePayloadDecoder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decodeIkePayload(IZZ[B)Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .registers 7
    .param p1, "payloadType"    # I
    .param p2, "isCritical"    # Z
    .param p3, "isResp"    # Z
    .param p4, "payloadBody"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_64

    .line 94
    :pswitch_5
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;-><init>(IZ)V

    return-object v0

    .line 92
    :pswitch_b
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeEapPayload;-><init>(Z[B)V

    return-object v0

    .line 90
    :pswitch_11
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;-><init>(Z[B)V

    return-object v0

    .line 88
    :pswitch_17
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    invoke-direct {v1, p2, p4, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;-><init>(Z[BZ)V

    return-object v1

    .line 86
    :pswitch_1d
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;

    invoke-direct {v0, p2, p4, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeTsPayload;-><init>(Z[BZ)V

    return-object v0

    .line 84
    :pswitch_23
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeVendorPayload;-><init>(Z[B)V

    return-object v0

    .line 82
    :pswitch_29
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;-><init>(Z[B)V

    return-object v0

    .line 80
    :pswitch_2f
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;-><init>(Z[B)V

    return-object v0

    .line 78
    :pswitch_35
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeNoncePayload;-><init>(Z[B)V

    return-object v0

    .line 76
    :pswitch_3b
    invoke-static {p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;->getIkeAuthPayload(Z[B)Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_40
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeCertReqPayload;-><init>(Z[B)V

    return-object v0

    .line 72
    :pswitch_46
    invoke-static {p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;->getIkeCertPayload(Z[B)Lcom/android/internal/net/ipsec/ike/message/IkeCertPayload;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_4b
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-direct {v1, p2, p4, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;-><init>(Z[BZ)V

    return-object v1

    .line 68
    :pswitch_51
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    invoke-direct {v0, p2, p4, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;-><init>(Z[BZ)V

    return-object v0

    .line 66
    :pswitch_57
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeKePayload;-><init>(Z[B)V

    return-object v0

    .line 64
    :pswitch_5d
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;-><init>(ZZ[B)V

    return-object v0

    nop

    :pswitch_data_64
    .packed-switch 0x21
        :pswitch_5d
        :pswitch_57
        :pswitch_51
        :pswitch_4b
        :pswitch_46
        :pswitch_40
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_5
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public blacklist decodeIkeSkPayload(ZZ[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    .registers 16
    .param p1, "isSkf"    # Z
    .param p2, "critical"    # Z
    .param p3, "message"    # [B
    .param p4, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p5, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p6, "integrityKey"    # [B
    .param p7, "decryptionKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    if-eqz p1, :cond_e

    .line 109
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p2    # "critical":Z
    .end local p3    # "message":[B
    .end local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p6    # "integrityKey":[B
    .end local p7    # "decryptionKey":[B
    .local v1, "critical":Z
    .local v2, "message":[B
    .local v3, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v4, "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v5, "integrityKey":[B
    .local v6, "decryptionKey":[B
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeSkfPayload;-><init>(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    return-object v0

    .line 117
    .end local v1    # "critical":Z
    .end local v2    # "message":[B
    .end local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local v5    # "integrityKey":[B
    .end local v6    # "decryptionKey":[B
    .restart local p2    # "critical":Z
    .restart local p3    # "message":[B
    .restart local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local p6    # "integrityKey":[B
    .restart local p7    # "decryptionKey":[B
    :cond_e
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .end local p2    # "critical":Z
    .end local p3    # "message":[B
    .end local p4    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p5    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p6    # "integrityKey":[B
    .end local p7    # "decryptionKey":[B
    .restart local v1    # "critical":Z
    .restart local v2    # "message":[B
    .restart local v3    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .restart local v4    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .restart local v5    # "integrityKey":[B
    .restart local v6    # "decryptionKey":[B
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    .end local v1    # "critical":Z
    .local v2, "critical":Z
    .local v3, "message":[B
    .local v4, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v5, "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v6, "integrityKey":[B
    .local v7, "decryptionKey":[B
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;-><init>(Z[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)V

    move-object p2, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v7    # "decryptionKey":[B
    .restart local v1    # "critical":Z
    .local v2, "message":[B
    .local v3, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v4, "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v5, "integrityKey":[B
    .local v6, "decryptionKey":[B
    return-object p2
.end method

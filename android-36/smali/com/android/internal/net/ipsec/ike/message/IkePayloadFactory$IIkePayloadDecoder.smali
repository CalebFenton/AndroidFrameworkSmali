.class interface abstract Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory$IIkePayloadDecoder;
.super Ljava/lang/Object;
.source "IkePayloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IIkePayloadDecoder"
.end annotation


# virtual methods
.method public abstract blacklist decodeIkePayload(IZZ[B)Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation
.end method

.method public abstract blacklist decodeIkeSkPayload(ZZ[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;[B[B)Lcom/android/internal/net/ipsec/ike/message/IkeSkPayload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

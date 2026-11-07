.class public interface abstract Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;
.super Ljava/lang/Object;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IIkeMessageHelper"
.end annotation


# virtual methods
.method public abstract blacklist decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
.end method

.method public abstract blacklist decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
.end method

.method public abstract blacklist encode(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B
.end method

.method public abstract blacklist encryptAndEncode(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ZI)[[B
.end method

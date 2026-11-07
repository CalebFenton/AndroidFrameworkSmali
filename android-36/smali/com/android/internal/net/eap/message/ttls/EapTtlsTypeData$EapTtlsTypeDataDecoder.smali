.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;
.super Ljava/lang/Object;
.source "EapTtlsTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapTtlsTypeDataDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist decodeEapTtlsRequestPacket([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
    .registers 5
    .param p1, "eapTypeData"    # [B

    .line 218
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 219
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)V
    :try_end_e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 220
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_f
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;-><init>(Lcom/android/internal/net/eap/EapResult$EapError;)V

    return-object v1
.end method

.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
.super Ljava/lang/Object;
.source "EapTtlsTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResult"
.end annotation


# instance fields
.field public final blacklist eapError:Lcom/android/internal/net/eap/EapResult$EapError;

.field public final blacklist eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/EapResult$EapError;)V
    .registers 3
    .param p1, "eapError"    # Lcom/android/internal/net/eap/EapResult$EapError;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 240
    iput-object p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 241
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)V
    .registers 3
    .param p1, "eapTypeData"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 236
    return-void
.end method


# virtual methods
.method public blacklist isSuccessfulDecode()Z
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

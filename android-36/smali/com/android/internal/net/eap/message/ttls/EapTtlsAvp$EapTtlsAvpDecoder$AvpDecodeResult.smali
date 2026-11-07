.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;
.super Ljava/lang/Object;
.source "EapTtlsAvp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvpDecodeResult"
.end annotation


# instance fields
.field public final blacklist eapError:Lcom/android/internal/net/eap/EapResult$EapError;

.field public final blacklist eapTtlsAvp:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/EapResult$EapError;)V
    .registers 3
    .param p1, "eapError"    # Lcom/android/internal/net/eap/EapResult$EapError;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapTtlsAvp:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    .line 303
    iput-object p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 304
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;)V
    .registers 3
    .param p1, "eapTtlsAvp"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapTtlsAvp:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 299
    return-void
.end method


# virtual methods
.method public blacklist isSuccessfulDecode()Z
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapTtlsAvp:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

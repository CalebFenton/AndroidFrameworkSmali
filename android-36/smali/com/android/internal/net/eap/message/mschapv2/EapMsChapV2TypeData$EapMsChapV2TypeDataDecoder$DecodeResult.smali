.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;
.super Ljava/lang/Object;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist eapError:Lcom/android/internal/net/eap/EapResult$EapError;

.field public final blacklist eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/EapResult$EapError;)V
    .registers 3
    .param p1, "eapError"    # Lcom/android/internal/net/eap/EapResult$EapError;

    .line 585
    .local p0, "this":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    .line 587
    iput-object p1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 588
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 580
    .local p0, "this":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<TT;>;"
    .local p1, "eapTypeData":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 583
    return-void
.end method


# virtual methods
.method public blacklist isSuccessfulDecode()Z
    .registers 2

    .line 596
    .local p0, "this":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<TT;>;"
    iget-object v0, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

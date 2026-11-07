.class public Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;
.super Ljava/lang/Object;
.source "TlsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/crypto/TlsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EapTtlsKeyingMaterial"
.end annotation


# instance fields
.field public final blacklist eapError:Lcom/android/internal/net/eap/EapResult$EapError;

.field public final blacklist emsk:[B

.field public final blacklist msk:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/crypto/TlsSession;Lcom/android/internal/net/eap/EapResult$EapError;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/crypto/TlsSession;
    .param p2, "eapError"    # Lcom/android/internal/net/eap/EapResult$EapError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->msk:[B

    .line 515
    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->emsk:[B

    .line 516
    iput-object p2, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 517
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/crypto/TlsSession;[B[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/net/eap/crypto/TlsSession;
    .param p2, "msk"    # [B
    .param p3, "emsk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p2, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->msk:[B

    .line 509
    iput-object p3, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->emsk:[B

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 511
    return-void
.end method


# virtual methods
.method public blacklist isSuccessful()Z
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.class public Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
.super Ljava/lang/Object;
.source "TlsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/crypto/TlsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TlsResult"
.end annotation


# instance fields
.field public final blacklist data:[B

.field public final blacklist status:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/crypto/TlsSession;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/crypto/TlsSession;
    .param p2, "status"    # I
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

    .line 497
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;-><init>(Lcom/android/internal/net/eap/crypto/TlsSession;[BI)V

    .line 498
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/crypto/TlsSession;[BI)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/crypto/TlsSession;
    .param p2, "data"    # [B
    .param p3, "status"    # I
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

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    .line 493
    iput p3, p0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    .line 494
    return-void
.end method

.class final Lcom/android/org/conscrypt/NativeRef$EVP_HPKE_CTX;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EVP_HPKE_CTX"
.end annotation


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativePointer"    # J

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    .line 114
    return-void
.end method


# virtual methods
.method blacklist doFree(J)V
    .registers 3
    .param p1, "context"    # J

    .line 118
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_HPKE_CTX_free(J)V

    .line 119
    return-void
.end method

.class public Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EVP_MD_CTX"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    #@3
    .line 109
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;->context:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_CTX_destroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 118
    invoke-super {p0}, Lcom/android/org/conscrypt/NativeRef;->finalize()V

    #@8
    .line 114
    return-void

    #@9
    .line 117
    :catchall_0
    move-exception v0

    #@a
    .line 118
    invoke-super {p0}, Lcom/android/org/conscrypt/NativeRef;->finalize()V

    #@d
    .line 117
    throw v0
.end method

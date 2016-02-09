.class public Lcom/android/org/conscrypt/NativeRef$EC_POINT;
.super Lcom/android/org/conscrypt/NativeRef;
.source "NativeRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC_POINT"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/NativeRef;-><init>(J)V

    #@3
    .line 64
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
    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeRef$EC_POINT;->context:J

    #@2
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EC_POINT_clear_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 73
    invoke-super {p0}, Lcom/android/org/conscrypt/NativeRef;->finalize()V

    #@8
    .line 69
    return-void

    #@9
    .line 72
    :catchall_0
    move-exception v0

    #@a
    .line 73
    invoke-super {p0}, Lcom/android/org/conscrypt/NativeRef;->finalize()V

    #@d
    .line 72
    throw v0
.end method

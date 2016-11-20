.class public final Lcom/android/dex/DexIndexOverflowException;
.super Lcom/android/dex/DexException;
.source "DexIndexOverflowException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@3
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 27
    return-void
.end method

.class public Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
.super Lcom/android/internal/telephony/uicc/IccException;
.source "IccFileTypeMismatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    #@3
    .line 28
    return-void
.end method

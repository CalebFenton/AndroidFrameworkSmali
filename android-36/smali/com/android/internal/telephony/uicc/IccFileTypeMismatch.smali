.class public Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
.super Lcom/android/internal/telephony/uicc/IccException;
.source "IccFileTypeMismatch.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccException;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-void
.end method

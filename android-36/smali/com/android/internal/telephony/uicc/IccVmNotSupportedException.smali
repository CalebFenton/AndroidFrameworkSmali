.class public final Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;
.super Lcom/android/internal/telephony/uicc/IccException;
.source "IccVmNotSupportedException.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccException;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-void
.end method

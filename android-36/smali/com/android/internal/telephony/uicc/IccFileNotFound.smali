.class public Lcom/android/internal/telephony/uicc/IccFileNotFound;
.super Lcom/android/internal/telephony/uicc/IccException;
.source "IccFileNotFound.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccException;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/android/icu/util/Icu4cMetadata;
.super Ljava/lang/Object;
.source "Icu4cMetadata.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist getCldrVersion()Ljava/lang/String;
.end method

.method public static native blacklist getIcuVersion()Ljava/lang/String;
.end method

.method public static native blacklist getTzdbVersion()Ljava/lang/String;
.end method

.method public static native blacklist getUnicodeVersion()Ljava/lang/String;
.end method

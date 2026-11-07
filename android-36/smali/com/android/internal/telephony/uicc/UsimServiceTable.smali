.class public final Lcom/android/internal/telephony/uicc/UsimServiceTable;
.super Lcom/android/internal/telephony/uicc/IccServiceTable;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2

    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected blacklist getTag()Ljava/lang/String;
    .registers 1

    .line 153
    const-string p0, "UsimServiceTable"

    return-object p0
.end method

.method public blacklist getUSIMServiceTable()[B
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    return-object p0
.end method

.method protected blacklist getValues()[Ljava/lang/Object;
    .registers 1

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    .registers 2

    .line 148
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result p0

    return p0
.end method

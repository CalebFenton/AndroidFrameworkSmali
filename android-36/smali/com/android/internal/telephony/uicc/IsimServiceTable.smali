.class public final Lcom/android/internal/telephony/uicc/IsimServiceTable;
.super Lcom/android/internal/telephony/uicc/IccServiceTable;
.source "IsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    return-void
.end method


# virtual methods
.method public blacklist getISIMServiceTable()[B
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    return-object p0
.end method

.method protected blacklist getTag()Ljava/lang/String;
    .registers 1

    .line 45
    const-string p0, "IsimServiceTable"

    return-object p0
.end method

.method protected blacklist getValues()[Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;->values()[Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAvailable(Lcom/android/internal/telephony/uicc/IsimServiceTable$IsimService;)Z
    .registers 2

    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result p0

    return p0
.end method

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
.method public constructor <init>([B)V
    .locals 0
    .param p1, "table"    # [B

    #@0
    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    #@3
    .line 124
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "UsimServiceTable"

    #@3
    return-object v0
.end method

.method protected getValues()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 139
    invoke-static {}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    .locals 1
    .param p1, "service"    # Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    #@0
    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->ordinal()I

    #@3
    move-result v0

    #@4
    invoke-super {p0, v0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

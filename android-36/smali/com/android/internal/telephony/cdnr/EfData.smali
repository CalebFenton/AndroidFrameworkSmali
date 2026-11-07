.class public interface abstract Lcom/android/internal/telephony/cdnr/EfData;
.super Ljava/lang/Object;
.source "EfData.java"


# static fields
.field public static final blacklist EF_SOURCE_CARRIER_API:I = 0x2

.field public static final blacklist EF_SOURCE_CARRIER_CONFIG:I = 0x1

.field public static final blacklist EF_SOURCE_CSIM:I = 0x5

.field public static final blacklist EF_SOURCE_DATA_OPERATOR_SIGNALLING:I = 0x8

.field public static final blacklist EF_SOURCE_ERI:I = 0xa

.field public static final blacklist EF_SOURCE_MODEM_CONFIG:I = 0x9

.field public static final blacklist EF_SOURCE_RUIM:I = 0x6

.field public static final blacklist EF_SOURCE_SIM:I = 0x4

.field public static final blacklist EF_SOURCE_USIM:I = 0x3

.field public static final blacklist EF_SOURCE_VOICE_OPERATOR_SIGNALLING:I = 0x7


# virtual methods
.method public blacklist getEhplmnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOperatorPlmnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPlmnNetworkNameList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderDisplayInformation()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderNameDisplayCondition(Z)I
    .registers 2

    .line 0
    const/4 p0, -0x1

    return p0
.end method

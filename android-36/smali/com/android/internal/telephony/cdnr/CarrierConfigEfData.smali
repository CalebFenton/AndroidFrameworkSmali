.class public final Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;
.super Ljava/lang/Object;
.source "CarrierConfigEfData.java"

# interfaces
.implements Lcom/android/internal/telephony/cdnr/EfData;


# instance fields
.field private final blacklist mEhplmn:[Ljava/lang/String;

.field private final blacklist mOpl:[Ljava/lang/String;

.field private final blacklist mPnn:[Ljava/lang/String;

.field private final blacklist mSpdi:[Ljava/lang/String;

.field private final blacklist mSpn:Ljava/lang/String;

.field private final blacklist mSpnDisplayCondition:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "carrier_name_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpn:Ljava/lang/String;

    .line 47
    const-string v0, "spn_display_condition_override_int"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpnDisplayCondition:I

    .line 50
    const-string v0, "spdi_override_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpdi:[Ljava/lang/String;

    .line 51
    const-string v0, "ehplmn_override_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mEhplmn:[Ljava/lang/String;

    .line 52
    const-string v0, "pnn_override_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mPnn:[Ljava/lang/String;

    .line 53
    const-string v0, "opl_override_opl_string_array"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mOpl:[Ljava/lang/String;

    return-void
.end method


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

    .line 73
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mEhplmn:[Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOperatorPlmnList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mOpl:[Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mOpl:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mOpl:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_54

    aget-object v4, p0, v3

    .line 102
    :try_start_15
    const-string v5, "\\s*,\\s*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 103
    new-instance v6, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;

    aget-object v7, v5, v2

    const/4 v8, 0x1

    aget-object v8, v5, v8

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v5, v5, v10

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/android/internal/telephony/uicc/IccRecords$OperatorPlmnInfo;-><init>(Ljava/lang/String;III)V

    .line 103
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3a} :catch_3b

    goto :goto_51

    .line 109
    :catch_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CarrierConfig wrong opl format, oplStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarrierConfigEfData"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_54
    return-object v0

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getPlmnNetworkNameList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mPnn:[Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mPnn:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mPnn:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_48

    aget-object v4, p0, v3

    .line 83
    :try_start_15
    const-string v5, "\\s*,\\s*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 84
    aget-object v6, v5, v2

    .line 85
    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_24

    aget-object v5, v5, v8

    goto :goto_26

    :cond_24
    const-string v5, ""

    .line 86
    :goto_26
    new-instance v7, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;

    invoke-direct {v7, v6, v5}, Lcom/android/internal/telephony/uicc/IccRecords$PlmnNetworkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2e} :catch_2f

    goto :goto_45

    .line 88
    :catch_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CarrierConfig wrong pnn format, pnnStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarrierConfigEfData"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_48
    return-object v0

    :cond_49
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

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpdi:[Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServiceProviderNameDisplayCondition(Z)I
    .registers 2

    .line 63
    iget p0, p0, Lcom/android/internal/telephony/cdnr/CarrierConfigEfData;->mSpnDisplayCondition:I

    return p0
.end method

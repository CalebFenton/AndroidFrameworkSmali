.class Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "CellularNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellularNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellularNetworkServiceProvider"
.end annotation


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellularNetworkService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRegistrationStateFromResult(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/CellularNetworkService;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 118
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 127
    invoke-virtual {p0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->getSlotIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 129
    new-instance v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider$1;-><init>(Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/CellularNetworkService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 175
    iget-object p0, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;
    .registers 4

    const/4 p0, 0x2

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    move p1, p0

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    move p0, v0

    .line 647
    :goto_b
    new-instance p2, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {p2, p1, p0}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    return-object p2
.end method

.method private blacklist createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 319
    instance-of v2, v1, Landroid/hardware/radio/network/RegStateResult;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_11

    .line 320
    check-cast v1, Landroid/hardware/radio/network/RegStateResult;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfoAidl(IILandroid/hardware/radio/network/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 322
    :cond_11
    instance-of v2, v1, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eqz v2, :cond_1c

    .line 323
    check-cast v1, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo1_6(IILandroid/hardware/radio/V1_6/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 325
    :cond_1c
    instance-of v2, v1, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eqz v2, :cond_27

    .line 326
    check-cast v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo(IILandroid/hardware/radio/V1_5/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 328
    :cond_27
    instance-of v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    if-eqz v2, :cond_99

    .line 329
    check-cast v1, Landroid/hardware/radio/V1_4/DataRegStateResult;

    .line 333
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->getDiscriminator()B

    move-result v2

    if-ne v2, v4, :cond_51

    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    .line 334
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_51

    .line 336
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->vopsInfo:Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;

    .line 337
    invoke-virtual {v2}, Landroid/hardware/radio/V1_4/DataRegStateResult$VopsInfo;->lteVopsInfo()Landroid/hardware/radio/V1_4/LteVopsInfo;

    move-result-object v2

    .line 338
    iget-boolean v4, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v2, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v2

    :goto_4e
    move-object/from16 v19, v2

    goto :goto_57

    .line 341
    :cond_51
    new-instance v2, Landroid/telephony/LteVopsSupportInfo;

    invoke-direct {v2, v4, v4}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    goto :goto_4e

    .line 345
    :goto_57
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v8

    .line 346
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->rat:I

    .line 347
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v9

    .line 348
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v10, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->reasonDataDenied:I

    .line 349
    iget v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v11

    .line 350
    iget-object v2, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->base:Landroid/hardware/radio/V1_2/DataRegStateResult;

    iget v15, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->maxDataCalls:I

    .line 351
    iget-object v2, v2, Landroid/hardware/radio/V1_2/DataRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 352
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v13

    .line 353
    iget-object v1, v1, Landroid/hardware/radio/V1_4/DataRegStateResult;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    .line 354
    iget-boolean v2, v1, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 355
    iget-boolean v4, v1, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 356
    iget-boolean v1, v1, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 357
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v14

    .line 358
    invoke-direct {v0, v8, v3, v11}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v12

    .line 360
    new-instance v5, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v6, 0x2

    const/4 v7, 0x1

    move/from16 v16, v1

    move/from16 v18, v2

    move/from16 v17, v4

    invoke-direct/range {v5 .. v19}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v5

    .line 365
    :cond_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of DataRegStateResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 280
    instance-of v2, v1, Landroid/hardware/radio/network/RegStateResult;

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    .line 281
    check-cast v1, Landroid/hardware/radio/network/RegStateResult;

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfoAidl(IILandroid/hardware/radio/network/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 283
    :cond_10
    instance-of v2, v1, Landroid/hardware/radio/V1_6/RegStateResult;

    if-eqz v2, :cond_1b

    .line 284
    check-cast v1, Landroid/hardware/radio/V1_6/RegStateResult;

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo1_6(IILandroid/hardware/radio/V1_6/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 286
    :cond_1b
    instance-of v2, v1, Landroid/hardware/radio/V1_5/RegStateResult;

    if-eqz v2, :cond_26

    .line 287
    check-cast v1, Landroid/hardware/radio/V1_5/RegStateResult;

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getNetworkRegistrationInfo(IILandroid/hardware/radio/V1_5/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    .line 289
    :cond_26
    instance-of v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    if-eqz v2, :cond_62

    .line 290
    check-cast v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;

    .line 292
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v7

    .line 293
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->rat:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v8

    .line 294
    iget v9, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->reasonForDenial:I

    .line 295
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->regState:I

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v10

    .line 296
    iget-boolean v14, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cssSupported:Z

    .line 297
    iget v15, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->roamingIndicator:I

    .line 298
    iget v2, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->systemIsInPrl:I

    .line 299
    iget v4, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->defaultRoamingIndicator:I

    .line 300
    invoke-direct {v0, v7, v3, v10}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v11

    .line 302
    iget-object v1, v1, Landroid/hardware/radio/V1_2/VoiceRegStateResult;->cellIdentity:Landroid/hardware/radio/V1_2/CellIdentity;

    .line 303
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v12

    .line 304
    invoke-direct {v0, v12}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v13

    move/from16 v17, v4

    .line 306
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move/from16 v16, v2

    invoke-direct/range {v4 .. v17}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v4

    :cond_62
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getAvailableServices(IIZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    if-eqz p3, :cond_10

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_10
    const/4 p3, 0x1

    if-eq p1, v1, :cond_15

    if-ne p1, p3, :cond_4b

    :cond_15
    const/4 p1, 0x2

    if-ne p2, p1, :cond_32

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->this$0:Lcom/android/internal/telephony/CellularNetworkService;

    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1, p0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$misMmsEnabled(Lcom/android/internal/telephony/CellularNetworkService;Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const/4 p0, 0x6

    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_32
    if-ne p2, p3, :cond_4b

    .line 241
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x3

    .line 242
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x4

    .line 243
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    return-object v0
.end method

.method private blacklist getNetworkRegistrationInfo(IILandroid/hardware/radio/V1_5/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 375
    iget v3, v2, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 376
    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v6

    .line 377
    invoke-direct {v0, v3, v1, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v7

    .line 379
    iget-object v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    .line 380
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v8

    .line 381
    iget-object v9, v2, Landroid/hardware/radio/V1_5/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 382
    iget v5, v2, Landroid/hardware/radio/V1_5/RegStateResult;->reasonForDenial:I

    .line 384
    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 385
    iget-object v10, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 386
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v10

    invoke-static {v4, v8, v10}, Lcom/android/internal/telephony/CellularNetworkService;->getNetworkTypeForCellIdentity(ILandroid/telephony/CellIdentity;I)I

    move-result v4

    .line 396
    new-instance v10, Landroid/telephony/LteVopsSupportInfo;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v11}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 400
    iget-object v12, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-virtual {v12}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v11, :cond_73

    if-eq v12, v13, :cond_51

    .line 425
    const-string v0, "No access tech specific info passes for RegStateResult"

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    move-object v14, v10

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_89

    .line 414
    :cond_51
    iget-object v2, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 415
    invoke-virtual {v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v2

    .line 417
    iget-object v10, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v12, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 418
    iget-boolean v15, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 419
    iget-boolean v10, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 420
    iget-object v2, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/V1_4/LteVopsInfo;

    iget-boolean v14, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    iget-boolean v2, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    invoke-direct {v0, v14, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v0

    move-object v14, v0

    move v2, v10

    move/from16 v17, v12

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto :goto_89

    .line 404
    :cond_73
    iget-object v0, v2, Landroid/hardware/radio/V1_5/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 405
    invoke-virtual {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v0

    .line 406
    iget-boolean v2, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 407
    iget v12, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 408
    iget v14, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 409
    iget v0, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    move/from16 v16, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v14, v10

    move v10, v2

    const/4 v2, 0x0

    :goto_89
    if-eq v1, v11, :cond_af

    if-eq v1, v13, :cond_a1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown domain passed to CellularNetworkService= "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 440
    :cond_a1
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v10, 0x10

    move v13, v2

    move v12, v15

    move/from16 v11, v17

    move/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v0

    :cond_af
    move v13, v0

    .line 432
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v12

    move/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v0
.end method

.method private blacklist getNetworkRegistrationInfo1_6(IILandroid/hardware/radio/V1_6/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 556
    iget v3, v2, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 557
    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v6

    .line 558
    invoke-direct {v0, v3, v1, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v7

    .line 560
    iget-object v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->cellIdentity:Landroid/hardware/radio/V1_5/CellIdentity;

    .line 561
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object v8

    .line 562
    iget-object v9, v2, Landroid/hardware/radio/V1_6/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 563
    iget v5, v2, Landroid/hardware/radio/V1_6/RegStateResult;->reasonForDenial:I

    .line 565
    iget v4, v2, Landroid/hardware/radio/V1_6/RegStateResult;->rat:I

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 566
    iget-object v10, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 567
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v10

    invoke-static {v4, v8, v10}, Lcom/android/internal/telephony/CellularNetworkService;->getNetworkTypeForCellIdentity(ILandroid/telephony/CellIdentity;I)I

    move-result v4

    const/4 v10, 0x3

    if-ne v3, v10, :cond_46

    if-nez v5, :cond_46

    .line 572
    const-string v11, "62ed270f-e139-418a-a427-8bcc1bca8f21"

    .line 573
    invoke-static {v11}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 574
    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v12

    .line 572
    const-string v13, "RIL Missing Reg Fail Reason"

    invoke-static {v11, v13, v12}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 587
    :cond_46
    iget-object v2, v2, Landroid/hardware/radio/V1_6/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;

    .line 590
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->getDiscriminator()B

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v15, 0x0

    if-eq v11, v13, :cond_c1

    if-eq v11, v12, :cond_8b

    if-eq v11, v10, :cond_73

    const/4 v0, 0x4

    if-eq v11, v0, :cond_69

    .line 614
    const-string v0, "No access tech specific info passes for RegStateResult"

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    :goto_5d
    move-object/from16 v17, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_62
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_e2

    .line 611
    :cond_69
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->geranDtmSupported()Z

    move-result v0

    move v10, v0

    move-object/from16 v17, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_62

    .line 606
    :cond_73
    new-instance v15, Landroid/telephony/NrVopsSupportInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v0

    iget-byte v0, v0, Landroid/hardware/radio/V1_6/NrVopsInfo;->vopsSupported:B

    .line 607
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v10

    iget-byte v10, v10, Landroid/hardware/radio/V1_6/NrVopsInfo;->emcSupported:B

    .line 608
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->ngranNrVopsInfo()Landroid/hardware/radio/V1_6/NrVopsInfo;

    move-result-object v2

    iget-byte v2, v2, Landroid/hardware/radio/V1_6/NrVopsInfo;->emfSupported:B

    invoke-direct {v15, v0, v10, v2}, Landroid/telephony/NrVopsSupportInfo;-><init>(III)V

    goto :goto_5d

    .line 598
    :cond_8b
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v10, v10, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 599
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v11, v11, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 600
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/V1_4/NrIndicators;

    iget-boolean v15, v15, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 602
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/V1_4/LteVopsInfo;

    iget-boolean v14, v14, Landroid/hardware/radio/V1_4/LteVopsInfo;->isVopsSupported:Z

    .line 603
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/V1_4/LteVopsInfo;

    iget-boolean v2, v2, Landroid/hardware/radio/V1_4/LteVopsInfo;->isEmcBearerSupported:Z

    .line 601
    invoke-direct {v0, v14, v2}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v0

    move-object/from16 v17, v0

    move/from16 v16, v10

    move v0, v11

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_e2

    .line 592
    :cond_c1
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 593
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v10

    iget v10, v10, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 594
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v11

    iget v11, v11, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 595
    invoke-virtual {v2}, Landroid/hardware/radio/V1_6/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    move v14, v11

    move-object/from16 v17, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v11, v10

    move v10, v0

    const/4 v0, 0x0

    :goto_e2
    if-eq v1, v13, :cond_10a

    if-eq v1, v12, :cond_fa

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown domain passed to CellularNetworkService= "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    :cond_fa
    move v12, v0

    .line 629
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v10, 0x10

    move/from16 v2, p2

    move v13, v15

    move/from16 v11, v16

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    return-object v0

    .line 621
    :cond_10a
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    move/from16 v1, p1

    move v13, v2

    move v12, v14

    move/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v0
.end method

.method private blacklist getNetworkRegistrationInfoAidl(IILandroid/hardware/radio/network/RegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 450
    iget v3, v2, Landroid/hardware/radio/network/RegStateResult;->regState:I

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v3

    .line 451
    iget v4, v2, Landroid/hardware/radio/network/RegStateResult;->regState:I

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v6

    .line 452
    invoke-direct {v0, v3, v1, v6}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v7

    .line 454
    iget-object v4, v2, Landroid/hardware/radio/network/RegStateResult;->cellIdentity:Landroid/hardware/radio/network/CellIdentity;

    .line 455
    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Landroid/hardware/radio/network/CellIdentity;)Landroid/telephony/CellIdentity;

    move-result-object v8

    .line 456
    iget-object v9, v2, Landroid/hardware/radio/network/RegStateResult;->registeredPlmn:Ljava/lang/String;

    .line 457
    iget v5, v2, Landroid/hardware/radio/network/RegStateResult;->reasonForDenial:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_36

    if-nez v5, :cond_36

    .line 462
    const-string v10, "62ed270f-e139-418a-a427-8bcc1bca8f21"

    .line 463
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    iget-object v11, v0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 464
    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v11

    .line 462
    const-string v12, "RIL Missing Reg Fail Reason"

    invoke-static {v10, v12, v11}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 467
    :cond_36
    iget v10, v2, Landroid/hardware/radio/network/RegStateResult;->rat:I

    invoke-static {v10}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v10

    const/16 v11, 0x13

    if-ne v10, v11, :cond_42

    const/16 v10, 0xd

    .line 484
    :cond_42
    iget-object v2, v2, Landroid/hardware/radio/network/RegStateResult;->accessTechnologySpecificInfo:Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    .line 487
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v15, 0x0

    if-eq v11, v13, :cond_d4

    if-eq v11, v12, :cond_8f

    if-eq v11, v4, :cond_77

    const/4 v0, 0x4

    if-eq v11, v0, :cond_68

    .line 513
    const-string v0, "No access tech specific info passes for RegStateResult"

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smlog(Ljava/lang/String;)V

    :goto_59
    move-object v12, v15

    const/16 p0, 0x0

    const/16 p3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_63
    const/4 v15, 0x0

    :goto_64
    const/16 v16, 0x0

    goto/16 :goto_f9

    .line 510
    :cond_68
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getGeranDtmSupported()Z

    move-result v0

    move v14, v0

    move-object v12, v15

    const/16 p0, 0x0

    const/16 p3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto :goto_63

    .line 505
    :cond_77
    new-instance v15, Landroid/telephony/NrVopsSupportInfo;

    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v0

    iget-byte v0, v0, Landroid/hardware/radio/network/NrVopsInfo;->vopsSupported:B

    .line 506
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v4

    iget-byte v4, v4, Landroid/hardware/radio/network/NrVopsInfo;->emcSupported:B

    .line 507
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v2

    iget-byte v2, v2, Landroid/hardware/radio/network/NrVopsInfo;->emfSupported:B

    invoke-direct {v15, v0, v4, v2}, Landroid/telephony/NrVopsSupportInfo;-><init>(III)V

    goto :goto_59

    .line 495
    :cond_8f
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/hardware/radio/network/EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/network/NrIndicators;

    iget-boolean v4, v4, Landroid/hardware/radio/network/NrIndicators;->isDcNrRestricted:Z

    .line 496
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/hardware/radio/network/EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/network/NrIndicators;

    iget-boolean v11, v11, Landroid/hardware/radio/network/NrIndicators;->isNrAvailable:Z

    .line 497
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v15

    iget-object v15, v15, Landroid/hardware/radio/network/EutranRegistrationInfo;->nrIndicators:Landroid/hardware/radio/network/NrIndicators;

    iget-boolean v15, v15, Landroid/hardware/radio/network/NrIndicators;->isEndcAvailable:Z

    .line 499
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/hardware/radio/network/EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/network/LteVopsInfo;

    iget-boolean v14, v14, Landroid/hardware/radio/network/LteVopsInfo;->isVopsSupported:Z

    .line 500
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/hardware/radio/network/EutranRegistrationInfo;->lteVopsInfo:Landroid/hardware/radio/network/LteVopsInfo;

    iget-boolean v12, v12, Landroid/hardware/radio/network/LteVopsInfo;->isEmcBearerSupported:Z

    .line 498
    invoke-direct {v0, v14, v12}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->convertHalLteVopsSupportInfo(ZZ)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v0

    .line 501
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v12

    iget-byte v12, v12, Landroid/hardware/radio/network/EutranRegistrationInfo;->lteAttachResultType:B

    .line 502
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/radio/network/EutranRegistrationInfo;->extraInfo:I

    move/from16 p0, v12

    move-object v12, v0

    move v0, v11

    move v11, v2

    move/from16 v2, p0

    const/16 p0, 0x0

    const/16 p3, 0x0

    const/4 v14, 0x0

    goto :goto_64

    .line 489
    :cond_d4
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->cssSupported:Z

    .line 490
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v4

    iget v4, v4, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 491
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v11

    iget v11, v11, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 492
    invoke-virtual {v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v2

    iget v2, v2, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    move v14, v0

    move/from16 p0, v2

    move/from16 p3, v4

    move/from16 v16, v11

    move-object v12, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_f9
    if-eq v1, v13, :cond_169

    const/4 v13, 0x2

    if-eq v1, v13, :cond_112

    .line 525
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown domain passed to CellularNetworkService= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 528
    :cond_112
    new-instance v13, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v13}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 529
    invoke-virtual {v13, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    move/from16 v13, p2

    .line 530
    invoke-virtual {v1, v13}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 531
    invoke-virtual {v1, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v10}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 533
    invoke-virtual {v1, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 534
    invoke-virtual {v1, v6}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 535
    invoke-virtual {v1, v7}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 536
    invoke-virtual {v1, v8}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    .line 537
    invoke-virtual {v1, v9}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegisteredPlmn(Ljava/lang/String;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v1

    new-instance v3, Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    const/16 v5, 0x10

    invoke-direct {v3, v5}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;-><init>(I)V

    .line 540
    invoke-virtual {v3, v4}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setDcNrRestricted(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v3

    .line 541
    invoke-virtual {v3, v0}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setNrAvailable(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 542
    invoke-virtual {v0, v15}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setEnDcAvailable(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, v12}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setVopsSupportInfo(Landroid/telephony/VopsSupportInfo;)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v2}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setLteAttachResultType(I)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 545
    invoke-virtual {v0, v11}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->setLteAttachExtraInfo(I)Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->build()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v0

    .line 538
    invoke-virtual {v1, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDataSpecificInfo(Landroid/telephony/DataSpecificRegistrationInfo;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0

    :cond_169
    move/from16 v13, p2

    .line 520
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo;

    move/from16 v11, p3

    move v4, v10

    move v2, v13

    move v10, v14

    move/from16 v12, v16

    move/from16 v13, p0

    invoke-direct/range {v0 .. v13}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    return-object v0
.end method

.method private blacklist getPlmnFromCellIdentity(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .registers 4

    .line 266
    const-string p0, ""

    if-eqz p1, :cond_2d

    instance-of v0, p1, Landroid/telephony/CellIdentityCdma;

    if-eqz v0, :cond_9

    goto :goto_2d

    .line 268
    :cond_9
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2d

    .line 273
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method private blacklist getRegStateFromHalRegState(I)I
    .registers 5

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1b

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1a

    const/16 v2, 0x14

    if-eq p1, v2, :cond_18

    packed-switch p1, :pswitch_data_1e

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x6

    return p0

    :cond_1a
    return v2

    :cond_1b
    :pswitch_1b
    return v1

    :cond_1c
    :pswitch_1c
    return v0

    :cond_1d
    :pswitch_1d
    return p0

    :pswitch_data_1e
    .packed-switch 0xc
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method private blacklist getRegistrationStateFromResult(Ljava/lang/Object;I)Landroid/telephony/NetworkRegistrationInfo;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromVoiceRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_14

    .line 259
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->createRegistrationStateFromDataRegState(Ljava/lang/Object;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v0
.end method

.method private blacklist isEmergencyOnly(I)Z
    .registers 2

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_d

    const/16 p0, 0x14

    if-eq p1, p0, :cond_d

    packed-switch p1, :pswitch_data_10

    const/4 p0, 0x0

    return p0

    :cond_d
    :pswitch_d
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0xc
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 656
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    return-void

    :cond_16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2c

    .line 660
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/CellularNetworkService$CellularNetworkServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    return-void

    .line 664
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNetworkRegistrationInfo invalid domain "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/CellularNetworkService;->-$$Nest$smloge(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 665
    invoke-virtual {p2, v0, p0}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    return-void
.end method

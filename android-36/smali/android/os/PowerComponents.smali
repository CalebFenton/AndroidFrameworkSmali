.class Landroid/os/PowerComponents;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerComponents$Builder;
    }
.end annotation


# static fields
.field private static final blacklist XML_TAG_CUSTOM_COMPONENT_COMPAT:Ljava/lang/String; = "custom_component"


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 1

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PowerComponents$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/os/PowerComponents$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 53
    return-void
.end method

.method private blacklist dump(Ljava/lang/StringBuilder;IIIIZ)V
    .registers 15
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "powerComponent"    # I
    .param p3, "processState"    # I
    .param p4, "screenState"    # I
    .param p5, "powerState"    # I
    .param p6, "skipEmptyComponents"    # Z

    .line 206
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    .line 208
    .local v0, "power":D
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v2

    .line 210
    .local v2, "durationMs":J
    const-wide/16 v4, 0x0

    if-eqz p6, :cond_17

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_17

    cmp-long v6, v2, v4

    if-nez v6, :cond_17

    .line 211
    return-void

    .line 214
    :cond_17
    iget-object v6, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v6, v6, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v6, p2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/4 v6, -0x1

    if-eq p3, v6, :cond_31

    .line 216
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p3}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_31
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    cmp-long v4, v2, v4

    if-eqz v4, :cond_4e

    .line 223
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {p1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 225
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_4e
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method static blacklist parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V
    .registers 21
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "builder"    # Landroid/os/PowerComponents$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 382
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_f2

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "power_components"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 387
    :goto_18
    const/4 v4, 0x3

    if-ne v2, v4, :cond_25

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f1

    :cond_25
    const/4 v6, 0x1

    if-eq v2, v6, :cond_f1

    .line 390
    if-ne v2, v3, :cond_ea

    .line 391
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_fa

    :cond_35
    goto :goto_4a

    :sswitch_36
    const-string v8, "custom_component"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    move v7, v6

    goto :goto_4b

    :sswitch_40
    const-string v8, "component"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/4 v7, 0x0

    goto :goto_4b

    :goto_4a
    const/4 v7, -0x1

    :goto_4b
    packed-switch v7, :pswitch_data_104

    goto/16 :goto_ea

    .line 394
    :pswitch_50
    const/4 v7, -0x1

    .line 395
    .local v7, "componentId":I
    const/4 v8, 0x0

    .line 396
    .local v8, "processState":I
    const/4 v11, 0x0

    .line 397
    .local v11, "screenState":I
    const/4 v12, 0x0

    .line 398
    .local v12, "powerState":I
    const-wide/16 v13, 0x0

    .line 399
    .local v13, "powerMah":D
    const-wide/16 v15, 0x0

    .line 400
    .local v15, "durationMs":J
    const/16 v17, 0x0

    move-wide v3, v15

    move/from16 v6, v17

    .end local v15    # "durationMs":J
    .local v3, "durationMs":J
    .local v6, "i":I
    :goto_5d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v6, v9, :cond_d9

    .line 401
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_10c

    :cond_6e
    goto :goto_b0

    :sswitch_6f
    const-string/jumbo v10, "process_state"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/4 v9, 0x1

    goto :goto_b1

    :sswitch_7a
    const-string/jumbo v10, "power_state"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/4 v9, 0x3

    goto :goto_b1

    :sswitch_85
    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/4 v9, 0x4

    goto :goto_b1

    :sswitch_90
    const-string/jumbo v10, "id"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/4 v9, 0x0

    goto :goto_b1

    :sswitch_9b
    const-string/jumbo v10, "screen_state"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/4 v9, 0x2

    goto :goto_b1

    :sswitch_a6
    const-string v10, "duration"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    const/4 v9, 0x5

    goto :goto_b1

    :goto_b0
    const/4 v9, -0x1

    :goto_b1
    packed-switch v9, :pswitch_data_126

    goto :goto_d6

    .line 418
    :pswitch_b5
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v3

    goto :goto_d6

    .line 415
    :pswitch_ba
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v9

    .line 416
    .end local v13    # "powerMah":D
    .local v9, "powerMah":D
    move-wide v13, v9

    goto :goto_d6

    .line 412
    .end local v9    # "powerMah":D
    .restart local v13    # "powerMah":D
    :pswitch_c0
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v9

    .line 413
    .end local v12    # "powerState":I
    .local v9, "powerState":I
    move v12, v9

    goto :goto_d6

    .line 409
    .end local v9    # "powerState":I
    .restart local v12    # "powerState":I
    :pswitch_c6
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v9

    .line 410
    .end local v11    # "screenState":I
    .local v9, "screenState":I
    move v11, v9

    goto :goto_d6

    .line 406
    .end local v9    # "screenState":I
    .restart local v11    # "screenState":I
    :pswitch_cc
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v8

    .line 407
    goto :goto_d6

    .line 403
    :pswitch_d1
    invoke-interface {v0, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v7

    .line 404
    nop

    .line 400
    :goto_d6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 422
    .end local v6    # "i":I
    :cond_d9
    invoke-static {v1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v6

    iget-object v6, v6, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v6, v7, v8, v11, v12}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v6

    .line 424
    .local v6, "key":Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v1, v6, v13, v14}, Landroid/os/PowerComponents$Builder;->addConsumedPower(Landroid/os/BatteryConsumer$Key;D)Landroid/os/PowerComponents$Builder;

    .line 425
    invoke-virtual {v1, v6, v3, v4}, Landroid/os/PowerComponents$Builder;->addUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    .line 426
    nop

    .line 430
    .end local v3    # "durationMs":J
    .end local v6    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v7    # "componentId":I
    .end local v8    # "processState":I
    .end local v11    # "screenState":I
    .end local v12    # "powerState":I
    .end local v13    # "powerMah":D
    :cond_ea
    :goto_ea
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    goto/16 :goto_18

    .line 432
    :cond_f1
    return-void

    .line 384
    :cond_f2
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_fa
    .sparse-switch
        -0x5370e303 -> :sswitch_40
        -0x1a183651 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_50
        :pswitch_50
    .end packed-switch

    :sswitch_data_10c
    .sparse-switch
        -0x76bbb26c -> :sswitch_a6
        -0x4fa21902 -> :sswitch_9b
        0xd1b -> :sswitch_90
        0x65e8905 -> :sswitch_85
        0x2eba18d7 -> :sswitch_7a
        0x633976c1 -> :sswitch_6f
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_cc
        :pswitch_c6
        :pswitch_c0
        :pswitch_ba
        :pswitch_b5
    .end packed-switch
.end method

.method private blacklist writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J
    .param p4, "componentId"    # I
    .param p5, "powerDeciCoulombs"    # J
    .param p7, "durationMs"    # J

    .line 321
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 322
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 326
    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 330
    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 334
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 335
    return-void
.end method

.method private blacklist writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V
    .registers 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "componentId"    # I
    .param p3, "powerDeciCoulombs"    # J
    .param p5, "durationMs"    # J
    .param p7, "processState"    # I

    .line 283
    move/from16 v0, p7

    .line 284
    const-wide v1, 0x20b00000003L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 285
    .local v1, "slicesToken":J
    const-wide v5, 0x10b00000001L

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    .line 291
    packed-switch v0, :pswitch_data_4a

    .line 309
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown process state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :pswitch_35
    const/4 v3, 0x4

    .line 307
    .local v3, "procState":I
    goto :goto_3d

    .line 301
    .end local v3    # "procState":I
    :pswitch_37
    const/4 v3, 0x3

    .line 303
    .restart local v3    # "procState":I
    goto :goto_3d

    .line 297
    .end local v3    # "procState":I
    :pswitch_39
    const/4 v3, 0x2

    .line 299
    .restart local v3    # "procState":I
    goto :goto_3d

    .line 293
    .end local v3    # "procState":I
    :pswitch_3b
    const/4 v3, 0x1

    .line 295
    .restart local v3    # "procState":I
    nop

    .line 312
    :goto_3d
    const-wide v5, 0x10e00000002L

    invoke-virtual {p1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 315
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 316
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_39
        :pswitch_37
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z
    .registers 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 245
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 247
    .local v1, "interestingData":Z
    iget-object v2, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v9, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v10, v9

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v10, :cond_83

    aget v2, v9, v12

    .line 248
    .local v2, "componentId":I
    iget-object v3, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v3, v2}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v13

    .line 249
    .local v13, "keys":[Landroid/os/BatteryConsumer$Key;
    array-length v14, v13

    const/4 v15, 0x0

    :goto_19
    if-ge v15, v14, :cond_7b

    aget-object v3, v13, v15

    .line 250
    .local v3, "key":Landroid/os/BatteryConsumer$Key;
    iget v4, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v5, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v6, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    .line 251
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v4

    .line 250
    invoke-static {v4, v5}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v5

    .line 253
    .local v5, "powerDeciCoulombs":J
    iget v4, v3, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v11, v3, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v0, v4, v7, v8, v11}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v7

    .line 256
    .local v7, "durationMs":J
    const-wide/16 v16, 0x0

    cmp-long v4, v5, v16

    if-nez v4, :cond_47

    cmp-long v4, v7, v16

    if-nez v4, :cond_47

    .line 258
    move v4, v2

    move-object/from16 v16, v9

    goto :goto_73

    .line 261
    :cond_47
    const/4 v11, 0x1

    .line 262
    .end local v1    # "interestingData":Z
    .local v11, "interestingData":Z
    if-nez p1, :cond_4c

    .line 265
    const/4 v1, 0x1

    return v1

    .line 268
    :cond_4c
    iget v1, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v1, :cond_60

    .line 269
    move v4, v2

    move-object v1, v3

    .end local v2    # "componentId":I
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .local v1, "key":Landroid/os/BatteryConsumer$Key;
    .local v4, "componentId":I
    const-wide v2, 0x20b00000002L

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, p1

    .end local v1    # "key":Landroid/os/BatteryConsumer$Key;
    .local v9, "key":Landroid/os/BatteryConsumer$Key;
    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    goto :goto_72

    .line 273
    .end local v4    # "componentId":I
    .end local v9    # "key":Landroid/os/BatteryConsumer$Key;
    .restart local v2    # "componentId":I
    .restart local v3    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_60
    move v4, v2

    move-object/from16 v16, v9

    move-object v9, v3

    .end local v2    # "componentId":I
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .restart local v4    # "componentId":I
    .restart local v9    # "key":Landroid/os/BatteryConsumer$Key;
    move-wide v3, v5

    move-wide v5, v7

    .end local v4    # "componentId":I
    .end local v7    # "durationMs":J
    .restart local v2    # "componentId":I
    .local v3, "powerDeciCoulombs":J
    .local v5, "durationMs":J
    iget v7, v9, Landroid/os/BatteryConsumer$Key;->processState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/os/PowerComponents;->writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V

    move-wide v7, v5

    move-wide v5, v3

    move v4, v2

    .line 249
    .end local v2    # "componentId":I
    .end local v3    # "powerDeciCoulombs":J
    .end local v5    # "durationMs":J
    .end local v9    # "key":Landroid/os/BatteryConsumer$Key;
    .restart local v4    # "componentId":I
    :goto_72
    move v1, v11

    .end local v11    # "interestingData":Z
    .local v1, "interestingData":Z
    :goto_73
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move v2, v4

    move-object/from16 v9, v16

    goto :goto_19

    .end local v4    # "componentId":I
    .restart local v2    # "componentId":I
    :cond_7b
    move v4, v2

    move-object/from16 v16, v9

    .line 247
    .end local v2    # "componentId":I
    .end local v13    # "keys":[Landroid/os/BatteryConsumer$Key;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    .line 278
    :cond_83
    return v1
.end method


# virtual methods
.method blacklist dump(Ljava/io/PrintWriter;IIZ)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "screenState"    # I
    .param p3, "powerState"    # I
    .param p4, "skipEmptyComponents"    # Z

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 177
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v8, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_f
    if-ge v9, v8, :cond_40

    aget v3, v0, v9

    .line 178
    .local v3, "id":I
    const/16 v1, 0x12

    if-ne v3, v1, :cond_1b

    .line 179
    move v5, p2

    move v6, p3

    move v7, p4

    goto :goto_3a

    .line 182
    :cond_1b
    const/4 v4, -0x1

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p2    # "screenState":I
    .end local p3    # "powerState":I
    .end local p4    # "skipEmptyComponents":Z
    .local v5, "screenState":I
    .local v6, "powerState":I
    .local v7, "skipEmptyComponents":Z
    invoke-direct/range {v1 .. v7}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    .line 183
    iget-object p2, v1, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object p2, p2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean p2, p2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    if-eqz p2, :cond_3a

    .line 184
    const/4 p2, 0x0

    move v4, p2

    .local v4, "processState":I
    :goto_2d
    const/4 p2, 0x5

    if-ge v4, p2, :cond_3a

    .line 186
    if-nez v4, :cond_33

    .line 187
    goto :goto_36

    .line 189
    :cond_33
    invoke-direct/range {v1 .. v7}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    .line 185
    :goto_36
    add-int/lit8 v4, v4, 0x1

    move-object v1, p0

    goto :goto_2d

    .line 177
    .end local v3    # "id":I
    .end local v4    # "processState":I
    :cond_3a
    :goto_3a
    add-int/lit8 v9, v9, 0x1

    move p2, v5

    move p3, v6

    move p4, v7

    goto :goto_f

    .end local v5    # "screenState":I
    .end local v6    # "powerState":I
    .end local v7    # "skipEmptyComponents":Z
    .restart local p2    # "screenState":I
    .restart local p3    # "powerState":I
    .restart local p4    # "skipEmptyComponents":Z
    :cond_40
    move v5, p2

    move v6, p3

    move v7, p4

    .line 195
    .end local p2    # "screenState":I
    .end local p3    # "powerState":I
    .end local p4    # "skipEmptyComponents":Z
    .restart local v5    # "screenState":I
    .restart local v6    # "powerState":I
    .restart local v7    # "skipEmptyComponents":Z
    :goto_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_63

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_63

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_43

    .line 199
    :cond_63
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public blacklist getConsumedPower(IIII)D
    .registers 14
    .param p1, "powerComponent"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 74
    const/4 v0, -0x1

    if-ne p1, v0, :cond_16

    if-ne p2, v0, :cond_16

    if-nez p3, :cond_16

    if-nez p4, :cond_16

    .line 76
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 79
    :cond_16
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    if-nez v1, :cond_25

    if-eqz p2, :cond_25

    if-eq p2, v0, :cond_25

    .line 81
    const-wide/16 v0, 0x0

    return-wide v0

    .line 84
    :cond_25
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 85
    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    if-eq p2, v0, :cond_36

    .line 86
    move v0, p2

    goto :goto_37

    :cond_36
    move v0, v3

    .line 87
    :goto_37
    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v2, :cond_43

    if-eqz p3, :cond_43

    .line 88
    move v2, p3

    goto :goto_44

    :cond_43
    move v2, v3

    .line 89
    :goto_44
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v4, :cond_50

    if-eqz p4, :cond_50

    .line 90
    move v4, p4

    goto :goto_51

    :cond_50
    move v4, v3

    .line 84
    :goto_51
    invoke-virtual {v1, p1, v0, v2, v4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 91
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v0, :cond_6a

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 92
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v1

    return-wide v1

    .line 95
    :cond_6a
    const-wide/16 v1, 0x0

    .line 96
    .local v1, "total":D
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v5, v4

    :goto_73
    if-ge v3, v5, :cond_89

    aget-object v6, v4, v3

    .line 97
    .local v6, "k":Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 98
    iget-object v7, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v6, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v7

    add-double/2addr v1, v7

    .line 96
    .end local v6    # "k":Landroid/os/BatteryConsumer$Key;
    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 101
    :cond_89
    return-wide v1
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D
    .registers 6
    .param p1, "dimensions"    # Landroid/os/BatteryConsumer$Dimensions;

    .line 63
    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Key;)D
    .registers 6
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;

    .line 147
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 148
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    .line 150
    :cond_13
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCustomPowerComponentName(I)Ljava/lang/String;
    .registers 3
    .param p1, "componentId"    # I

    .line 155
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getPowerComponentName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsageDurationMillis(IIII)J
    .registers 14
    .param p1, "powerComponent"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 119
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 120
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    if-eq p2, v1, :cond_12

    .line 121
    move v1, p2

    goto :goto_13

    :cond_12
    move v1, v2

    .line 122
    :goto_13
    iget-object v3, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v3, v3, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v3, :cond_1f

    if-eqz p3, :cond_1f

    .line 123
    move v3, p3

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 124
    :goto_20
    iget-object v4, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v4, :cond_2c

    if-eqz p4, :cond_2c

    .line 125
    move v4, p4

    goto :goto_2d

    :cond_2c
    move v4, v2

    .line 119
    :goto_2d
    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 126
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v0, :cond_46

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v3, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v3}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 127
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 130
    :cond_46
    const-wide/16 v3, 0x0

    .line 131
    .local v3, "total":J
    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v5, v1

    :goto_4f
    if-ge v2, v5, :cond_65

    aget-object v6, v1, v2

    .line 132
    .local v6, "k":Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 133
    iget-object v7, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v8, v6, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v7, v8}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 131
    .end local v6    # "k":Landroid/os/BatteryConsumer$Key;
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 136
    :cond_65
    return-wide v3
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J
    .registers 6
    .param p1, "dimensions"    # Landroid/os/BatteryConsumer$Dimensions;

    .line 108
    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J
    .registers 6
    .param p1, "key"    # Landroid/os/BatteryConsumer$Key;

    .line 166
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 167
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 170
    :cond_13
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist hasStatsProtoData()Z
    .registers 2

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    move-result v0

    return v0
.end method

.method blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 237
    invoke-direct {p0, p1}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    .line 238
    return-void
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 21
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "power_components"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    iget-object v4, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_8d

    aget-object v7, v4, v6

    .line 340
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    iget-object v8, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2c

    iget-object v8, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v9, v7, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 341
    invoke-virtual {v8, v9}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 342
    goto :goto_8a

    .line 345
    :cond_2c
    invoke-virtual {v0, v7}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v8

    .line 346
    .local v8, "powerMah":D
    invoke-virtual {v0, v7}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v10

    .line 347
    .local v10, "durationMs":J
    const-wide/16 v12, 0x0

    cmpl-double v14, v8, v12

    const-wide/16 v15, 0x0

    if-nez v14, :cond_41

    cmp-long v14, v10, v15

    if-nez v14, :cond_41

    .line 348
    goto :goto_8a

    .line 351
    :cond_41
    const-string v14, "component"

    invoke-interface {v1, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    move-wide/from16 v17, v12

    const-string/jumbo v12, "id"

    iget v13, v7, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    invoke-interface {v1, v2, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    iget v12, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v12, :cond_5c

    .line 354
    const-string/jumbo v12, "process_state"

    iget v13, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-interface {v1, v2, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    :cond_5c
    iget v12, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eqz v12, :cond_68

    .line 358
    const-string/jumbo v12, "screen_state"

    iget v13, v7, Landroid/os/BatteryConsumer$Key;->screenState:I

    invoke-interface {v1, v2, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    :cond_68
    iget v12, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eqz v12, :cond_74

    .line 362
    const-string/jumbo v12, "power_state"

    iget v13, v7, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-interface {v1, v2, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    :cond_74
    cmpl-double v12, v8, v17

    if-eqz v12, :cond_7e

    .line 366
    const-string/jumbo v12, "power"

    invoke-interface {v1, v2, v12, v8, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    :cond_7e
    cmp-long v12, v10, v15

    if-eqz v12, :cond_87

    .line 369
    const-string v12, "duration"

    invoke-interface {v1, v2, v12, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    :cond_87
    invoke-interface {v1, v2, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v8    # "powerMah":D
    .end local v10    # "durationMs":J
    :goto_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 373
    :cond_8d
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    return-void
.end method

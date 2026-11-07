.class public Lcom/android/internal/os/PowerStats$Descriptor;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Descriptor"
.end annotation


# static fields
.field public static final blacklist EXTRA_DEVICE_STATS_FORMAT:Ljava/lang/String; = "format-device"

.field public static final blacklist EXTRA_STATE_STATS_FORMAT:Ljava/lang/String; = "format-state"

.field public static final blacklist EXTRA_UID_STATS_FORMAT:Ljava/lang/String; = "format-uid"

.field private static final blacklist XML_ATTR_ID:Ljava/lang/String; = "id"

.field private static final blacklist XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist XML_ATTR_STATE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist XML_ATTR_STATE_LABEL:Ljava/lang/String; = "label"

.field private static final blacklist XML_ATTR_STATE_STATS_ARRAY_LENGTH:Ljava/lang/String; = "state-stats-array-length"

.field private static final blacklist XML_ATTR_STATS_ARRAY_LENGTH:Ljava/lang/String; = "stats-array-length"

.field private static final blacklist XML_ATTR_UID_STATS_ARRAY_LENGTH:Ljava/lang/String; = "uid-stats-array-length"

.field public static final blacklist XML_TAG_DESCRIPTOR:Ljava/lang/String; = "descriptor"

.field private static final blacklist XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final blacklist XML_TAG_STATE:Ljava/lang/String; = "state"


# instance fields
.field public final blacklist extras:Landroid/os/PersistableBundle;

.field private blacklist mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field private blacklist mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field private blacklist mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist powerComponentId:I

.field public final blacklist stateLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist stateStatsArrayLength:I

.field public final blacklist statsArrayLength:I

.field public final blacklist uidStatsArrayLength:I


# direct methods
.method public constructor blacklist <init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V
    .registers 15
    .param p1, "powerComponentId"    # I
    .param p2, "statsArrayLength"    # I
    .param p4, "stateStatsArrayLength"    # I
    .param p5, "uidStatsArrayLength"    # I
    .param p6, "extras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 142
    .local p3, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "powerComponentId":I
    .end local p2    # "statsArrayLength":I
    .end local p3    # "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local p4    # "stateStatsArrayLength":I
    .end local p5    # "uidStatsArrayLength":I
    .end local p6    # "extras":Landroid/os/PersistableBundle;
    .local v1, "powerComponentId":I
    .local v3, "statsArrayLength":I
    .local v4, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v5, "stateStatsArrayLength":I
    .local v6, "uidStatsArrayLength":I
    .local v7, "extras":Landroid/os/PersistableBundle;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 145
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V
    .registers 11
    .param p1, "powerComponentId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "statsArrayLength"    # I
    .param p5, "stateStatsArrayLength"    # I
    .param p6, "uidStatsArrayLength"    # I
    .param p7, "extras"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;II",
            "Landroid/os/PersistableBundle;",
            ")V"
        }
    .end annotation

    .line 150
    .local p4, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget v0, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    if-gt p3, v0, :cond_5f

    .line 155
    sget v0, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    if-gt p5, v0, :cond_43

    .line 159
    sget v0, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    if-gt p6, v0, :cond_27

    .line 163
    iput p1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 164
    iput-object p2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 165
    iput p3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 166
    if-eqz p4, :cond_19

    move-object v0, p4

    goto :goto_1e

    :cond_19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :goto_1e
    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    .line 167
    iput p5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    .line 168
    iput p6, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 169
    iput-object p7, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 170
    return-void

    .line 160
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uidStatsArrayLength is too high. Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/PowerStats;->MAX_UID_STATS_ARRAY_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateStatsArrayLength is too high. Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/PowerStats;->MAX_STATE_STATS_ARRAY_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statsArrayLength is too high. Max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/os/PowerStats;->MAX_STATS_ARRAY_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 16
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const/4 v0, -0x1

    .line 343
    .local v0, "powerComponentId":I
    const/4 v1, 0x0

    .line 344
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 345
    .local v2, "statsArrayLength":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    move-object v7, v3

    .line 346
    .local v7, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 347
    .local v3, "stateStatsArrayLength":I
    const/4 v4, 0x0

    .line 348
    .local v4, "uidStatsArrayLength":I
    const/4 v5, 0x0

    .line 349
    .local v5, "extras":Landroid/os/PersistableBundle;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v6

    move v8, v3

    move v9, v4

    move-object v10, v5

    move v5, v0

    move v0, v6

    move-object v6, v1

    .line 350
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "stateStatsArrayLength":I
    .end local v4    # "uidStatsArrayLength":I
    .local v0, "eventType":I
    .local v5, "powerComponentId":I
    .local v6, "name":Ljava/lang/String;
    .local v8, "stateStatsArrayLength":I
    .local v9, "uidStatsArrayLength":I
    .local v10, "extras":Landroid/os/PersistableBundle;
    :goto_16
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_9a

    const/4 v11, 0x3

    const-string v12, "descriptor"

    if-ne v0, v11, :cond_2a

    .line 352
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9a

    .line 353
    :cond_2a
    const/4 v11, 0x2

    if-ne v0, v11, :cond_94

    .line 354
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_d8

    :cond_38
    goto :goto_55

    :sswitch_39
    const-string/jumbo v11, "state"

    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    move v1, v3

    goto :goto_55

    :sswitch_44
    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v1, 0x0

    goto :goto_55

    :sswitch_4c
    const-string v3, "extras"

    invoke-virtual {v13, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    move v1, v11

    :goto_55
    packed-switch v1, :pswitch_data_e6

    goto :goto_94

    .line 371
    :pswitch_59
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    move-object v10, v1

    .end local v10    # "extras":Landroid/os/PersistableBundle;
    .local v1, "extras":Landroid/os/PersistableBundle;
    goto :goto_94

    .line 366
    .end local v1    # "extras":Landroid/os/PersistableBundle;
    .restart local v10    # "extras":Landroid/os/PersistableBundle;
    :pswitch_5f
    const-string v1, "key"

    invoke-interface {p0, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "value":I
    const-string v3, "label"

    invoke-interface {p0, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v7, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    goto :goto_94

    .line 356
    .end local v1    # "value":I
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_6f
    const-string v1, "id"

    invoke-interface {p0, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 357
    .end local v5    # "powerComponentId":I
    .local v1, "powerComponentId":I
    const-string v3, "name"

    invoke-interface {p0, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .end local v6    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "stats-array-length"

    invoke-interface {p0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 360
    const-string/jumbo v5, "state-stats-array-length"

    invoke-interface {p0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 362
    .end local v8    # "stateStatsArrayLength":I
    .local v5, "stateStatsArrayLength":I
    const-string/jumbo v6, "uid-stats-array-length"

    invoke-interface {p0, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 364
    .end local v9    # "uidStatsArrayLength":I
    .restart local v4    # "uidStatsArrayLength":I
    move-object v6, v3

    move v9, v4

    move v8, v5

    move v5, v1

    .line 375
    .end local v1    # "powerComponentId":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uidStatsArrayLength":I
    .local v5, "powerComponentId":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "stateStatsArrayLength":I
    .restart local v9    # "uidStatsArrayLength":I
    :cond_94
    :goto_94
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    goto/16 :goto_16

    .line 377
    :cond_9a
    if-ne v5, v1, :cond_9d

    .line 378
    return-object v4

    .line 379
    :cond_9d
    const/16 v1, 0x3e8

    if-lt v5, v1, :cond_b2

    .line 380
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    move-object v11, v10

    move v10, v9

    move v9, v8

    move-object v8, v7

    move v7, v2

    .end local v2    # "statsArrayLength":I
    .local v7, "statsArrayLength":I
    .local v8, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v9, "stateStatsArrayLength":I
    .local v10, "uidStatsArrayLength":I
    .local v11, "extras":Landroid/os/PersistableBundle;
    invoke-direct/range {v4 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    move-object v1, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    .end local v11    # "extras":Landroid/os/PersistableBundle;
    .local v1, "name":Ljava/lang/String;
    .local v6, "statsArrayLength":I
    .local v7, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local v8, "stateStatsArrayLength":I
    .local v9, "uidStatsArrayLength":I
    .local v10, "extras":Landroid/os/PersistableBundle;
    return-object v4

    .line 382
    .end local v1    # "name":Ljava/lang/String;
    .restart local v2    # "statsArrayLength":I
    .local v6, "name":Ljava/lang/String;
    :cond_b2
    move-object v1, v6

    move v6, v2

    .end local v2    # "statsArrayLength":I
    .restart local v1    # "name":Ljava/lang/String;
    .local v6, "statsArrayLength":I
    const/16 v2, 0x13

    if-ge v5, v2, :cond_be

    .line 383
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v4

    .line 386
    :cond_be
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized power component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-object v4

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x4cd5119d -> :sswitch_4c
        -0x2c9b2c91 -> :sswitch_44
        0x68ac491 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_5f
        :pswitch_59
    .end packed-switch
.end method

.method public static blacklist readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 13
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 246
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "firstWord":I
    and-int/lit16 v1, v0, 0xff

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I

    move-result v2

    ushr-int/2addr v1, v2

    .line 248
    .local v1, "version":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read PowerStats from Parcel - the parcel format version has changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PowerStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v2, 0x0

    return-object v2

    .line 253
    :cond_32
    const v2, 0xff00

    and-int/2addr v2, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I

    move-result v3

    ushr-int v7, v2, v3

    .line 255
    .local v7, "statsArrayLength":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v3

    ushr-int v9, v2, v3

    .line 257
    .local v9, "stateStatsArrayLength":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v3

    ushr-int v10, v2, v3

    .line 259
    .local v10, "uidStatsArrayLength":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    .local v5, "powerComponentId":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .local v2, "stateLabelCount":I
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 263
    .local v8, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move v3, v2

    .local v3, "i":I
    :goto_60
    if-lez v3, :cond_70

    .line 264
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 265
    .local v4, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, "label":Ljava/lang/String;
    invoke-virtual {v8, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    .end local v4    # "key":I
    .end local v11    # "label":Ljava/lang/String;
    add-int/lit8 v3, v3, -0x1

    goto :goto_60

    .line 268
    .end local v3    # "i":I
    :cond_70
    invoke-virtual {p0}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v11

    .line 269
    .local v11, "extras":Landroid/os/PersistableBundle;
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    return-object v4
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 276
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 277
    :cond_4
    instance-of v1, p1, Lcom/android/internal/os/PowerStats$Descriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 278
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 279
    .local v1, "that":Lcom/android/internal/os/PowerStats$Descriptor;
    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    if-ne v3, v4, :cond_7f

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    if-ne v3, v4, :cond_7f

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    .line 281
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_7f

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    if-ne v3, v4, :cond_7f

    iget v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iget v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    if-ne v3, v4, :cond_7f

    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    .line 284
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_7f

    .line 289
    :cond_3a
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->size()I

    move-result v3

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    if-eq v3, v4, :cond_49

    .line 290
    return v2

    .line 293
    :cond_49
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    iget-object v4, v1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 294
    return v0

    .line 302
    :cond_54
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 303
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v5, v4}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v4}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 304
    return v2

    .line 306
    .end local v4    # "key":Ljava/lang/String;
    :cond_7d
    goto :goto_5e

    .line 307
    :cond_7e
    return v0

    .line 285
    :cond_7f
    :goto_7f
    return v2
.end method

.method public blacklist getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_13

    .line 177
    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 178
    const-string v2, "format-device"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 180
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mDeviceStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public blacklist getStateLabel(I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # I

    .line 210
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 212
    return-object v0

    .line 214
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_13

    .line 188
    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 189
    const-string v2, "format-state"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 191
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mStateStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public blacklist getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    if-nez v0, :cond_13

    .line 199
    new-instance v0, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 200
    const-string v2, "format-uid"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 202
    :cond_13
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->mUidStatsFormatter:Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 393
    iget v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_9

    .line 399
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    .line 401
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerStats.Descriptor{powerComponentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateStatsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stateLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uidStatsArrayLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 221
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetPARCEL_FORMAT_VERSION_SHIFT()I

    move-result v1

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetSTATE_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-static {}, Lcom/android/internal/os/PowerStats;->-$$Nest$sfgetUID_STATS_ARRAY_LENGTH_SHIFT()I

    move-result v2

    shl-int/2addr v1, v2

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 229
    .local v0, "firstWord":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_47
    if-ge v1, v2, :cond_60

    .line 234
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 237
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_60
    iget-object v1, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const-string v0, "extras"

    const/4 v1, 0x0

    const-string v2, "descriptor"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    const-string v3, "id"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const-string v3, "name"

    iget-object v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    const-string/jumbo v3, "stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    const-string/jumbo v3, "state-stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 319
    const-string/jumbo v3, "uid-stats-array-length"

    iget v4, p0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_36
    if-ltz v3, :cond_5c

    .line 321
    const-string/jumbo v4, "state"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 322
    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const-string v6, "key"

    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    iget-object v5, p0, Lcom/android/internal/os/PowerStats$Descriptor;->stateLabels:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "label"

    invoke-interface {p1, v1, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    .line 327
    .end local v3    # "i":I
    :cond_5c
    :try_start_5c
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    iget-object v3, p0, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 329
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_67
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_67} :catch_6c

    .line 332
    nop

    .line 333
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    return-void

    .line 330
    :catch_6c
    move-exception v0

    .line 331
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

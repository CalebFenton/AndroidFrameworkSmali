.class public final Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;
.super Ljava/lang/Object;
.source "VirtualSensorAdditionalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist TYPE_INTERNAL_TEMPERATURE_PLAYLOAD_SIZE:I = 0x1

.field private static final blacklist TYPE_SAMPLING_PLAYLOAD_SIZE:I = 0x2

.field private static final blacklist TYPE_SENSOR_PLACEMENT_PAYLOAD_SIZE:I = 0xc

.field private static final blacklist TYPE_UNTRACKED_DELAY_PAYLOAD_SIZE:I = 0x2

.field private static final blacklist TYPE_VEC3_CALIBRATION_PAYLOAD_SIZE:I = 0xc


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "type"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    .line 140
    packed-switch p1, :pswitch_data_2a

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_26
    nop

    .line 150
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    .line 151
    return-void

    :pswitch_data_2a
    .packed-switch 0x10000
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method private blacklist assertValuesLength([FI)V
    .registers 6
    .param p1, "values"    # [F
    .param p2, "expected"    # I

    .line 190
    array-length v0, p1

    if-ne v0, p2, :cond_4

    .line 194
    return-void

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payload values must have size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addValues([F)Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;
    .registers 5
    .param p1, "values"    # [F

    .line 163
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 164
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    const/16 v1, 0xc

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_42

    goto :goto_26

    .line 169
    :pswitch_11
    invoke-direct {p0, p1, v2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    .line 170
    goto :goto_26

    .line 178
    :pswitch_15
    invoke-direct {p0, p1, v1}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    goto :goto_26

    .line 175
    :pswitch_19
    invoke-direct {p0, p1, v1}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    .line 176
    goto :goto_26

    .line 172
    :pswitch_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    .line 173
    goto :goto_26

    .line 166
    :pswitch_22
    invoke-direct {p0, p1, v2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->assertValuesLength([FI)V

    .line 167
    nop

    .line 179
    :goto_26
    goto :goto_33

    .line 181
    :cond_27
    array-length v0, p1

    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v1, v1

    if-ne v0, v1, :cond_39

    .line 185
    :goto_33
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0

    .line 182
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All payload values must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_42
    .packed-switch 0x10000
        :pswitch_22
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist build()Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
    .registers 5

    .line 204
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 207
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;

    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mType:I

    iget-object v2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;-><init>(ILjava/util/List;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo-IA;)V

    return-object v0

    .line 205
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Payload is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

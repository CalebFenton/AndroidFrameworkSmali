.class public final Landroid/os/AggregateBatteryConsumer;
.super Landroid/os/BatteryConsumer;
.source "AggregateBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AggregateBatteryConsumer$Builder;
    }
.end annotation


# static fields
.field static final blacklist COLUMN_COUNT:I = 0x3

.field static final blacklist COLUMN_INDEX_CONSUMED_POWER:I = 0x2

.field static final blacklist COLUMN_INDEX_SCOPE:I = 0x1

.field static final blacklist CONSUMER_TYPE_AGGREGATE:I


# direct methods
.method private constructor blacklist <init>(Landroid/os/AggregateBatteryConsumer$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/os/AggregateBatteryConsumer$Builder;

    .line 48
    iget-object v0, p1, Landroid/os/AggregateBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p1, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1}, Landroid/os/PowerComponents$Builder;->build()Landroid/os/PowerComponents;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/PowerComponents;)V

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/AggregateBatteryConsumer$Builder;Landroid/os/AggregateBatteryConsumer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/AggregateBatteryConsumer$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 44
    invoke-direct {p0, p1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 45
    return-void
.end method

.method static blacklist parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V
    .registers 11
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string/jumbo v0, "scope"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "scope":I
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    .line 81
    .local v2, "consumerBuilder":Landroid/os/AggregateBatteryConsumer$Builder;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    .line 82
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_54

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "aggregate"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 87
    nop

    .line 88
    const-string/jumbo v5, "power"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 87
    invoke-virtual {v2, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->addConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 90
    :goto_2a
    const/4 v1, 0x3

    if-ne v3, v1, :cond_37

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    :cond_37
    const/4 v1, 0x1

    if-eq v3, v1, :cond_53

    .line 93
    if-ne v3, v4, :cond_4e

    .line 94
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "power_components"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 95
    iget-object v1, v2, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-static {p0, v1}, Landroid/os/PowerComponents;->parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V

    .line 98
    :cond_4e
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    goto :goto_2a

    .line 100
    :cond_53
    return-void

    .line 84
    :cond_54
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "skipEmptyComponents"    # Z

    .line 57
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/PowerComponents;->dump(Ljava/io/PrintWriter;IIZ)V

    .line 58
    return-void
.end method

.method public blacklist getConsumedPower()D
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getScope()I
    .registers 3

    .line 52
    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p2, "scope"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    const-string v1, "aggregate"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string/jumbo v2, "scope"

    invoke-interface {p1, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    const-string/jumbo v2, "power"

    invoke-virtual {p0}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v2, p0, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v2, p1}, Landroid/os/PowerComponents;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 72
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    return-void
.end method

.class public Landroid/os/UserBatteryConsumer;
.super Landroid/os/BatteryConsumer;
.source "UserBatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserBatteryConsumer$Builder;
    }
.end annotation


# static fields
.field static final blacklist COLUMN_COUNT:I = 0x2

.field private static final blacklist COLUMN_INDEX_USER_ID:I = 0x1

.field static final blacklist CONSUMER_TYPE_USER:I = 0x2


# direct methods
.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2
    .param p1, "data"    # Landroid/os/BatteryConsumer$BatteryConsumerData;

    .line 46
    invoke-direct {p0, p1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    .line 47
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/UserBatteryConsumer$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/os/UserBatteryConsumer$Builder;

    .line 50
    iget-object v0, p1, Landroid/os/UserBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p1, Landroid/os/UserBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1}, Landroid/os/PowerComponents$Builder;->build()Landroid/os/PowerComponents;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/PowerComponents;)V

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UserBatteryConsumer$Builder;Landroid/os/UserBatteryConsumer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/UserBatteryConsumer;-><init>(Landroid/os/UserBatteryConsumer$Builder;)V

    return-void
.end method

.method static blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    const-string/jumbo v1, "user_id"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "userId":I
    nop

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object v1

    .line 88
    .local v1, "consumerBuilder":Landroid/os/UserBatteryConsumer$Builder;
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 89
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    .line 90
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 93
    :goto_21
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2e

    .line 94
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    :cond_2e
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4a

    .line 96
    if-ne v2, v3, :cond_45

    .line 97
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "power_components"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 98
    iget-object v4, v1, Landroid/os/UserBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-static {p0, v4}, Landroid/os/PowerComponents;->parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V

    .line 101
    :cond_45
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    goto :goto_21

    .line 103
    :cond_4a
    return-void

    .line 91
    :cond_4b
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "skipEmptyComponents"    # Z

    .line 59
    invoke-virtual {p0}, Landroid/os/UserBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    .line 60
    .local v0, "consumedPower":D
    const-string v2, "User "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 62
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v2, "      "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Landroid/os/UserBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3, p2}, Landroid/os/PowerComponents;->dump(Ljava/io/PrintWriter;IIZ)V

    .line 67
    return-void
.end method

.method public blacklist getUserId()I
    .registers 3

    .line 54
    iget-object v0, p0, Landroid/os/UserBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/os/UserBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_b

    .line 72
    return-void

    .line 75
    :cond_b
    const/4 v0, 0x0

    const-string/jumbo v1, "user"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    const-string/jumbo v2, "user_id"

    invoke-virtual {p0}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget-object v2, p0, Landroid/os/UserBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v2, p1}, Landroid/os/PowerComponents;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 78
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    return-void
.end method

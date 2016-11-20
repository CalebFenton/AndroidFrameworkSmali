.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final SHORTCUT_ID_ATTR:Ljava/lang/String; = "shortcutId"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    .line 80
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    #@8
    .line 82
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    #@b
    move-result-object v1

    #@c
    .line 85
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    .line 86
    const-string/jumbo v4, "lastTimeActive"

    #@11
    .line 85
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@14
    move-result-wide v4

    #@15
    add-long/2addr v2, v4

    #@16
    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@18
    .line 88
    const-string/jumbo v2, "timeActive"

    #@1b
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@21
    .line 89
    const-string/jumbo v2, "count"

    #@24
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@2a
    .line 90
    const-string/jumbo v2, "active"

    #@2d
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 91
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@35
    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@37
    .line 78
    :cond_0
    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 97
    const-string/jumbo v5, "package"

    #@4
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 98
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    #@a
    .line 99
    new-instance v4, Ljava/net/ProtocolException;

    #@c
    const-string/jumbo v5, "no package attribute present"

    #@f
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 102
    :cond_0
    const-string/jumbo v5, "class"

    #@16
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 104
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1, v3, v0}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    #@1d
    move-result-object v1

    #@1e
    .line 107
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@20
    const-string/jumbo v5, "time"

    #@23
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@26
    move-result-wide v8

    #@27
    add-long/2addr v6, v8

    #@28
    iput-wide v6, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@2a
    .line 109
    const-string/jumbo v5, "type"

    #@2d
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@30
    move-result v5

    #@31
    iput v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@33
    .line 110
    iget v5, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@35
    packed-switch v5, :pswitch_data_0

    #@38
    .line 121
    :goto_0
    :pswitch_0
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@3a
    if-nez v4, :cond_1

    #@3c
    .line 122
    new-instance v4, Landroid/app/usage/TimeSparseArray;

    #@3e
    invoke-direct {v4}, Landroid/app/usage/TimeSparseArray;-><init>()V

    #@41
    iput-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@43
    .line 124
    :cond_1
    iget-object v4, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@45
    iget-wide v6, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@47
    invoke-virtual {v4, v6, v7, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    #@4a
    .line 96
    return-void

    #@4b
    .line 112
    :pswitch_1
    new-instance v4, Landroid/content/res/Configuration;

    #@4d
    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    #@50
    iput-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@52
    .line 113
    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@54
    invoke-static {p0, v4}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    #@57
    goto :goto_0

    #@58
    .line 116
    :pswitch_2
    const-string/jumbo v5, "shortcutId"

    #@5b
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 117
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@61
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    :cond_2
    iput-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    #@67
    goto :goto_0

    #@68
    .line 110
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 63
    const-string/jumbo v2, "package"

    #@4
    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 64
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 65
    new-instance v2, Ljava/net/ProtocolException;

    #@c
    const-string/jumbo v3, "no package attribute present"

    #@f
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    #@16
    move-result-object v1

    #@17
    .line 71
    .local v1, "stats":Landroid/app/usage/UsageStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@19
    .line 72
    const-string/jumbo v4, "lastTimeActive"

    #@1c
    .line 71
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1f
    move-result-wide v4

    #@20
    add-long/2addr v2, v4

    #@21
    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@23
    .line 73
    const-string/jumbo v2, "timeActive"

    #@26
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@29
    move-result-wide v2

    #@2a
    iput-wide v2, v1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@2c
    .line 74
    const-string/jumbo v2, "lastEvent"

    #@2f
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@32
    move-result v2

    #@33
    iput v2, v1, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@35
    .line 62
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 200
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 201
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@b
    .line 202
    iput-object v4, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@d
    .line 204
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 205
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@13
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    #@16
    .line 208
    :cond_0
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@18
    const-string/jumbo v3, "endTime"

    #@1b
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1e
    move-result-wide v6

    #@1f
    add-long/2addr v4, v6

    #@20
    iput-wide v4, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@22
    .line 211
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@25
    move-result v1

    #@26
    .line 212
    .local v1, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@29
    move-result v0

    #@2a
    .local v0, "eventCode":I
    const/4 v3, 0x1

    #@2b
    if-eq v0, v3, :cond_5

    #@2d
    .line 213
    const/4 v3, 0x3

    #@2e
    if-ne v0, v3, :cond_2

    #@30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@33
    move-result v3

    #@34
    if-le v3, v1, :cond_5

    #@36
    .line 214
    :cond_2
    const/4 v3, 0x2

    #@37
    if-ne v0, v3, :cond_1

    #@39
    .line 218
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 219
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "package"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 221
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    #@49
    goto :goto_0

    #@4a
    .line 219
    :cond_3
    const-string/jumbo v3, "config"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_4

    #@53
    .line 225
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    #@56
    goto :goto_0

    #@57
    .line 219
    :cond_4
    const-string/jumbo v3, "event"

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_1

    #@60
    .line 229
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    #@63
    goto :goto_0

    #@64
    .line 199
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V
    .locals 11
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 244
    const-string/jumbo v5, "endTime"

    #@4
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    #@6
    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@8
    sub-long/2addr v6, v8

    #@9
    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@c
    .line 246
    const-string/jumbo v5, "packages"

    #@f
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 247
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@17
    move-result v4

    #@18
    .line 248
    .local v4, "statsCount":I
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@1b
    .line 249
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Landroid/app/usage/UsageStats;

    #@23
    invoke-static {p0, p1, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    #@26
    .line 248
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 251
    :cond_0
    const-string/jumbo v5, "packages"

    #@2c
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 253
    const-string/jumbo v5, "configurations"

    #@32
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 254
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@3a
    move-result v1

    #@3b
    .line 255
    .local v1, "configCount":I
    const/4 v3, 0x0

    #@3c
    :goto_1
    if-ge v3, v1, :cond_1

    #@3e
    .line 256
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@40
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@42
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Landroid/content/res/Configuration;

    #@48
    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@4b
    move-result v0

    #@4c
    .line 257
    .local v0, "active":Z
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@4e
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Landroid/app/usage/ConfigurationStats;

    #@54
    invoke-static {p0, p1, v5, v0}, Lcom/android/server/usage/UsageStatsXmlV1;->writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    #@57
    .line 255
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 259
    .end local v0    # "active":Z
    :cond_1
    const-string/jumbo v5, "configurations"

    #@5d
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@60
    .line 261
    const-string/jumbo v5, "event-log"

    #@63
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@66
    .line 262
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@68
    if-eqz v5, :cond_2

    #@6a
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@6c
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    #@6f
    move-result v2

    #@70
    .line 263
    .local v2, "eventCount":I
    :goto_2
    const/4 v3, 0x0

    #@71
    :goto_3
    if-ge v3, v2, :cond_3

    #@73
    .line 264
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@75
    invoke-virtual {v5, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    #@78
    move-result-object v5

    #@79
    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    #@7b
    invoke-static {p0, p1, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    #@7e
    .line 263
    add-int/lit8 v3, v3, 0x1

    #@80
    goto :goto_3

    #@81
    .line 262
    .end local v2    # "eventCount":I
    :cond_2
    const/4 v2, 0x0

    #@82
    .restart local v2    # "eventCount":I
    goto :goto_2

    #@83
    .line 266
    :cond_3
    const-string/jumbo v5, "event-log"

    #@86
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@89
    .line 243
    return-void
.end method

.method private static writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .locals 7
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p3, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 144
    const-string/jumbo v0, "config"

    #@4
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 147
    const-string/jumbo v0, "lastTimeActive"

    #@a
    .line 148
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    sub-long/2addr v2, v4

    #@f
    .line 147
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@12
    .line 150
    const-string/jumbo v0, "timeActive"

    #@15
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@17
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@1a
    .line 151
    const-string/jumbo v0, "count"

    #@1d
    iget v1, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@1f
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@22
    .line 152
    if-eqz p3, :cond_0

    #@24
    .line 153
    const-string/jumbo v0, "active"

    #@27
    const/4 v1, 0x1

    #@28
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@2b
    .line 157
    :cond_0
    iget-object v0, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@2d
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    #@30
    .line 159
    const-string/jumbo v0, "config"

    #@33
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 143
    return-void
.end method

.method private static writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 7
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 164
    const-string/jumbo v0, "event"

    #@4
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 167
    const-string/jumbo v0, "time"

    #@a
    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    sub-long/2addr v2, v4

    #@f
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@12
    .line 169
    const-string/jumbo v0, "package"

    #@15
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@17
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 170
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 171
    const-string/jumbo v0, "class"

    #@21
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@23
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 173
    :cond_0
    const-string/jumbo v0, "type"

    #@29
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@2b
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2e
    .line 175
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@30
    packed-switch v0, :pswitch_data_0

    #@33
    .line 188
    :cond_1
    :goto_0
    :pswitch_0
    const-string/jumbo v0, "event"

    #@36
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 163
    return-void

    #@3a
    .line 177
    :pswitch_1
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@3c
    if-eqz v0, :cond_1

    #@3e
    .line 178
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@40
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    #@43
    goto :goto_0

    #@44
    .line 182
    :pswitch_2
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    #@46
    if-eqz v0, :cond_1

    #@48
    .line 183
    const-string/jumbo v0, "shortcutId"

    #@4b
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    #@4d
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@50
    goto :goto_0

    #@51
    .line 175
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 7
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 129
    const-string/jumbo v0, "package"

    #@4
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 132
    const-string/jumbo v0, "lastTimeActive"

    #@a
    .line 133
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    sub-long/2addr v2, v4

    #@f
    .line 132
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@12
    .line 135
    const-string/jumbo v0, "package"

    #@15
    iget-object v1, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@17
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 136
    const-string/jumbo v0, "timeActive"

    #@1d
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@1f
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@22
    .line 137
    const-string/jumbo v0, "lastEvent"

    #@25
    iget v1, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@27
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2a
    .line 139
    const-string/jumbo v0, "package"

    #@2d
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30
    .line 128
    return-void
.end method

.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final BEGIN_IDLE_TIME_ATTR:Ljava/lang/String; = "beginIdleTime"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final LAST_TIME_ACTIVE_SYSTEM_ATTR:Ljava/lang/String; = "lastTimeActiveSystem"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 275
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
    .line 95
    new-instance v0, Landroid/content/res/Configuration;

    #@2
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@5
    .line 96
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    #@8
    .line 98
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    #@b
    move-result-object v1

    #@c
    .line 101
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    .line 102
    const-string/jumbo v4, "lastTimeActive"

    #@11
    .line 101
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@14
    move-result-wide v4

    #@15
    add-long/2addr v2, v4

    #@16
    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@18
    .line 104
    const-string/jumbo v2, "timeActive"

    #@1b
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@21
    .line 105
    const-string/jumbo v2, "count"

    #@24
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@2a
    .line 106
    const-string/jumbo v2, "active"

    #@2d
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 107
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@35
    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@37
    .line 94
    :cond_0
    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
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
    .line 113
    const-string/jumbo v3, "package"

    #@3
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 114
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    #@9
    .line 115
    new-instance v3, Ljava/net/ProtocolException;

    #@b
    const-string/jumbo v4, "no package attribute present"

    #@e
    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 118
    :cond_0
    const-string/jumbo v3, "class"

    #@15
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 120
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    #@1c
    move-result-object v1

    #@1d
    .line 123
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@1f
    const-string/jumbo v3, "time"

    #@22
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@25
    move-result-wide v6

    #@26
    add-long/2addr v4, v6

    #@27
    iput-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@29
    .line 125
    const-string/jumbo v3, "type"

    #@2c
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@2f
    move-result v3

    #@30
    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@32
    .line 126
    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@34
    const/4 v4, 0x5

    #@35
    if-ne v3, v4, :cond_1

    #@37
    .line 127
    new-instance v3, Landroid/content/res/Configuration;

    #@39
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    #@3c
    iput-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@3e
    .line 128
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@40
    invoke-static {p0, v3}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    #@43
    .line 131
    :cond_1
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@45
    if-nez v3, :cond_2

    #@47
    .line 132
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    #@49
    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    #@4c
    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@4e
    .line 134
    :cond_2
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@50
    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    #@52
    invoke-virtual {v3, v4, v5, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    #@55
    .line 112
    return-void
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 9
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
    const/4 v8, 0x0

    #@1
    .line 65
    const-string/jumbo v4, "package"

    #@4
    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 66
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_0

    #@a
    .line 67
    new-instance v4, Ljava/net/ProtocolException;

    #@c
    const-string/jumbo v5, "no package attribute present"

    #@f
    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4

    #@13
    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    #@16
    move-result-object v3

    #@17
    .line 73
    .local v3, "stats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@19
    .line 74
    const-string/jumbo v6, "lastTimeActive"

    #@1c
    .line 73
    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@1f
    move-result-wide v6

    #@20
    add-long/2addr v4, v6

    #@21
    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@23
    .line 77
    const-string/jumbo v4, "lastTimeActiveSystem"

    #@26
    .line 76
    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 78
    .local v1, "lastTimeUsedSystem":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_2

    #@30
    .line 80
    iget-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@32
    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@34
    .line 85
    :goto_0
    const-string/jumbo v4, "beginIdleTime"

    #@37
    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 86
    .local v0, "beginIdleTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v4

    #@3f
    if-nez v4, :cond_1

    #@41
    .line 87
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@44
    move-result-wide v4

    #@45
    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@47
    .line 89
    :cond_1
    const-string/jumbo v4, "timeActive"

    #@4a
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    #@4d
    move-result-wide v4

    #@4e
    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@50
    .line 90
    const-string/jumbo v4, "lastEvent"

    #@53
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    #@56
    move-result v4

    #@57
    iput v4, v3, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@59
    .line 64
    return-void

    #@5a
    .line 82
    .end local v0    # "beginIdleTime":Ljava/lang/String;
    :cond_2
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@5c
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@5f
    move-result-wide v6

    #@60
    add-long/2addr v4, v6

    #@61
    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@63
    goto :goto_0
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
    .line 205
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 206
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    #@b
    .line 207
    iput-object v4, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    #@d
    .line 209
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 210
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    #@13
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    #@16
    .line 213
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
    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@25
    move-result v1

    #@26
    .line 217
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
    .line 218
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
    .line 219
    :cond_2
    const/4 v3, 0x2

    #@37
    if-ne v0, v3, :cond_1

    #@39
    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 224
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "package"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-eqz v3, :cond_3

    #@46
    .line 226
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    #@49
    goto :goto_0

    #@4a
    .line 224
    :cond_3
    const-string/jumbo v3, "config"

    #@4d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_4

    #@53
    .line 230
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    #@56
    goto :goto_0

    #@57
    .line 224
    :cond_4
    const-string/jumbo v3, "event"

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_1

    #@60
    .line 234
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    #@63
    goto :goto_0

    #@64
    .line 204
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
    .line 249
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
    .line 251
    const-string/jumbo v5, "packages"

    #@f
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 252
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@17
    move-result v4

    #@18
    .line 253
    .local v4, "statsCount":I
    const/4 v3, 0x0

    #@19
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    #@1b
    .line 254
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
    .line 253
    add-int/lit8 v3, v3, 0x1

    #@28
    goto :goto_0

    #@29
    .line 256
    :cond_0
    const-string/jumbo v5, "packages"

    #@2c
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2f
    .line 259
    const-string/jumbo v5, "configurations"

    #@32
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 260
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    #@37
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@3a
    move-result v1

    #@3b
    .line 261
    .local v1, "configCount":I
    const/4 v3, 0x0

    #@3c
    :goto_1
    if-ge v3, v1, :cond_1

    #@3e
    .line 262
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
    .line 263
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
    .line 261
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 265
    .end local v0    # "active":Z
    :cond_1
    const-string/jumbo v5, "configurations"

    #@5d
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@60
    .line 267
    const-string/jumbo v5, "event-log"

    #@63
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@66
    .line 268
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
    .line 269
    .local v2, "eventCount":I
    :goto_2
    const/4 v3, 0x0

    #@71
    :goto_3
    if-ge v3, v2, :cond_3

    #@73
    .line 270
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
    .line 269
    add-int/lit8 v3, v3, 0x1

    #@80
    goto :goto_3

    #@81
    .line 268
    .end local v2    # "eventCount":I
    :cond_2
    const/4 v2, 0x0

    #@82
    .restart local v2    # "eventCount":I
    goto :goto_2

    #@83
    .line 272
    :cond_3
    const-string/jumbo v5, "event-log"

    #@86
    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@89
    .line 248
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
    .line 157
    const-string/jumbo v0, "config"

    #@4
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 160
    const-string/jumbo v0, "lastTimeActive"

    #@a
    .line 161
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    #@c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    sub-long/2addr v2, v4

    #@f
    .line 160
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@12
    .line 163
    const-string/jumbo v0, "timeActive"

    #@15
    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    #@17
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@1a
    .line 164
    const-string/jumbo v0, "count"

    #@1d
    iget v1, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    #@1f
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@22
    .line 165
    if-eqz p3, :cond_0

    #@24
    .line 166
    const-string/jumbo v0, "active"

    #@27
    const/4 v1, 0x1

    #@28
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    #@2b
    .line 170
    :cond_0
    iget-object v0, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    #@2d
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    #@30
    .line 172
    const-string/jumbo v0, "config"

    #@33
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@36
    .line 156
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
    .line 177
    const-string/jumbo v0, "event"

    #@4
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 180
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
    .line 182
    const-string/jumbo v0, "package"

    #@15
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    #@17
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    .line 183
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 184
    const-string/jumbo v0, "class"

    #@21
    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    #@23
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 186
    :cond_0
    const-string/jumbo v0, "type"

    #@29
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@2b
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@2e
    .line 188
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    #@30
    const/4 v1, 0x5

    #@31
    if-ne v0, v1, :cond_1

    #@33
    .line 189
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@35
    if-eqz v0, :cond_1

    #@37
    .line 190
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    #@39
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    #@3c
    .line 193
    :cond_1
    const-string/jumbo v0, "event"

    #@3f
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 176
    return-void
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
    .line 139
    const-string/jumbo v0, "package"

    #@4
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 142
    const-string/jumbo v0, "lastTimeActive"

    #@a
    .line 143
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    #@c
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@e
    sub-long/2addr v2, v4

    #@f
    .line 142
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@12
    .line 144
    const-string/jumbo v0, "lastTimeActiveSystem"

    #@15
    .line 145
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    #@17
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    #@19
    sub-long/2addr v2, v4

    #@1a
    .line 144
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@1d
    .line 147
    const-string/jumbo v0, "package"

    #@20
    iget-object v1, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    #@22
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 148
    const-string/jumbo v0, "timeActive"

    #@28
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    #@2a
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@2d
    .line 149
    const-string/jumbo v0, "lastEvent"

    #@30
    iget v1, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    #@32
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    #@35
    .line 150
    const-string/jumbo v0, "beginIdleTime"

    #@38
    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    #@3a
    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    #@3d
    .line 152
    const-string/jumbo v0, "package"

    #@40
    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 138
    return-void
.end method

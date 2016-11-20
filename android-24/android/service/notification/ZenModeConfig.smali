.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$1;,
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$Migration;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$XmlV1;,
        Landroid/service/notification/ZenModeConfig$ZenRule;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_MINUTES:I = 0x5a0

.field private static final DEFAULT_ALLOW_CALLS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = true

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = true

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = false

.field private static final DEFAULT_ALLOW_SCREEN_OFF:Z = true

.field private static final DEFAULT_ALLOW_SCREEN_ON:Z = true

.field private static final DEFAULT_SOURCE:I = 0x1

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I = 0x2

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final SECONDS_MS:I = 0x3e8

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEEKEND_DAYS:[I

.field public static final WEEKNIGHT_DAYS:[I

.field private static final XML_VERSION:I = 0x2

.field private static final ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowCalls:Z

.field public allowCallsFrom:I

.field public allowEvents:Z

.field public allowMessages:Z

.field public allowMessagesFrom:I

.field public allowReminders:Z

.field public allowRepeatCallers:Z

.field public allowWhenScreenOff:Z

.field public allowWhenScreenOn:Z

.field public automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public user:I


# direct methods
.method static synthetic -wrap0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5([I)Ljava/lang/String;
    .locals 1
    .param p0, "days"    # [I

    #@0
    .prologue
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x7

    #@1
    .line 56
    const-string/jumbo v0, "ZenModeConfig"

    #@4
    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@6
    .line 64
    new-array v0, v5, [I

    #@8
    fill-array-data v0, :array_0

    #@b
    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    #@d
    .line 66
    const/4 v0, 0x1

    #@e
    const/4 v1, 0x2

    #@f
    const/4 v2, 0x3

    #@10
    .line 67
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x5

    #@12
    .line 66
    filled-new-array {v0, v1, v2, v3, v4}, [I

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    #@18
    .line 68
    const/4 v0, 0x6

    #@19
    filled-new-array {v0, v5}, [I

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    #@1f
    .line 70
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    #@22
    move-result-object v0

    #@23
    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    #@25
    .line 616
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    #@27
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    #@2a
    .line 615
    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    .line 55
    return-void

    #@2d
    .line 64
    nop

    #@2e
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 122
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@7
    .line 123
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@9
    .line 124
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@b
    .line 125
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@d
    .line 126
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@f
    .line 127
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@11
    .line 128
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@13
    .line 129
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@15
    .line 130
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@17
    .line 131
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@19
    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@20
    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 122
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@7
    .line 123
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@9
    .line 124
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@b
    .line 125
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@d
    .line 126
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@f
    .line 127
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@11
    .line 128
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@13
    .line 129
    iput v6, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@15
    .line 130
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@17
    .line 131
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@19
    .line 134
    new-instance v4, Landroid/util/ArrayMap;

    #@1b
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@1e
    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@20
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v4

    #@24
    if-ne v4, v5, :cond_0

    #@26
    move v4, v5

    #@27
    :goto_0
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@29
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v4

    #@2d
    if-ne v4, v5, :cond_1

    #@2f
    move v4, v5

    #@30
    :goto_1
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@32
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v4

    #@36
    if-ne v4, v5, :cond_2

    #@38
    move v4, v5

    #@39
    :goto_2
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@3b
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v4

    #@3f
    if-ne v4, v5, :cond_3

    #@41
    move v4, v5

    #@42
    :goto_3
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@44
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v4

    #@48
    if-ne v4, v5, :cond_4

    #@4a
    move v4, v5

    #@4b
    :goto_4
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@4d
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v4

    #@51
    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@53
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v4

    #@57
    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@59
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v4

    #@5d
    iput v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@5f
    .line 147
    const/4 v4, 0x0

    #@60
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@63
    move-result-object v4

    #@64
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@66
    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@68
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6b
    move-result v2

    #@6c
    .line 149
    .local v2, "len":I
    if-lez v2, :cond_5

    #@6e
    .line 150
    new-array v1, v2, [Ljava/lang/String;

    #@70
    .line 151
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    #@72
    .line 152
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    #@75
    .line 153
    sget-object v4, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    #@77
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    #@7a
    .line 154
    const/4 v0, 0x0

    #@7b
    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    #@7d
    .line 155
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@7f
    aget-object v7, v1, v0

    #@81
    aget-object v8, v3, v0

    #@83
    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    .line 154
    add-int/lit8 v0, v0, 0x1

    #@88
    goto :goto_5

    #@89
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    #@8a
    .line 139
    goto :goto_0

    #@8b
    :cond_1
    move v4, v6

    #@8c
    .line 140
    goto :goto_1

    #@8d
    :cond_2
    move v4, v6

    #@8e
    .line 141
    goto :goto_2

    #@8f
    :cond_3
    move v4, v6

    #@90
    .line 142
    goto :goto_3

    #@91
    :cond_4
    move v4, v6

    #@92
    .line 143
    goto :goto_4

    #@93
    .line 158
    .restart local v2    # "len":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@96
    move-result v4

    #@97
    if-ne v4, v5, :cond_6

    #@99
    move v4, v5

    #@9a
    :goto_6
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@9c
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v4

    #@a0
    if-ne v4, v5, :cond_7

    #@a2
    :goto_7
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@a4
    .line 138
    return-void

    #@a5
    :cond_6
    move v4, v6

    #@a6
    .line 158
    goto :goto_6

    #@a7
    :cond_7
    move v5, v6

    #@a8
    .line 159
    goto :goto_7
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;",
            "Landroid/util/ArrayMap",
            "<TT;*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_0

    #@2
    .line 271
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 272
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@10
    .line 271
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 269
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 10
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    .line 210
    new-instance v2, Landroid/service/notification/ZenModeConfig$Diff;

    #@2
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    #@5
    .line 211
    .local v2, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-nez p1, :cond_0

    #@7
    .line 212
    const-string/jumbo v7, "config"

    #@a
    const-string/jumbo v8, "delete"

    #@d
    invoke-static {v2, v7, v8}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@10
    move-result-object v7

    #@11
    return-object v7

    #@12
    .line 214
    :cond_0
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@14
    iget v8, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@16
    if-eq v7, v8, :cond_1

    #@18
    .line 215
    const-string/jumbo v7, "user"

    #@1b
    iget v8, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@1d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v8

    #@21
    iget v9, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@23
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v9

    #@27
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@2a
    .line 217
    :cond_1
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@2c
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@2e
    if-eq v7, v8, :cond_2

    #@30
    .line 218
    const-string/jumbo v7, "allowCalls"

    #@33
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@35
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@38
    move-result-object v8

    #@39
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@3b
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@42
    .line 220
    :cond_2
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@44
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@46
    if-eq v7, v8, :cond_3

    #@48
    .line 221
    const-string/jumbo v7, "allowRepeatCallers"

    #@4b
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@4d
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@50
    move-result-object v8

    #@51
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@53
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@5a
    .line 223
    :cond_3
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@5c
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@5e
    if-eq v7, v8, :cond_4

    #@60
    .line 224
    const-string/jumbo v7, "allowMessages"

    #@63
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@65
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@68
    move-result-object v8

    #@69
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@6b
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@72
    .line 226
    :cond_4
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@74
    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@76
    if-eq v7, v8, :cond_5

    #@78
    .line 227
    const-string/jumbo v7, "allowCallsFrom"

    #@7b
    iget v8, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@7d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v8

    #@81
    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@83
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@86
    move-result-object v9

    #@87
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@8a
    .line 229
    :cond_5
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@8c
    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@8e
    if-eq v7, v8, :cond_6

    #@90
    .line 230
    const-string/jumbo v7, "allowMessagesFrom"

    #@93
    iget v8, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v8

    #@99
    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@9b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v9

    #@9f
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@a2
    .line 232
    :cond_6
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@a4
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@a6
    if-eq v7, v8, :cond_7

    #@a8
    .line 233
    const-string/jumbo v7, "allowReminders"

    #@ab
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@ad
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b0
    move-result-object v8

    #@b1
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@b3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b6
    move-result-object v9

    #@b7
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@ba
    .line 235
    :cond_7
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@bc
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@be
    if-eq v7, v8, :cond_8

    #@c0
    .line 236
    const-string/jumbo v7, "allowEvents"

    #@c3
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@c5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@c8
    move-result-object v8

    #@c9
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@cb
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@ce
    move-result-object v9

    #@cf
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@d2
    .line 238
    :cond_8
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@d4
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@d6
    if-eq v7, v8, :cond_9

    #@d8
    .line 239
    const-string/jumbo v7, "allowWhenScreenOff"

    #@db
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@dd
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e0
    move-result-object v8

    #@e1
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@e3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@ea
    .line 241
    :cond_9
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@ec
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@ee
    if-eq v7, v8, :cond_a

    #@f0
    .line 242
    const-string/jumbo v7, "allowWhenScreenOn"

    #@f3
    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@f5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f8
    move-result-object v8

    #@f9
    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@fb
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@fe
    move-result-object v9

    #@ff
    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    #@102
    .line 244
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    #@104
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@107
    .line 245
    .local v1, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@109
    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    #@10c
    .line 246
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@10e
    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    #@111
    .line 247
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@114
    move-result v0

    #@115
    .line 248
    .local v0, "N":I
    const/4 v4, 0x0

    #@116
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_d

    #@118
    .line 249
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@11b
    move-result-object v5

    #@11c
    check-cast v5, Ljava/lang/String;

    #@11e
    .line 250
    .local v5, "rule":Ljava/lang/String;
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@120
    if-eqz v7, :cond_b

    #@122
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@124
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@127
    move-result-object v3

    #@128
    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@12a
    .line 251
    :goto_1
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@12c
    if-eqz v7, :cond_c

    #@12e
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@130
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@133
    move-result-object v6

    #@134
    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@136
    .line 252
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v8, "automaticRule["

    #@13e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v7

    #@142
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v7

    #@146
    const-string/jumbo v8, "]"

    #@149
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v7

    #@14d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v7

    #@151
    invoke-static {v2, v7, v3, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    #@154
    .line 248
    add-int/lit8 v4, v4, 0x1

    #@156
    goto :goto_0

    #@157
    .line 250
    :cond_b
    const/4 v3, 0x0

    #@158
    .local v3, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_1

    #@159
    .line 251
    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_c
    const/4 v6, 0x0

    #@15a
    .local v6, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_2

    #@15b
    .line 254
    .end local v5    # "rule":Ljava/lang/String;
    .end local v6    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_d
    const-string/jumbo v7, "manualRule"

    #@15e
    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@160
    iget-object v9, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@162
    invoke-static {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    #@165
    .line 255
    return-object v2
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p0, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    .line 259
    if-nez p0, :cond_1

    #@2
    .line 260
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    #@4
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    #@7
    .line 261
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-eqz p1, :cond_0

    #@9
    .line 262
    const-string/jumbo v1, "config"

    #@c
    const-string/jumbo v2, "insert"

    #@f
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@12
    .line 264
    :cond_0
    return-object v0

    #@13
    .line 266
    .end local v0    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_1
    invoke-direct {p0, p1}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method private static generateMinuteBuckets()[I
    .locals 6

    #@0
    .prologue
    const/16 v4, 0xf

    #@2
    const/4 v5, 0x2

    #@3
    .line 305
    const/16 v2, 0xc

    #@5
    .line 306
    .local v2, "maxHrs":I
    new-array v0, v4, [I

    #@7
    .line 307
    .local v0, "buckets":[I
    const/4 v3, 0x0

    #@8
    aput v4, v0, v3

    #@a
    .line 308
    const/16 v3, 0x1e

    #@c
    const/4 v4, 0x1

    #@d
    aput v3, v0, v4

    #@f
    .line 309
    const/16 v3, 0x2d

    #@11
    aput v3, v0, v5

    #@13
    .line 310
    const/4 v1, 0x1

    #@14
    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    #@16
    if-gt v1, v3, :cond_0

    #@18
    .line 311
    add-int/lit8 v3, v1, 0x2

    #@1a
    mul-int/lit8 v4, v1, 0x3c

    #@1c
    aput v4, v0, v3

    #@1e
    .line 310
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 313
    :cond_0
    return-object v0
.end method

.method private static getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "useLine1"    # Z
    .param p4, "shortVersion"    # Z

    #@0
    .prologue
    .line 999
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v3, ""

    #@5
    return-object v3

    #@6
    .line 1000
    :cond_0
    move-object/from16 v0, p1

    #@8
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@a
    if-eqz v3, :cond_6

    #@c
    .line 1001
    move-object/from16 v0, p1

    #@e
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10
    iget-object v11, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@12
    .line 1002
    .local v11, "id":Landroid/net/Uri;
    if-nez v11, :cond_1

    #@14
    .line 1003
    const v3, 0x10405b1

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    return-object v3

    #@1e
    .line 1005
    :cond_1
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    #@21
    move-result-wide v4

    #@22
    .line 1006
    .local v4, "time":J
    move-object/from16 v0, p1

    #@24
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@26
    iget-object v10, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@28
    .line 1007
    .local v10, "c":Landroid/service/notification/Condition;
    const-wide/16 v6, 0x0

    #@2a
    cmp-long v3, v4, v6

    #@2c
    if-lez v3, :cond_2

    #@2e
    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31
    move-result-wide v12

    #@32
    .line 1009
    .local v12, "now":J
    sub-long v16, v4, v12

    #@34
    .line 1010
    .local v16, "span":J
    move-wide/from16 v0, v16

    #@36
    long-to-float v3, v0

    #@37
    const v6, 0x476a6000    # 60000.0f

    #@3a
    div-float/2addr v3, v6

    #@3b
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v6

    #@3f
    move-object/from16 v3, p0

    #@41
    move/from16 v7, p2

    #@43
    move/from16 v8, p4

    #@45
    invoke-static/range {v3 .. v8}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    #@48
    move-result-object v10

    #@49
    .line 1013
    .end local v12    # "now":J
    .end local v16    # "span":J
    :cond_2
    if-nez v10, :cond_4

    #@4b
    const-string/jumbo v14, ""

    #@4e
    .line 1014
    .local v14, "rt":Ljava/lang/String;
    :goto_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_3

    #@54
    const-string/jumbo v14, ""

    #@57
    .end local v14    # "rt":Ljava/lang/String;
    :cond_3
    return-object v14

    #@58
    .line 1013
    :cond_4
    if-eqz p3, :cond_5

    #@5a
    iget-object v14, v10, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@5c
    goto :goto_0

    #@5d
    :cond_5
    iget-object v14, v10, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@5f
    goto :goto_0

    #@60
    .line 1016
    .end local v4    # "time":J
    .end local v10    # "c":Landroid/service/notification/Condition;
    .end local v11    # "id":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v15, ""

    #@63
    .line 1017
    .local v15, "summary":Ljava/lang/String;
    move-object/from16 v0, p1

    #@65
    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@67
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@6a
    move-result-object v3

    #@6b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v9

    #@6f
    .local v9, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_9

    #@75
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v2

    #@79
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@7b
    .line 1018
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_7

    #@81
    .line 1019
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    #@84
    move-result v3

    #@85
    if-eqz v3, :cond_8

    #@87
    .line 1020
    iget-object v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@89
    goto :goto_1

    #@8a
    .line 1022
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8d
    move-result-object v3

    #@8e
    const/4 v6, 0x2

    #@8f
    new-array v6, v6, [Ljava/lang/Object;

    #@91
    .line 1023
    const/4 v7, 0x0

    #@92
    aput-object v15, v6, v7

    #@94
    .line 1024
    iget-object v7, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@96
    const/4 v8, 0x1

    #@97
    aput-object v7, v6, v8

    #@99
    .line 1023
    const v7, 0x10405b3

    #@9c
    .line 1022
    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v15

    #@a0
    goto :goto_1

    #@a1
    .line 1028
    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    return-object v15
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    #@0
    .prologue
    .line 994
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getEventConditionProvider()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 933
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "android"

    #@5
    const-string/jumbo v2, "EventConditionProvider"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method private static getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x5

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "EEE "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    const-string/jumbo v4, "Hm"

    #@18
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    .line 755
    .local v3, "skeleton":Ljava/lang/String;
    new-instance v1, Ljava/util/GregorianCalendar;

    #@22
    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    #@25
    .line 756
    .local v1, "now":Ljava/util/GregorianCalendar;
    new-instance v0, Ljava/util/GregorianCalendar;

    #@27
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@2a
    .line 757
    .local v0, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@2d
    .line 758
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    #@30
    move-result v4

    #@31
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    #@34
    move-result v5

    #@35
    if-ne v4, v5, :cond_0

    #@37
    .line 759
    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    #@3a
    move-result v4

    #@3b
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    #@3e
    move-result v5

    #@3f
    if-ne v4, v5, :cond_0

    #@41
    .line 760
    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    #@44
    move-result v4

    #@45
    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    #@48
    move-result v5

    #@49
    if-ne v4, v5, :cond_0

    #@4b
    .line 761
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_2

    #@51
    const-string/jumbo v3, "Hm"

    #@54
    .line 763
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@57
    move-result-object v4

    #@58
    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    .line 764
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@5f
    move-result-object v4

    #@60
    return-object v4

    #@61
    .line 754
    .end local v0    # "endTime":Ljava/util/GregorianCalendar;
    .end local v1    # "now":Ljava/util/GregorianCalendar;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "hma"

    #@64
    goto :goto_0

    #@65
    .line 761
    .restart local v0    # "endTime":Ljava/util/GregorianCalendar;
    .restart local v1    # "now":Ljava/util/GregorianCalendar;
    .restart local v3    # "skeleton":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "hma"

    #@68
    goto :goto_1
.end method

.method public static getScheduleConditionProvider()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 839
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "android"

    #@5
    const-string/jumbo v2, "ScheduleConditionProvider"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    .line 291
    if-eqz p0, :cond_0

    #@2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_1
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@e
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 292
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@16
    if-eqz v0, :cond_0

    #@18
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@1b
    move-result v0

    #@1c
    goto :goto_0
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 796
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 912
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static isValidHour(I)Z
    .locals 2
    .param p0, "val"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 556
    if-ltz p0, :cond_0

    #@3
    const/16 v1, 0x18

    #@5
    if-ge p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private static isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    .line 287
    if-eqz p0, :cond_0

    #@2
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@4
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public static isValidMinute(I)Z
    .locals 2
    .param p0, "val"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 560
    if-ltz p0, :cond_0

    #@3
    const/16 v1, 0x3c

    #@5
    if-ge p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 815
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static isValidSource(I)Z
    .locals 2
    .param p0, "source"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 564
    if-ltz p0, :cond_0

    #@3
    const/4 v1, 0x2

    #@4
    if-gt p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static newRuleId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 989
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "-"

    #@b
    const-string/jumbo v2, ""

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private static prioritySendersToSource(II)I
    .locals 1
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    #@0
    .prologue
    .line 670
    packed-switch p0, :pswitch_data_0

    #@3
    .line 674
    return p1

    #@4
    .line 671
    :pswitch_0
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 672
    :pswitch_1
    const/4 v0, 0x2

    #@7
    return v0

    #@8
    .line 673
    :pswitch_2
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 529
    const-string/jumbo v0, "id"

    #@5
    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v1

    #@9
    .line 530
    .local v1, "id":Landroid/net/Uri;
    if-nez v1, :cond_0

    #@b
    return-object v10

    #@c
    .line 531
    :cond_0
    const-string/jumbo v0, "summary"

    #@f
    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 532
    .local v2, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    #@16
    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 533
    .local v3, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    #@1d
    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 534
    .local v4, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    #@24
    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@27
    move-result v5

    #@28
    .line 535
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    #@2b
    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@2e
    move-result v6

    #@2f
    .line 536
    .local v6, "state":I
    const-string/jumbo v0, "flags"

    #@32
    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@35
    move-result v7

    #@36
    .line 538
    .local v7, "flags":I
    :try_start_0
    new-instance v0, Landroid/service/notification/Condition;

    #@38
    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    return-object v0

    #@3c
    .line 539
    :catch_0
    move-exception v8

    #@3d
    .line 540
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@3f
    const-string/jumbo v9, "Unable to read condition xml"

    #@42
    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 541
    return-object v10
.end method

.method public static readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 492
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@7
    .line 493
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v2, "enabled"

    #@a
    const/4 v3, 0x1

    #@b
    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@e
    move-result v2

    #@f
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@11
    .line 494
    const-string/jumbo v2, "snoozing"

    #@14
    const/4 v3, 0x0

    #@15
    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@18
    move-result v2

    #@19
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@1b
    .line 495
    const-string/jumbo v2, "name"

    #@1e
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@24
    .line 496
    const-string/jumbo v2, "zen"

    #@27
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 497
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    #@2e
    move-result v2

    #@2f
    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@31
    .line 498
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@33
    if-ne v2, v4, :cond_0

    #@35
    .line 499
    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "Bad zen mode in rule xml:"

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 500
    return-object v5

    #@4f
    .line 502
    :cond_0
    const-string/jumbo v2, "conditionId"

    #@52
    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@55
    move-result-object v2

    #@56
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@58
    .line 503
    const-string/jumbo v2, "component"

    #@5b
    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@61
    .line 504
    const-string/jumbo v2, "creationTime"

    #@64
    const-wide/16 v4, 0x0

    #@66
    invoke-static {p0, v2, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    #@69
    move-result-wide v2

    #@6a
    iput-wide v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@6c
    .line 505
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@72
    .line 506
    return-object v0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "migration"    # Landroid/service/notification/ZenModeConfig$Migration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 399
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v7

    #@4
    .line 400
    .local v7, "type":I
    const/4 v10, 0x2

    #@5
    if-eq v7, v10, :cond_0

    #@7
    const/4 v10, 0x0

    #@8
    return-object v10

    #@9
    .line 401
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    .line 402
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "zen"

    #@10
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v10

    #@14
    if-nez v10, :cond_1

    #@16
    const/4 v10, 0x0

    #@17
    return-object v10

    #@18
    .line 403
    :cond_1
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    #@1a
    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    #@1d
    .line 404
    .local v5, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v10, "version"

    #@20
    const/4 v11, 0x2

    #@21
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@24
    move-result v9

    #@25
    .line 405
    .local v9, "version":I
    const/4 v10, 0x1

    #@26
    if-ne v9, v10, :cond_2

    #@28
    .line 406
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;

    #@2b
    move-result-object v8

    #@2c
    .line 407
    .local v8, "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    invoke-interface {p1, v8}, Landroid/service/notification/ZenModeConfig$Migration;->migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;

    #@2f
    move-result-object v10

    #@30
    return-object v10

    #@31
    .line 409
    .end local v8    # "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    :cond_2
    const-string/jumbo v10, "user"

    #@34
    iget v11, v5, Landroid/service/notification/ZenModeConfig;->user:I

    #@36
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@39
    move-result v10

    #@3a
    iput v10, v5, Landroid/service/notification/ZenModeConfig;->user:I

    #@3c
    .line 410
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@3f
    move-result v7

    #@40
    const/4 v10, 0x1

    #@41
    if-eq v7, v10, :cond_9

    #@43
    .line 411
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    .line 412
    const/4 v10, 0x3

    #@48
    if-ne v7, v10, :cond_4

    #@4a
    const-string/jumbo v10, "zen"

    #@4d
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v10

    #@51
    if-eqz v10, :cond_4

    #@53
    .line 413
    return-object v5

    #@54
    .line 415
    :cond_4
    const/4 v10, 0x2

    #@55
    if-ne v7, v10, :cond_3

    #@57
    .line 416
    const-string/jumbo v10, "allow"

    #@5a
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v10

    #@5e
    if-eqz v10, :cond_7

    #@60
    .line 417
    const-string/jumbo v10, "calls"

    #@63
    const/4 v11, 0x0

    #@64
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@67
    move-result v10

    #@68
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@6a
    .line 418
    const-string/jumbo v10, "repeatCallers"

    #@6d
    .line 419
    const/4 v11, 0x0

    #@6e
    .line 418
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@71
    move-result v10

    #@72
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@74
    .line 420
    const-string/jumbo v10, "messages"

    #@77
    const/4 v11, 0x0

    #@78
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@7b
    move-result v10

    #@7c
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@7e
    .line 421
    const-string/jumbo v10, "reminders"

    #@81
    .line 422
    const/4 v11, 0x1

    #@82
    .line 421
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@85
    move-result v10

    #@86
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@88
    .line 423
    const-string/jumbo v10, "events"

    #@8b
    const/4 v11, 0x1

    #@8c
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@8f
    move-result v10

    #@90
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@92
    .line 424
    const-string/jumbo v10, "from"

    #@95
    const/4 v11, -0x1

    #@96
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@99
    move-result v2

    #@9a
    .line 425
    .local v2, "from":I
    const-string/jumbo v10, "callsFrom"

    #@9d
    const/4 v11, -0x1

    #@9e
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@a1
    move-result v1

    #@a2
    .line 426
    .local v1, "callsFrom":I
    const-string/jumbo v10, "messagesFrom"

    #@a5
    const/4 v11, -0x1

    #@a6
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@a9
    move-result v4

    #@aa
    .line 427
    .local v4, "messagesFrom":I
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    #@ad
    move-result v10

    #@ae
    if-eqz v10, :cond_5

    #@b0
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    #@b3
    move-result v10

    #@b4
    if-eqz v10, :cond_5

    #@b6
    .line 428
    iput v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@b8
    .line 429
    iput v4, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@ba
    .line 439
    :goto_1
    const-string/jumbo v10, "visualScreenOff"

    #@bd
    const/4 v11, 0x1

    #@be
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@c1
    move-result v10

    #@c2
    .line 438
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@c4
    .line 441
    const-string/jumbo v10, "visualScreenOn"

    #@c7
    const/4 v11, 0x1

    #@c8
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@cb
    move-result v10

    #@cc
    .line 440
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@ce
    goto/16 :goto_0

    #@d0
    .line 430
    :cond_5
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    #@d3
    move-result v10

    #@d4
    if-eqz v10, :cond_6

    #@d6
    .line 431
    sget-object v10, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@d8
    new-instance v11, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v12, "Migrating existing shared \'from\': "

    #@e0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v11

    #@e4
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@e7
    move-result-object v12

    #@e8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v11

    #@ec
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v11

    #@f0
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    .line 432
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@f5
    .line 433
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@f7
    goto :goto_1

    #@f8
    .line 435
    :cond_6
    const/4 v10, 0x1

    #@f9
    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@fb
    .line 436
    const/4 v10, 0x1

    #@fc
    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@fe
    goto :goto_1

    #@ff
    .line 442
    .end local v1    # "callsFrom":I
    .end local v2    # "from":I
    .end local v4    # "messagesFrom":I
    :cond_7
    const-string/jumbo v10, "manual"

    #@102
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@105
    move-result v10

    #@106
    if-eqz v10, :cond_8

    #@108
    .line 443
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10b
    move-result-object v10

    #@10c
    iput-object v10, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10e
    goto/16 :goto_0

    #@110
    .line 444
    :cond_8
    const-string/jumbo v10, "automatic"

    #@113
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@116
    move-result v10

    #@117
    if-eqz v10, :cond_3

    #@119
    .line 445
    const-string/jumbo v10, "ruleId"

    #@11c
    const/4 v11, 0x0

    #@11d
    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v3

    #@121
    .line 446
    .local v3, "id":Ljava/lang/String;
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    #@124
    move-result-object v0

    #@125
    .line 447
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_3

    #@127
    if-eqz v0, :cond_3

    #@129
    .line 448
    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    #@12b
    .line 449
    iget-object v10, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@12d
    invoke-virtual {v10, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@130
    goto/16 :goto_0

    #@132
    .line 454
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_9
    new-instance v10, Ljava/lang/IllegalStateException;

    #@134
    const-string/jumbo v11, "Failed to reach END_DOCUMENT"

    #@137
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13a
    throw v10
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    #@0
    .prologue
    .line 573
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    return p1

    #@7
    .line 574
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    #@0
    .prologue
    .line 568
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 569
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    #@8
    move-result v1

    #@9
    return v1
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 583
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 584
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return-object v2

    #@c
    .line 585
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    #@0
    .prologue
    .line 578
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 579
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method private static safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    #@0
    .prologue
    .line 595
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 596
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    #@8
    move-result-wide v2

    #@9
    return-wide v2
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 589
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 590
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return-object v2

    #@c
    .line 591
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method private static sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 296
    if-nez p0, :cond_0

    #@4
    return v1

    #@5
    .line 297
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@7
    if-nez v2, :cond_2

    #@9
    .line 298
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@b
    if-nez v2, :cond_1

    #@d
    :goto_0
    return v0

    #@e
    :cond_1
    move v0, v1

    #@f
    goto :goto_0

    #@10
    .line 300
    :cond_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@12
    if-eqz v1, :cond_3

    #@14
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@16
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@18
    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@1a
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    :cond_3
    return v0
.end method

.method private static sourceToPrioritySenders(II)I
    .locals 1
    .param p0, "source"    # I
    .param p1, "def"    # I

    #@0
    .prologue
    .line 661
    packed-switch p0, :pswitch_data_0

    #@3
    .line 665
    return p1

    #@4
    .line 662
    :pswitch_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 663
    :pswitch_1
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 664
    :pswitch_2
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # I

    #@0
    .prologue
    .line 317
    packed-switch p0, :pswitch_data_0

    #@3
    .line 325
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 319
    :pswitch_0
    const-string/jumbo v0, "anyone"

    #@a
    return-object v0

    #@b
    .line 321
    :pswitch_1
    const-string/jumbo v0, "contacts"

    #@e
    return-object v0

    #@f
    .line 323
    :pswitch_2
    const-string/jumbo v0, "stars"

    #@12
    return-object v0

    #@13
    .line 317
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toCountdownConditionId(J)Landroid/net/Uri;
    .locals 2
    .param p0, "time"    # J

    #@0
    .prologue
    .line 776
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "condition"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    .line 777
    const-string/jumbo v1, "android"

    #@f
    .line 776
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 778
    const-string/jumbo v1, "countdown"

    #@16
    .line 776
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 779
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 776
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method private static toDayList([I)Ljava/lang/String;
    .locals 3
    .param p0, "days"    # [I

    #@0
    .prologue
    .line 357
    if-eqz p0, :cond_0

    #@2
    array-length v2, p0

    #@3
    if-nez v2, :cond_1

    #@5
    :cond_0
    const-string/jumbo v2, ""

    #@8
    return-object v2

    #@9
    .line 358
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 359
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@10
    if-ge v0, v2, :cond_3

    #@12
    .line 360
    if-lez v0, :cond_2

    #@14
    const/16 v2, 0x2e

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 361
    :cond_2
    aget v2, p0, v0

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    .line 359
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 363
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2
.end method

.method public static toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    #@0
    .prologue
    .line 902
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "condition"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    .line 903
    const-string/jumbo v1, "android"

    #@f
    .line 902
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 904
    const-string/jumbo v1, "event"

    #@16
    .line 902
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 905
    const-string/jumbo v1, "userId"

    #@1d
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@1f
    int-to-long v2, v2

    #@20
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 902
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@27
    move-result-object v1

    #@28
    .line 906
    const-string/jumbo v2, "calendar"

    #@2b
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@2d
    if-eqz v0, :cond_0

    #@2f
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@31
    .line 902
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@34
    move-result-object v0

    #@35
    .line 907
    const-string/jumbo v1, "reply"

    #@38
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@3a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 902
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@45
    move-result-object v0

    #@46
    return-object v0

    #@47
    .line 906
    :cond_0
    const-string/jumbo v0, ""

    #@4a
    goto :goto_0
.end method

.method public static toNextAlarmCondition(Landroid/content/Context;JJI)Landroid/service/notification/Condition;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "now"    # J
    .param p3, "alarm"    # J
    .param p5, "userHandle"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 745
    move-wide/from16 v0, p3

    #@4
    move/from16 v2, p5

    #@6
    invoke-static {p0, v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    #@9
    move-result-object v11

    #@a
    .line 746
    .local v11, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v12

    #@e
    .line 747
    .local v12, "res":Landroid/content/res/Resources;
    new-array v3, v9, [Ljava/lang/Object;

    #@10
    aput-object v11, v3, v8

    #@12
    const v5, 0x10405b0

    #@15
    invoke-virtual {v12, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    .line 748
    .local v6, "line1":Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    #@1c
    move-result-object v4

    #@1d
    .line 749
    .local v4, "id":Landroid/net/Uri;
    new-instance v3, Landroid/service/notification/Condition;

    #@1f
    const-string/jumbo v5, ""

    #@22
    const-string/jumbo v7, ""

    #@25
    move v10, v9

    #@26
    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@29
    return-object v3
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@0
    .prologue
    .line 804
    new-instance v0, Landroid/net/Uri$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    #@5
    const-string/jumbo v1, "condition"

    #@8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@b
    move-result-object v0

    #@c
    .line 805
    const-string/jumbo v1, "android"

    #@f
    .line 804
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 806
    const-string/jumbo v1, "schedule"

    #@16
    .line 804
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 807
    const-string/jumbo v1, "days"

    #@1d
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@1f
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 804
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@26
    move-result-object v0

    #@27
    .line 808
    const-string/jumbo v1, "start"

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    const-string/jumbo v3, "."

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 804
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@49
    move-result-object v0

    #@4a
    .line 809
    const-string/jumbo v1, "end"

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    const-string/jumbo v3, "."

    #@5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    .line 804
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@6c
    move-result-object v0

    #@6d
    .line 810
    const-string/jumbo v1, "exitAtAlarm"

    #@70
    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    #@72
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    .line 804
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@7d
    move-result-object v0

    #@7e
    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 698
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    #@0
    .prologue
    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v10

    #@4
    .line 704
    .local v10, "now":J
    if-nez p1, :cond_0

    #@6
    const/16 v0, 0x2710

    #@8
    :goto_0
    int-to-long v8, v0

    #@9
    .line 705
    .local v8, "millis":J
    add-long v2, v10, v8

    #@b
    move-object v1, p0

    #@c
    move v4, p1

    #@d
    move v5, p2

    #@e
    move v6, p3

    #@f
    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 704
    .end local v8    # "millis":J
    :cond_0
    const v0, 0xea60

    #@17
    mul-int/2addr v0, p1

    #@18
    goto :goto_0
.end method

.method public static toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    #@0
    .prologue
    .line 712
    move-object/from16 v0, p0

    #@2
    move-wide/from16 v1, p1

    #@4
    move/from16 v3, p4

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    #@9
    move-result-object v12

    #@a
    .line 713
    .local v12, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object v15

    #@e
    .line 714
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v4, 0x3c

    #@10
    move/from16 v0, p3

    #@12
    if-ge v0, v4, :cond_2

    #@14
    .line 716
    move/from16 v14, p3

    #@16
    .line 717
    .local v14, "num":I
    if-eqz p5, :cond_0

    #@18
    const v16, 0x114001c

    #@1b
    .line 719
    .local v16, "summaryResId":I
    :goto_0
    const/4 v4, 0x2

    #@1c
    new-array v4, v4, [Ljava/lang/Object;

    #@1e
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v9

    #@22
    const/4 v10, 0x0

    #@23
    aput-object v9, v4, v10

    #@25
    const/4 v9, 0x1

    #@26
    aput-object v12, v4, v9

    #@28
    move/from16 v0, v16

    #@2a
    move/from16 v1, p3

    #@2c
    invoke-virtual {v15, v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 720
    .local v6, "summary":Ljava/lang/String;
    if-eqz p5, :cond_1

    #@32
    const v13, 0x1140020

    #@35
    .line 722
    .local v13, "line1ResId":I
    :goto_1
    const/4 v4, 0x2

    #@36
    new-array v4, v4, [Ljava/lang/Object;

    #@38
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v9

    #@3c
    const/4 v10, 0x0

    #@3d
    aput-object v9, v4, v10

    #@3f
    const/4 v9, 0x1

    #@40
    aput-object v12, v4, v9

    #@42
    move/from16 v0, p3

    #@44
    invoke-virtual {v15, v13, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v7

    #@48
    .line 723
    .local v7, "line1":Ljava/lang/String;
    const/4 v4, 0x1

    #@49
    new-array v4, v4, [Ljava/lang/Object;

    #@4b
    const/4 v9, 0x0

    #@4c
    aput-object v12, v4, v9

    #@4e
    const v9, 0x10405af

    #@51
    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    .line 738
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    .local v8, "line2":Ljava/lang/String;
    :goto_2
    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    #@58
    move-result-object v5

    #@59
    .line 739
    .local v5, "id":Landroid/net/Uri;
    new-instance v4, Landroid/service/notification/Condition;

    #@5b
    const/4 v9, 0x0

    #@5c
    const/4 v10, 0x1

    #@5d
    .line 740
    const/4 v11, 0x1

    #@5e
    .line 739
    invoke-direct/range {v4 .. v11}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@61
    return-object v4

    #@62
    .line 718
    .end local v5    # "id":Landroid/net/Uri;
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .restart local v14    # "num":I
    :cond_0
    const v16, 0x114001b

    #@65
    .restart local v16    # "summaryResId":I
    goto :goto_0

    #@66
    .line 721
    .restart local v6    # "summary":Ljava/lang/String;
    :cond_1
    const v13, 0x114001f

    #@69
    .restart local v13    # "line1ResId":I
    goto :goto_1

    #@6a
    .line 724
    .end local v6    # "summary":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_2
    const/16 v4, 0x5a0

    #@6c
    move/from16 v0, p3

    #@6e
    if-ge v0, v4, :cond_5

    #@70
    .line 726
    move/from16 v0, p3

    #@72
    int-to-float v4, v0

    #@73
    const/high16 v9, 0x42700000    # 60.0f

    #@75
    div-float/2addr v4, v9

    #@76
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@79
    move-result v14

    #@7a
    .line 727
    .restart local v14    # "num":I
    if-eqz p5, :cond_3

    #@7c
    const v16, 0x114001e

    #@7f
    .line 729
    .restart local v16    # "summaryResId":I
    :goto_3
    const/4 v4, 0x2

    #@80
    new-array v4, v4, [Ljava/lang/Object;

    #@82
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v9

    #@86
    const/4 v10, 0x0

    #@87
    aput-object v9, v4, v10

    #@89
    const/4 v9, 0x1

    #@8a
    aput-object v12, v4, v9

    #@8c
    move/from16 v0, v16

    #@8e
    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    .line 730
    .restart local v6    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_4

    #@94
    const v13, 0x1140022

    #@97
    .line 732
    .restart local v13    # "line1ResId":I
    :goto_4
    const/4 v4, 0x2

    #@98
    new-array v4, v4, [Ljava/lang/Object;

    #@9a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v9

    #@9e
    const/4 v10, 0x0

    #@9f
    aput-object v9, v4, v10

    #@a1
    const/4 v9, 0x1

    #@a2
    aput-object v12, v4, v9

    #@a4
    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@a7
    move-result-object v7

    #@a8
    .line 733
    .restart local v7    # "line1":Ljava/lang/String;
    const/4 v4, 0x1

    #@a9
    new-array v4, v4, [Ljava/lang/Object;

    #@ab
    const/4 v9, 0x0

    #@ac
    aput-object v12, v4, v9

    #@ae
    const v9, 0x10405af

    #@b1
    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@b4
    move-result-object v8

    #@b5
    .restart local v8    # "line2":Ljava/lang/String;
    goto :goto_2

    #@b6
    .line 728
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v16    # "summaryResId":I
    :cond_3
    const v16, 0x114001d

    #@b9
    .restart local v16    # "summaryResId":I
    goto :goto_3

    #@ba
    .line 731
    .restart local v6    # "summary":Ljava/lang/String;
    :cond_4
    const v13, 0x1140021

    #@bd
    .restart local v13    # "line1ResId":I
    goto :goto_4

    #@be
    .line 736
    .end local v6    # "summary":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_5
    const/4 v4, 0x1

    #@bf
    new-array v4, v4, [Ljava/lang/Object;

    #@c1
    const/4 v9, 0x0

    #@c2
    aput-object v12, v4, v9

    #@c4
    const v9, 0x10405af

    #@c7
    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@ca
    move-result-object v8

    #@cb
    .restart local v8    # "line2":Ljava/lang/String;
    move-object v7, v8

    #@cc
    .restart local v7    # "line1":Ljava/lang/String;
    move-object v6, v8

    #@cd
    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_2
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 784
    const-string/jumbo v1, "android"

    #@5
    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    return-wide v4

    #@c
    .line 785
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x2

    #@15
    if-ne v1, v2, :cond_1

    #@17
    .line 786
    const-string/jumbo v1, "countdown"

    #@1a
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@1d
    move-result-object v2

    #@1e
    const/4 v3, 0x0

    #@1f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 788
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x1

    #@2e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/lang/String;

    #@34
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result-wide v2

    #@38
    return-wide v2

    #@39
    .line 786
    :cond_1
    return-wide v4

    #@3a
    .line 789
    :catch_0
    move-exception v0

    #@3b
    .line 790
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Error parsing countdown condition: "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@54
    .line 791
    return-wide v4
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 367
    if-nez p0, :cond_0

    #@4
    return-object v5

    #@5
    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 369
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    #@a
    if-nez v4, :cond_1

    #@c
    return-object v5

    #@d
    .line 370
    :cond_1
    array-length v4, v3

    #@e
    new-array v2, v4, [I

    #@10
    .line 371
    .local v2, "rt":[I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@12
    if-ge v1, v4, :cond_3

    #@14
    .line 372
    aget-object v4, v3, v1

    #@16
    invoke-static {v4, v6}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@19
    move-result v0

    #@1a
    .line 373
    .local v0, "day":I
    if-ne v0, v6, :cond_2

    #@1c
    return-object v5

    #@1d
    .line 374
    :cond_2
    aput v0, v2, v1

    #@1f
    .line 371
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 376
    .end local v0    # "day":I
    :cond_3
    return-object v2
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 10
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 916
    if-eqz p0, :cond_0

    #@6
    .line 917
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const-string/jumbo v4, "condition"

    #@d
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    .line 916
    if-eqz v2, :cond_0

    #@13
    .line 918
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v4, "android"

    #@1a
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    .line 916
    if-eqz v2, :cond_0

    #@20
    .line 919
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@27
    move-result v2

    #@28
    const/4 v4, 0x1

    #@29
    if-ne v2, v4, :cond_0

    #@2b
    .line 920
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/lang/String;

    #@35
    const-string/jumbo v4, "event"

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    .line 921
    .local v0, "isEvent":Z
    :goto_0
    if-nez v0, :cond_1

    #@3e
    return-object v6

    #@3f
    .end local v0    # "isEvent":Z
    :cond_0
    move v0, v3

    #@40
    .line 916
    goto :goto_0

    #@41
    .line 922
    .restart local v0    # "isEvent":Z
    :cond_1
    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@43
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    #@46
    .line 923
    .local v1, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v2, "userId"

    #@49
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    const/16 v4, -0x2710

    #@4f
    invoke-static {v2, v4}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@52
    move-result v2

    #@53
    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@55
    .line 924
    const-string/jumbo v2, "calendar"

    #@58
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@5e
    .line 925
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@63
    move-result v2

    #@64
    if-nez v2, :cond_2

    #@66
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@68
    invoke-static {v2, v8, v9}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    #@6b
    move-result-wide v4

    #@6c
    cmp-long v2, v4, v8

    #@6e
    if-eqz v2, :cond_3

    #@70
    .line 926
    :cond_2
    iput-object v6, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@72
    .line 928
    :cond_3
    const-string/jumbo v2, "reply"

    #@75
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@7c
    move-result v2

    #@7d
    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@7f
    .line 929
    return-object v1
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 975
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    return-object v3

    #@b
    .line 976
    :cond_0
    const/16 v4, 0x2e

    #@d
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v1

    #@11
    .line 977
    .local v1, "i":I
    if-lt v1, v7, :cond_1

    #@13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v4

    #@17
    add-int/lit8 v4, v4, -0x1

    #@19
    if-lt v1, v4, :cond_2

    #@1b
    :cond_1
    return-object v3

    #@1c
    .line 978
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@23
    move-result v0

    #@24
    .line 979
    .local v0, "hour":I
    add-int/lit8 v4, v1, 0x1

    #@26
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@2d
    move-result v2

    #@2e
    .line 980
    .local v2, "minute":I
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_3

    #@34
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_3

    #@3a
    const/4 v3, 0x2

    #@3b
    new-array v3, v3, [I

    #@3d
    aput v0, v3, v6

    #@3f
    aput v2, v3, v7

    #@41
    :cond_3
    return-object v3
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    #@0
    .prologue
    .line 380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return p1

    #@7
    .line 382
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    return v1

    #@c
    .line 383
    :catch_0
    move-exception v0

    #@d
    .line 384
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    #@0
    .prologue
    .line 389
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return-wide p1

    #@7
    .line 391
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-wide v2

    #@f
    return-wide v2

    #@10
    .line 392
    :catch_0
    move-exception v0

    #@11
    .line 393
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 9
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 819
    if-eqz p0, :cond_0

    #@5
    .line 820
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v6, "condition"

    #@c
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    .line 819
    if-eqz v4, :cond_0

    #@12
    .line 821
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v6, "android"

    #@19
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    .line 819
    if-eqz v4, :cond_0

    #@1f
    .line 822
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@22
    move-result-object v4

    #@23
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@26
    move-result v4

    #@27
    if-ne v4, v8, :cond_0

    #@29
    .line 823
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Ljava/lang/String;

    #@33
    const-string/jumbo v6, "schedule"

    #@36
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    .line 824
    .local v1, "isSchedule":Z
    :goto_0
    if-nez v1, :cond_1

    #@3c
    return-object v7

    #@3d
    .end local v1    # "isSchedule":Z
    :cond_0
    move v1, v5

    #@3e
    .line 819
    goto :goto_0

    #@3f
    .line 825
    .restart local v1    # "isSchedule":Z
    :cond_1
    const-string/jumbo v4, "start"

    #@42
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    #@49
    move-result-object v3

    #@4a
    .line 826
    .local v3, "start":[I
    const-string/jumbo v4, "end"

    #@4d
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    #@54
    move-result-object v0

    #@55
    .line 827
    .local v0, "end":[I
    if-eqz v3, :cond_2

    #@57
    if-nez v0, :cond_3

    #@59
    :cond_2
    return-object v7

    #@5a
    .line 828
    :cond_3
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@5c
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@5f
    .line 829
    .local v2, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string/jumbo v4, "days"

    #@62
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    const-string/jumbo v6, "\\."

    #@69
    invoke-static {v4, v6}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    #@6c
    move-result-object v4

    #@6d
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@6f
    .line 830
    aget v4, v3, v5

    #@71
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@73
    .line 831
    aget v4, v3, v8

    #@75
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@77
    .line 832
    aget v4, v0, v5

    #@79
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@7b
    .line 833
    aget v4, v0, v8

    #@7d
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@7f
    .line 834
    const-string/jumbo v4, "exitAtAlarm"

    #@82
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    #@89
    move-result v4

    #@8a
    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    #@8c
    .line 835
    return-object v2
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    #@0
    .prologue
    .line 984
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    .line 985
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .end local v0    # "rt":I
    :goto_0
    return v0

    #@b
    .restart local v0    # "rt":I
    :cond_0
    move v0, p1

    #@c
    goto :goto_0
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 546
    const-string/jumbo v0, "id"

    #@4
    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    #@6
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 547
    const-string/jumbo v0, "summary"

    #@10
    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@12
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 548
    const-string/jumbo v0, "line1"

    #@18
    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@1a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 549
    const-string/jumbo v0, "line2"

    #@20
    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@22
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 550
    const-string/jumbo v0, "icon"

    #@28
    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 551
    const-string/jumbo v0, "state"

    #@34
    iget v1, p0, Landroid/service/notification/Condition;->state:I

    #@36
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3d
    .line 552
    const-string/jumbo v0, "flags"

    #@40
    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    #@42
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 545
    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 510
    const-string/jumbo v0, "enabled"

    #@4
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@6
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 511
    const-string/jumbo v0, "snoozing"

    #@10
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@12
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 512
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 513
    const-string/jumbo v0, "name"

    #@20
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@22
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 515
    :cond_0
    const-string/jumbo v0, "zen"

    #@28
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 516
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 517
    const-string/jumbo v0, "component"

    #@38
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@3a
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 519
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@43
    if-eqz v0, :cond_2

    #@45
    .line 520
    const-string/jumbo v0, "conditionId"

    #@48
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@4a
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 522
    :cond_2
    const-string/jumbo v0, "creationTime"

    #@54
    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    #@56
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5d
    .line 523
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@5f
    if-eqz v0, :cond_3

    #@61
    .line 524
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@63
    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    #@66
    .line 509
    :cond_3
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 4
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 679
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    .line 680
    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@7
    and-int/lit8 v0, v0, 0x8

    #@9
    if-eqz v0, :cond_2

    #@b
    move v0, v1

    #@c
    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@e
    .line 681
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@10
    and-int/lit8 v0, v0, 0x4

    #@12
    if-eqz v0, :cond_3

    #@14
    move v0, v1

    #@15
    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@17
    .line 682
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@19
    and-int/lit8 v0, v0, 0x2

    #@1b
    if-eqz v0, :cond_4

    #@1d
    move v0, v1

    #@1e
    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@20
    .line 683
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@22
    and-int/lit8 v0, v0, 0x1

    #@24
    if-eqz v0, :cond_5

    #@26
    move v0, v1

    #@27
    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@29
    .line 684
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@2b
    and-int/lit8 v0, v0, 0x10

    #@2d
    if-eqz v0, :cond_6

    #@2f
    move v0, v1

    #@30
    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@32
    .line 686
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@34
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@36
    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@3c
    .line 687
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@3e
    .line 688
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@40
    .line 687
    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    #@43
    move-result v0

    #@44
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@46
    .line 689
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@48
    const/4 v3, -0x1

    #@49
    if-eq v0, v3, :cond_1

    #@4b
    .line 691
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@4d
    and-int/lit8 v0, v0, 0x1

    #@4f
    if-nez v0, :cond_7

    #@51
    move v0, v1

    #@52
    .line 690
    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@54
    .line 693
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    #@56
    and-int/lit8 v0, v0, 0x2

    #@58
    if-nez v0, :cond_8

    #@5a
    .line 692
    :goto_6
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@5c
    .line 678
    :cond_1
    return-void

    #@5d
    :cond_2
    move v0, v2

    #@5e
    .line 680
    goto :goto_0

    #@5f
    :cond_3
    move v0, v2

    #@60
    .line 681
    goto :goto_1

    #@61
    :cond_4
    move v0, v2

    #@62
    .line 682
    goto :goto_2

    #@63
    :cond_5
    move v0, v2

    #@64
    .line 683
    goto :goto_3

    #@65
    :cond_6
    move v0, v2

    #@66
    .line 684
    goto :goto_4

    #@67
    :cond_7
    move v0, v2

    #@68
    .line 691
    goto :goto_5

    #@69
    :cond_8
    move v1, v2

    #@6a
    .line 693
    goto :goto_6
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    #@0
    .prologue
    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 607
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 608
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    .line 609
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    #@e
    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@14
    .line 609
    return-object v1

    #@15
    .line 610
    :catchall_0
    move-exception v1

    #@16
    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 610
    throw v1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 601
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 331
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 332
    :cond_0
    if-ne p1, p0, :cond_1

    #@8
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 333
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    #@d
    .line 334
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@f
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 335
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@15
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 336
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@1b
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 337
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@21
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@23
    if-ne v2, v3, :cond_2

    #@25
    .line 338
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@27
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@29
    if-ne v2, v3, :cond_2

    #@2b
    .line 339
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@2d
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@2f
    if-ne v2, v3, :cond_2

    #@31
    .line 340
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@33
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@35
    if-ne v2, v3, :cond_2

    #@37
    .line 341
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@39
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    .line 342
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@3f
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@41
    if-ne v2, v3, :cond_2

    #@43
    .line 343
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    #@45
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@47
    if-ne v2, v3, :cond_2

    #@49
    .line 344
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@4b
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@4d
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@50
    move-result v2

    #@51
    .line 334
    if-eqz v2, :cond_2

    #@53
    .line 345
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@55
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@57
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    .line 334
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 350
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x1

    #@14
    aput-object v1, v0, v2

    #@16
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v1

    #@25
    const/4 v2, 0x3

    #@26
    aput-object v1, v0, v2

    #@28
    .line 351
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x4

    #@2f
    aput-object v1, v0, v2

    #@31
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@36
    move-result-object v1

    #@37
    const/4 v2, 0x5

    #@38
    aput-object v1, v0, v2

    #@3a
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@3c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3f
    move-result-object v1

    #@40
    const/4 v2, 0x6

    #@41
    aput-object v1, v0, v2

    #@43
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@48
    move-result-object v1

    #@49
    const/4 v2, 0x7

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 352
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@4e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@51
    move-result-object v1

    #@52
    const/16 v2, 0x8

    #@54
    aput-object v1, v0, v2

    #@56
    .line 353
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v1

    #@5c
    const/16 v2, 0x9

    #@5e
    aput-object v1, v0, v2

    #@60
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@62
    const/16 v2, 0xa

    #@64
    aput-object v1, v0, v2

    #@66
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@68
    const/16 v2, 0xb

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 350
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@6f
    move-result v0

    #@70
    return v0
.end method

.method public isValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 278
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@3
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    return v3

    #@a
    .line 279
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v0

    #@10
    .line 280
    .local v0, "N":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@13
    .line 281
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@1b
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_1

    #@21
    return v3

    #@22
    .line 280
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 283
    :cond_2
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 5

    #@0
    .prologue
    .line 629
    const/4 v1, 0x0

    #@1
    .line 630
    .local v1, "priorityCategories":I
    const/4 v0, 0x1

    #@2
    .line 631
    .local v0, "priorityCallSenders":I
    const/4 v2, 0x1

    #@3
    .line 632
    .local v2, "priorityMessageSenders":I
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 633
    const/16 v1, 0x8

    #@9
    .line 635
    :cond_0
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 636
    or-int/lit8 v1, v1, 0x4

    #@f
    .line 638
    :cond_1
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 639
    or-int/lit8 v1, v1, 0x2

    #@15
    .line 641
    :cond_2
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 642
    or-int/lit8 v1, v1, 0x1

    #@1b
    .line 644
    :cond_3
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@1d
    if-eqz v4, :cond_4

    #@1f
    .line 645
    or-int/lit8 v1, v1, 0x10

    #@21
    .line 647
    :cond_4
    const/4 v3, 0x0

    #@22
    .line 648
    .local v3, "suppressedVisualEffects":I
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@24
    if-nez v4, :cond_5

    #@26
    .line 649
    const/4 v3, 0x1

    #@27
    .line 651
    :cond_5
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@29
    if-nez v4, :cond_6

    #@2b
    .line 652
    or-int/lit8 v3, v3, 0x2

    #@2d
    .line 654
    :cond_6
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@2f
    invoke-static {v4, v0}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    #@32
    move-result v0

    #@33
    .line 655
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@35
    invoke-static {v4, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    #@38
    move-result v2

    #@39
    .line 656
    new-instance v4, Landroid/app/NotificationManager$Policy;

    #@3b
    invoke-direct {v4, v1, v0, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    #@3e
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-class v1, Landroid/service/notification/ZenModeConfig;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    const/16 v1, 0x5b

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 194
    const-string/jumbo v1, "user="

    #@14
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 194
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@1a
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 195
    const-string/jumbo v1, ",allowCalls="

    #@21
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 195
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@27
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 196
    const-string/jumbo v1, ",allowRepeatCallers="

    #@2e
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 196
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@34
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 197
    const-string/jumbo v1, ",allowMessages="

    #@3b
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 197
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@41
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 198
    const-string/jumbo v1, ",allowCallsFrom="

    #@48
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 198
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@4e
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 199
    const-string/jumbo v1, ",allowMessagesFrom="

    #@59
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 199
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@5f
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 200
    const-string/jumbo v1, ",allowReminders="

    #@6a
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 200
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@70
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 201
    const-string/jumbo v1, ",allowEvents="

    #@77
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 201
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@7d
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 202
    const-string/jumbo v1, ",allowWhenScreenOff="

    #@84
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 202
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@8a
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 203
    const-string/jumbo v1, ",allowWhenScreenOn="

    #@91
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    .line 203
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@97
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 204
    const-string/jumbo v1, ",automaticRules="

    #@9e
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    .line 204
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@a4
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 205
    const-string/jumbo v1, ",manualRule="

    #@ab
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    .line 205
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@b1
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    .line 206
    const/16 v1, 0x5d

    #@b7
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 164
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    move v4, v5

    #@7
    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 165
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@c
    if-eqz v4, :cond_1

    #@e
    move v4, v5

    #@f
    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 166
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@14
    if-eqz v4, :cond_2

    #@16
    move v4, v5

    #@17
    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 167
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@1c
    if-eqz v4, :cond_3

    #@1e
    move v4, v5

    #@1f
    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 168
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@24
    if-eqz v4, :cond_4

    #@26
    move v4, v5

    #@27
    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 169
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@2c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 170
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@31
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 171
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@36
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 172
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@3b
    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3e
    .line 173
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@40
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    #@43
    move-result v4

    #@44
    if-nez v4, :cond_6

    #@46
    .line 174
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@48
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@4b
    move-result v2

    #@4c
    .line 175
    .local v2, "len":I
    new-array v1, v2, [Ljava/lang/String;

    #@4e
    .line 176
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    #@50
    .line 177
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    #@51
    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    #@53
    .line 178
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@55
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@58
    move-result-object v4

    #@59
    check-cast v4, Ljava/lang/String;

    #@5b
    aput-object v4, v1, v0

    #@5d
    .line 179
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@5f
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@62
    move-result-object v4

    #@63
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@65
    aput-object v4, v3, v0

    #@67
    .line 177
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_5

    #@6a
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    #@6b
    .line 164
    goto :goto_0

    #@6c
    :cond_1
    move v4, v6

    #@6d
    .line 165
    goto :goto_1

    #@6e
    :cond_2
    move v4, v6

    #@6f
    .line 166
    goto :goto_2

    #@70
    :cond_3
    move v4, v6

    #@71
    .line 167
    goto :goto_3

    #@72
    :cond_4
    move v4, v6

    #@73
    .line 168
    goto :goto_4

    #@74
    .line 181
    .restart local v0    # "i":I
    .restart local v1    # "ids":[Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    .line 182
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@7a
    .line 183
    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@7d
    .line 187
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_6
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@7f
    if-eqz v4, :cond_7

    #@81
    move v4, v5

    #@82
    :goto_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    .line 188
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@87
    if-eqz v4, :cond_8

    #@89
    :goto_8
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 163
    return-void

    #@8d
    .line 185
    :cond_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    goto :goto_6

    #@91
    :cond_7
    move v4, v6

    #@92
    .line 187
    goto :goto_7

    #@93
    :cond_8
    move v5, v6

    #@94
    .line 188
    goto :goto_8
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 458
    const-string/jumbo v4, "zen"

    #@4
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 459
    const-string/jumbo v4, "version"

    #@a
    const/4 v5, 0x2

    #@b
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 460
    const-string/jumbo v4, "user"

    #@15
    iget v5, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@17
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1e
    .line 462
    const-string/jumbo v4, "allow"

    #@21
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 463
    const-string/jumbo v4, "calls"

    #@27
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@29
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@30
    .line 464
    const-string/jumbo v4, "repeatCallers"

    #@33
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@35
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3c
    .line 465
    const-string/jumbo v4, "messages"

    #@3f
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@41
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@48
    .line 466
    const-string/jumbo v4, "reminders"

    #@4b
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@4d
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@54
    .line 467
    const-string/jumbo v4, "events"

    #@57
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@59
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@60
    .line 468
    const-string/jumbo v4, "callsFrom"

    #@63
    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@65
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 469
    const-string/jumbo v4, "messagesFrom"

    #@6f
    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@71
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@78
    .line 470
    const-string/jumbo v4, "visualScreenOff"

    #@7b
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    #@7d
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@84
    .line 471
    const-string/jumbo v4, "visualScreenOn"

    #@87
    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    #@89
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@90
    .line 472
    const-string/jumbo v4, "allow"

    #@93
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@96
    .line 474
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@98
    if-eqz v4, :cond_0

    #@9a
    .line 475
    const-string/jumbo v4, "manual"

    #@9d
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a0
    .line 476
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@a2
    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    #@a5
    .line 477
    const-string/jumbo v4, "manual"

    #@a8
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ab
    .line 479
    :cond_0
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@ad
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@b0
    move-result v0

    #@b1
    .line 480
    .local v0, "N":I
    const/4 v2, 0x0

    #@b2
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@b4
    .line 481
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@b6
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b9
    move-result-object v3

    #@ba
    check-cast v3, Ljava/lang/String;

    #@bc
    .line 482
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@be
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c1
    move-result-object v1

    #@c2
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@c4
    .line 483
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v4, "automatic"

    #@c7
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ca
    .line 484
    const-string/jumbo v4, "ruleId"

    #@cd
    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d0
    .line 485
    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    #@d3
    .line 486
    const-string/jumbo v4, "automatic"

    #@d6
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d9
    .line 480
    add-int/lit8 v2, v2, 0x1

    #@db
    goto :goto_0

    #@dc
    .line 488
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "zen"

    #@df
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e2
    .line 457
    return-void
.end method

.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$XmlV1;,
        Landroid/service/notification/ZenModeConfig$Migration;,
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$1;
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

.field private static final DEFAULT_ALLOW_CALLS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = true

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = true

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = false

.field private static final DEFAULT_SOURCE:I = 0x1

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I = 0x2

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

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
    .line 54
    const-string/jumbo v0, "ZenModeConfig"

    #@4
    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@6
    .line 62
    new-array v0, v5, [I

    #@8
    fill-array-data v0, :array_0

    #@b
    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    #@d
    .line 64
    const/4 v0, 0x1

    #@e
    const/4 v1, 0x2

    #@f
    const/4 v2, 0x3

    #@10
    .line 65
    const/4 v3, 0x4

    #@11
    const/4 v4, 0x5

    #@12
    .line 64
    filled-new-array {v0, v1, v2, v3, v4}, [I

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    #@18
    .line 66
    const/4 v0, 0x6

    #@19
    filled-new-array {v0, v5}, [I

    #@1c
    move-result-object v0

    #@1d
    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    #@1f
    .line 68
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    #@22
    move-result-object v0

    #@23
    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    #@25
    .line 580
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    #@27
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    #@2a
    .line 579
    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    .line 53
    return-void

    #@2d
    .line 62
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
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 114
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@7
    .line 115
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@9
    .line 116
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@b
    .line 117
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@d
    .line 118
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@f
    .line 119
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@11
    .line 120
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@13
    .line 121
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@15
    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1c
    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 114
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@7
    .line 115
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@9
    .line 116
    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@b
    .line 117
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@d
    .line 118
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@f
    .line 119
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@11
    .line 120
    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@13
    .line 121
    iput v6, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@15
    .line 124
    new-instance v4, Landroid/util/ArrayMap;

    #@17
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@1a
    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@1c
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v4

    #@20
    if-ne v4, v5, :cond_0

    #@22
    move v4, v5

    #@23
    :goto_0
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@25
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v4

    #@29
    if-ne v4, v5, :cond_1

    #@2b
    move v4, v5

    #@2c
    :goto_1
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@2e
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v4

    #@32
    if-ne v4, v5, :cond_2

    #@34
    move v4, v5

    #@35
    :goto_2
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@37
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v4

    #@3b
    if-ne v4, v5, :cond_3

    #@3d
    move v4, v5

    #@3e
    :goto_3
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@40
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v4

    #@44
    if-ne v4, v5, :cond_4

    #@46
    :goto_4
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@48
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v4

    #@4c
    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@4e
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v4

    #@52
    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@54
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v4

    #@58
    iput v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@5a
    .line 137
    const/4 v4, 0x0

    #@5b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5e
    move-result-object v4

    #@5f
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@61
    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@63
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@66
    move-result v2

    #@67
    .line 139
    .local v2, "len":I
    if-lez v2, :cond_5

    #@69
    .line 140
    new-array v1, v2, [Ljava/lang/String;

    #@6b
    .line 141
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    #@6d
    .line 142
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    #@70
    .line 143
    sget-object v4, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    #@72
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    #@75
    .line 144
    const/4 v0, 0x0

    #@76
    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    #@78
    .line 145
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@7a
    aget-object v5, v1, v0

    #@7c
    aget-object v6, v3, v0

    #@7e
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 144
    add-int/lit8 v0, v0, 0x1

    #@83
    goto :goto_5

    #@84
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    #@85
    .line 129
    goto :goto_0

    #@86
    :cond_1
    move v4, v6

    #@87
    .line 130
    goto :goto_1

    #@88
    :cond_2
    move v4, v6

    #@89
    .line 131
    goto :goto_2

    #@8a
    :cond_3
    move v4, v6

    #@8b
    .line 132
    goto :goto_3

    #@8c
    :cond_4
    move v5, v6

    #@8d
    .line 133
    goto :goto_4

    #@8e
    .line 128
    .restart local v2    # "len":I
    :cond_5
    return-void
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
    .line 248
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_0

    #@2
    .line 249
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
    .line 250
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@10
    .line 249
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 247
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 10
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    .line 194
    new-instance v2, Landroid/service/notification/ZenModeConfig$Diff;

    #@2
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    #@5
    .line 195
    .local v2, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-nez p1, :cond_0

    #@7
    .line 196
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
    .line 198
    :cond_0
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@14
    iget v8, p1, Landroid/service/notification/ZenModeConfig;->user:I

    #@16
    if-eq v7, v8, :cond_1

    #@18
    .line 199
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
    .line 201
    :cond_1
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@2c
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@2e
    if-eq v7, v8, :cond_2

    #@30
    .line 202
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
    .line 204
    :cond_2
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@44
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@46
    if-eq v7, v8, :cond_3

    #@48
    .line 205
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
    .line 207
    :cond_3
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@5c
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@5e
    if-eq v7, v8, :cond_4

    #@60
    .line 208
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
    .line 210
    :cond_4
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@74
    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@76
    if-eq v7, v8, :cond_5

    #@78
    .line 211
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
    .line 213
    :cond_5
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@8c
    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@8e
    if-eq v7, v8, :cond_6

    #@90
    .line 214
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
    .line 216
    :cond_6
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@a4
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@a6
    if-eq v7, v8, :cond_7

    #@a8
    .line 217
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
    .line 219
    :cond_7
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@bc
    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@be
    if-eq v7, v8, :cond_8

    #@c0
    .line 220
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
    .line 222
    :cond_8
    new-instance v1, Landroid/util/ArraySet;

    #@d4
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@d7
    .line 223
    .local v1, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@d9
    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    #@dc
    .line 224
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@de
    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    #@e1
    .line 225
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@e4
    move-result v0

    #@e5
    .line 226
    .local v0, "N":I
    const/4 v4, 0x0

    #@e6
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_b

    #@e8
    .line 227
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@eb
    move-result-object v5

    #@ec
    check-cast v5, Ljava/lang/String;

    #@ee
    .line 228
    .local v5, "rule":Ljava/lang/String;
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@f0
    if-eqz v7, :cond_9

    #@f2
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@f4
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f7
    move-result-object v3

    #@f8
    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@fa
    .line 229
    :goto_1
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@fc
    if-eqz v7, :cond_a

    #@fe
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@100
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    move-result-object v6

    #@104
    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@106
    .line 230
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    const-string/jumbo v8, "automaticRule["

    #@10e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v7

    #@112
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v7

    #@116
    const-string/jumbo v8, "]"

    #@119
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v7

    #@11d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v7

    #@121
    invoke-static {v2, v7, v3, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    #@124
    .line 226
    add-int/lit8 v4, v4, 0x1

    #@126
    goto :goto_0

    #@127
    .line 228
    :cond_9
    const/4 v3, 0x0

    #@128
    .local v3, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_1

    #@129
    .line 229
    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_a
    const/4 v6, 0x0

    #@12a
    .local v6, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    goto :goto_2

    #@12b
    .line 232
    .end local v5    # "rule":Ljava/lang/String;
    .end local v6    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_b
    const-string/jumbo v7, "manualRule"

    #@12e
    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@130
    iget-object v9, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@132
    invoke-static {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    #@135
    .line 233
    return-object v2
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .locals 3
    .param p0, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    #@0
    .prologue
    .line 237
    if-nez p0, :cond_1

    #@2
    .line 238
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    #@4
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    #@7
    .line 239
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-eqz p1, :cond_0

    #@9
    .line 240
    const-string/jumbo v1, "config"

    #@c
    const-string/jumbo v2, "insert"

    #@f
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    #@12
    .line 242
    :cond_0
    return-object v0

    #@13
    .line 244
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
    .line 283
    const/16 v2, 0xc

    #@5
    .line 284
    .local v2, "maxHrs":I
    new-array v0, v4, [I

    #@7
    .line 285
    .local v0, "buckets":[I
    const/4 v3, 0x0

    #@8
    aput v4, v0, v3

    #@a
    .line 286
    const/16 v3, 0x1e

    #@c
    const/4 v4, 0x1

    #@d
    aput v3, v0, v4

    #@f
    .line 287
    const/16 v3, 0x2d

    #@11
    aput v3, v0, v5

    #@13
    .line 288
    const/4 v1, 0x1

    #@14
    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    #@16
    if-gt v1, v3, :cond_0

    #@18
    .line 289
    add-int/lit8 v3, v1, 0x2

    #@1a
    mul-int/lit8 v4, v1, 0x3c

    #@1c
    aput v4, v0, v3

    #@1e
    .line 288
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 291
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
    .line 898
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v2, ""

    #@5
    return-object v2

    #@6
    .line 899
    :cond_0
    move-object/from16 v0, p1

    #@8
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@a
    if-eqz v2, :cond_6

    #@c
    .line 900
    move-object/from16 v0, p1

    #@e
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@10
    iget-object v13, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@12
    .line 901
    .local v13, "id":Landroid/net/Uri;
    if-nez v13, :cond_1

    #@14
    .line 902
    const v2, 0x1040572

    #@17
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 904
    :cond_1
    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    #@21
    move-result-wide v3

    #@22
    .line 905
    .local v3, "time":J
    move-object/from16 v0, p1

    #@24
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@26
    iget-object v12, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@28
    .line 906
    .local v12, "c":Landroid/service/notification/Condition;
    const-wide/16 v8, 0x0

    #@2a
    cmp-long v2, v3, v8

    #@2c
    if-lez v2, :cond_2

    #@2e
    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31
    move-result-wide v6

    #@32
    .line 908
    .local v6, "now":J
    sub-long v16, v3, v6

    #@34
    .line 910
    .local v16, "span":J
    move-wide/from16 v0, v16

    #@36
    long-to-float v2, v0

    #@37
    const v5, 0x476a6000    # 60000.0f

    #@3a
    div-float/2addr v2, v5

    #@3b
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v5

    #@3f
    move-object/from16 v2, p0

    #@41
    move/from16 v8, p2

    #@43
    move/from16 v9, p4

    #@45
    .line 909
    invoke-static/range {v2 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJIZ)Landroid/service/notification/Condition;

    #@48
    move-result-object v12

    #@49
    .line 912
    .end local v6    # "now":J
    .end local v16    # "span":J
    :cond_2
    if-nez v12, :cond_4

    #@4b
    const-string/jumbo v14, ""

    #@4e
    .line 913
    .local v14, "rt":Ljava/lang/String;
    :goto_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_3

    #@54
    const-string/jumbo v14, ""

    #@57
    .end local v14    # "rt":Ljava/lang/String;
    :cond_3
    return-object v14

    #@58
    .line 912
    :cond_4
    if-eqz p3, :cond_5

    #@5a
    iget-object v14, v12, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@5c
    .restart local v14    # "rt":Ljava/lang/String;
    goto :goto_0

    #@5d
    .end local v14    # "rt":Ljava/lang/String;
    :cond_5
    iget-object v14, v12, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@5f
    .restart local v14    # "rt":Ljava/lang/String;
    goto :goto_0

    #@60
    .line 915
    .end local v3    # "time":J
    .end local v12    # "c":Landroid/service/notification/Condition;
    .end local v13    # "id":Landroid/net/Uri;
    .end local v14    # "rt":Ljava/lang/String;
    :cond_6
    const-string/jumbo v15, ""

    #@63
    .line 916
    .local v15, "summary":Ljava/lang/String;
    move-object/from16 v0, p1

    #@65
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@67
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@6a
    move-result-object v2

    #@6b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6e
    move-result-object v11

    #@6f
    .local v11, "automaticRule$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_9

    #@75
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@78
    move-result-object v10

    #@79
    check-cast v10, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@7b
    .line 917
    .local v10, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v10}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    #@7e
    move-result v2

    #@7f
    if-eqz v2, :cond_7

    #@81
    .line 918
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_8

    #@87
    .line 919
    iget-object v15, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@89
    goto :goto_1

    #@8a
    .line 921
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8d
    move-result-object v2

    #@8e
    const/4 v5, 0x2

    #@8f
    new-array v5, v5, [Ljava/lang/Object;

    #@91
    .line 922
    const/4 v8, 0x0

    #@92
    aput-object v15, v5, v8

    #@94
    .line 923
    iget-object v8, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@96
    const/4 v9, 0x1

    #@97
    aput-object v8, v5, v9

    #@99
    .line 922
    const v8, 0x1040574

    #@9c
    .line 921
    invoke-virtual {v2, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@9f
    move-result-object v15

    #@a0
    goto :goto_1

    #@a1
    .line 927
    .end local v10    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9
    return-object v15
.end method

.method public static getConditionLine1(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    #@0
    .prologue
    .line 888
    const/4 v0, 0x1

    #@1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    #@0
    .prologue
    .line 893
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    #@0
    .prologue
    .line 269
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
    .line 270
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
    .line 718
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
    .line 810
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
    .line 521
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
    .line 265
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
    .line 525
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
    .line 736
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
    .line 529
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

.method private static prioritySendersToSource(II)I
    .locals 1
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    #@0
    .prologue
    .line 626
    packed-switch p0, :pswitch_data_0

    #@3
    .line 630
    return p1

    #@4
    .line 627
    :pswitch_0
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 628
    :pswitch_1
    const/4 v0, 0x2

    #@7
    return v0

    #@8
    .line 629
    :pswitch_2
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 626
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
    .line 494
    const-string/jumbo v0, "id"

    #@5
    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v1

    #@9
    .line 495
    .local v1, "id":Landroid/net/Uri;
    if-nez v1, :cond_0

    #@b
    return-object v10

    #@c
    .line 496
    :cond_0
    const-string/jumbo v0, "summary"

    #@f
    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 497
    .local v2, "summary":Ljava/lang/String;
    const-string/jumbo v0, "line1"

    #@16
    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 498
    .local v3, "line1":Ljava/lang/String;
    const-string/jumbo v0, "line2"

    #@1d
    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 499
    .local v4, "line2":Ljava/lang/String;
    const-string/jumbo v0, "icon"

    #@24
    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@27
    move-result v5

    #@28
    .line 500
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    #@2b
    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@2e
    move-result v6

    #@2f
    .line 501
    .local v6, "state":I
    const-string/jumbo v0, "flags"

    #@32
    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@35
    move-result v7

    #@36
    .line 503
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
    .line 504
    :catch_0
    move-exception v8

    #@3d
    .line 505
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@3f
    const-string/jumbo v9, "Unable to read condition xml"

    #@42
    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 506
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
    .line 459
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4
    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@7
    .line 460
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
    .line 461
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
    .line 462
    const-string/jumbo v2, "name"

    #@1e
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@24
    .line 463
    const-string/jumbo v2, "zen"

    #@27
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 464
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    #@2e
    move-result v2

    #@2f
    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@31
    .line 465
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@33
    if-ne v2, v4, :cond_0

    #@35
    .line 466
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
    .line 467
    return-object v5

    #@4f
    .line 469
    :cond_0
    const-string/jumbo v2, "conditionId"

    #@52
    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@55
    move-result-object v2

    #@56
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@58
    .line 470
    const-string/jumbo v2, "component"

    #@5b
    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@61
    .line 471
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    #@64
    move-result-object v2

    #@65
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@67
    .line 472
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
    .line 373
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v7

    #@4
    .line 374
    .local v7, "type":I
    const/4 v10, 0x2

    #@5
    if-eq v7, v10, :cond_0

    #@7
    const/4 v10, 0x0

    #@8
    return-object v10

    #@9
    .line 375
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    .line 376
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
    .line 377
    :cond_1
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    #@1a
    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    #@1d
    .line 378
    .local v5, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v10, "version"

    #@20
    const/4 v11, 0x2

    #@21
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@24
    move-result v9

    #@25
    .line 379
    .local v9, "version":I
    const/4 v10, 0x1

    #@26
    if-ne v9, v10, :cond_2

    #@28
    .line 380
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;

    #@2b
    move-result-object v8

    #@2c
    .line 381
    .local v8, "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    invoke-interface {p1, v8}, Landroid/service/notification/ZenModeConfig$Migration;->migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;

    #@2f
    move-result-object v10

    #@30
    return-object v10

    #@31
    .line 383
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
    .line 384
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
    .line 385
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@46
    move-result-object v6

    #@47
    .line 386
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
    .line 387
    return-object v5

    #@54
    .line 389
    :cond_4
    const/4 v10, 0x2

    #@55
    if-ne v7, v10, :cond_3

    #@57
    .line 390
    const-string/jumbo v10, "allow"

    #@5a
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v10

    #@5e
    if-eqz v10, :cond_7

    #@60
    .line 391
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
    .line 392
    const-string/jumbo v10, "repeatCallers"

    #@6d
    .line 393
    const/4 v11, 0x0

    #@6e
    .line 392
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@71
    move-result v10

    #@72
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@74
    .line 394
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
    .line 395
    const-string/jumbo v10, "reminders"

    #@81
    .line 396
    const/4 v11, 0x1

    #@82
    .line 395
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@85
    move-result v10

    #@86
    iput-boolean v10, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@88
    .line 397
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
    .line 398
    const-string/jumbo v10, "from"

    #@95
    const/4 v11, -0x1

    #@96
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@99
    move-result v2

    #@9a
    .line 399
    .local v2, "from":I
    const-string/jumbo v10, "callsFrom"

    #@9d
    const/4 v11, -0x1

    #@9e
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@a1
    move-result v1

    #@a2
    .line 400
    .local v1, "callsFrom":I
    const-string/jumbo v10, "messagesFrom"

    #@a5
    const/4 v11, -0x1

    #@a6
    invoke-static {p0, v10, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@a9
    move-result v4

    #@aa
    .line 401
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
    .line 402
    iput v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@b8
    .line 403
    iput v4, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@ba
    goto :goto_0

    #@bb
    .line 404
    :cond_5
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    #@be
    move-result v10

    #@bf
    if-eqz v10, :cond_6

    #@c1
    .line 405
    sget-object v10, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    #@c3
    new-instance v11, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v12, "Migrating existing shared \'from\': "

    #@cb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v11

    #@cf
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@d2
    move-result-object v12

    #@d3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v11

    #@d7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v11

    #@db
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    .line 406
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@e0
    .line 407
    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@e2
    goto/16 :goto_0

    #@e4
    .line 409
    :cond_6
    const/4 v10, 0x1

    #@e5
    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@e7
    .line 410
    const/4 v10, 0x1

    #@e8
    iput v10, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@ea
    goto/16 :goto_0

    #@ec
    .line 412
    .end local v1    # "callsFrom":I
    .end local v2    # "from":I
    .end local v4    # "messagesFrom":I
    :cond_7
    const-string/jumbo v10, "manual"

    #@ef
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f2
    move-result v10

    #@f3
    if-eqz v10, :cond_8

    #@f5
    .line 413
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    #@f8
    move-result-object v10

    #@f9
    iput-object v10, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@fb
    goto/16 :goto_0

    #@fd
    .line 414
    :cond_8
    const-string/jumbo v10, "automatic"

    #@100
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@103
    move-result v10

    #@104
    if-eqz v10, :cond_3

    #@106
    .line 415
    const-string/jumbo v10, "ruleId"

    #@109
    const/4 v11, 0x0

    #@10a
    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10d
    move-result-object v3

    #@10e
    .line 416
    .local v3, "id":Ljava/lang/String;
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    #@111
    move-result-object v0

    #@112
    .line 417
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_3

    #@114
    if-eqz v0, :cond_3

    #@116
    .line 418
    iget-object v10, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@118
    invoke-virtual {v10, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11b
    goto/16 :goto_0

    #@11d
    .line 423
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_9
    new-instance v10, Ljava/lang/IllegalStateException;

    #@11f
    const-string/jumbo v11, "Failed to reach END_DOCUMENT"

    #@122
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@125
    throw v10
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    #@0
    .prologue
    .line 533
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 534
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return p2

    #@c
    .line 535
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@13
    move-result v1

    #@14
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
    .line 544
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 545
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return-object v2

    #@c
    .line 546
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
    .line 539
    const/4 v1, 0x0

    #@1
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 540
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    return v1
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 550
    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 551
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    return-object v2

    #@c
    .line 552
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
    .line 274
    if-nez p0, :cond_0

    #@4
    return v1

    #@5
    .line 275
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@7
    if-nez v2, :cond_2

    #@9
    .line 276
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
    .line 278
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
    .line 617
    packed-switch p0, :pswitch_data_0

    #@3
    .line 621
    return p1

    #@4
    .line 618
    :pswitch_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 619
    :pswitch_1
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 620
    :pswitch_2
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 617
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
    .line 295
    packed-switch p0, :pswitch_data_0

    #@3
    .line 303
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 297
    :pswitch_0
    const-string/jumbo v0, "anyone"

    #@a
    return-object v0

    #@b
    .line 299
    :pswitch_1
    const-string/jumbo v0, "contacts"

    #@e
    return-object v0

    #@f
    .line 301
    :pswitch_2
    const-string/jumbo v0, "stars"

    #@12
    return-object v0

    #@13
    .line 295
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
    .line 698
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
    .line 699
    const-string/jumbo v1, "android"

    #@f
    .line 698
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 700
    const-string/jumbo v1, "countdown"

    #@16
    .line 698
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 701
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 698
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
    .line 331
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
    .line 332
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 333
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@10
    if-ge v0, v2, :cond_3

    #@12
    .line 334
    if-lez v0, :cond_2

    #@14
    const/16 v2, 0x2e

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 335
    :cond_2
    aget v2, p0, v0

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    .line 333
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 337
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
    .line 800
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
    .line 801
    const-string/jumbo v1, "android"

    #@f
    .line 800
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 802
    const-string/jumbo v1, "event"

    #@16
    .line 800
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 803
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
    .line 800
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@27
    move-result-object v1

    #@28
    .line 804
    const-string/jumbo v2, "calendar"

    #@2b
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@2d
    if-eqz v0, :cond_0

    #@2f
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@31
    .line 800
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@34
    move-result-object v0

    #@35
    .line 805
    const-string/jumbo v1, "reply"

    #@38
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@3a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 800
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
    .line 804
    :cond_0
    const-string/jumbo v0, ""

    #@4a
    goto :goto_0
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@0
    .prologue
    .line 726
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
    .line 727
    const-string/jumbo v1, "android"

    #@f
    .line 726
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@12
    move-result-object v0

    #@13
    .line 728
    const-string/jumbo v1, "schedule"

    #@16
    .line 726
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 729
    const-string/jumbo v1, "days"

    #@1d
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@1f
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 726
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@26
    move-result-object v0

    #@27
    .line 730
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
    .line 726
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@49
    move-result-object v0

    #@4a
    .line 731
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
    .line 726
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@70
    move-result-object v0

    #@71
    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    #@0
    .prologue
    .line 648
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    #@0
    .prologue
    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 654
    .local v4, "now":J
    if-nez p1, :cond_0

    #@6
    const/16 v0, 0x2710

    #@8
    :goto_0
    int-to-long v8, v0

    #@9
    .line 655
    .local v8, "millis":J
    add-long v1, v4, v8

    #@b
    move-object v0, p0

    #@c
    move v3, p1

    #@d
    move v6, p2

    #@e
    move v7, p3

    #@f
    invoke-static/range {v0 .. v7}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIJIZ)Landroid/service/notification/Condition;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 654
    .end local v8    # "millis":J
    :cond_0
    const v0, 0xea60

    #@17
    mul-int/2addr v0, p1

    #@18
    goto :goto_0
.end method

.method public static toTimeCondition(Landroid/content/Context;JIJIZ)Landroid/service/notification/Condition;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "now"    # J
    .param p6, "userHandle"    # I
    .param p7, "shortVersion"    # Z

    #@0
    .prologue
    .line 662
    const/16 v2, 0x3c

    #@2
    move/from16 v0, p3

    #@4
    if-ge v0, v2, :cond_2

    #@6
    .line 664
    move/from16 v12, p3

    #@8
    .line 665
    .local v12, "num":I
    if-eqz p7, :cond_0

    #@a
    const v16, 0x114000a

    #@d
    .line 667
    .local v16, "summaryResId":I
    :goto_0
    if-eqz p7, :cond_1

    #@f
    const v11, 0x114000e

    #@12
    .line 677
    .local v11, "line1ResId":I
    :goto_1
    move-object/from16 v0, p0

    #@14
    move/from16 v1, p6

    #@16
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_5

    #@1c
    const-string/jumbo v15, "Hm"

    #@1f
    .line 678
    .local v15, "skeleton":Ljava/lang/String;
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@22
    move-result-object v2

    #@23
    invoke-static {v2, v15}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v13

    #@27
    .line 679
    .local v13, "pattern":Ljava/lang/String;
    move-wide/from16 v0, p1

    #@29
    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    #@2c
    move-result-object v10

    #@2d
    .line 680
    .local v10, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v14

    #@31
    .line 681
    .local v14, "res":Landroid/content/res/Resources;
    const/4 v2, 0x2

    #@32
    new-array v2, v2, [Ljava/lang/Object;

    #@34
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v7

    #@38
    const/4 v8, 0x0

    #@39
    aput-object v7, v2, v8

    #@3b
    const/4 v7, 0x1

    #@3c
    aput-object v10, v2, v7

    #@3e
    move/from16 v0, v16

    #@40
    invoke-virtual {v14, v0, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 682
    .local v4, "summary":Ljava/lang/String;
    const/4 v2, 0x2

    #@45
    new-array v2, v2, [Ljava/lang/Object;

    #@47
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v7

    #@4b
    const/4 v8, 0x0

    #@4c
    aput-object v7, v2, v8

    #@4e
    const/4 v7, 0x1

    #@4f
    aput-object v10, v2, v7

    #@51
    invoke-virtual {v14, v11, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    .line 683
    .local v5, "line1":Ljava/lang/String;
    const/4 v2, 0x1

    #@56
    new-array v2, v2, [Ljava/lang/Object;

    #@58
    const/4 v7, 0x0

    #@59
    aput-object v10, v2, v7

    #@5b
    const v7, 0x1040571

    #@5e
    invoke-virtual {v14, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    .line 684
    .local v6, "line2":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    #@65
    move-result-object v3

    #@66
    .line 685
    .local v3, "id":Landroid/net/Uri;
    new-instance v2, Landroid/service/notification/Condition;

    #@68
    const/4 v7, 0x0

    #@69
    const/4 v8, 0x1

    #@6a
    .line 686
    const/4 v9, 0x1

    #@6b
    .line 685
    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    #@6e
    return-object v2

    #@6f
    .line 666
    .end local v3    # "id":Landroid/net/Uri;
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "line1":Ljava/lang/String;
    .end local v6    # "line2":Ljava/lang/String;
    .end local v10    # "formattedTime":Ljava/lang/CharSequence;
    .end local v11    # "line1ResId":I
    .end local v13    # "pattern":Ljava/lang/String;
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "skeleton":Ljava/lang/String;
    .end local v16    # "summaryResId":I
    :cond_0
    const v16, 0x1140009

    #@72
    .restart local v16    # "summaryResId":I
    goto :goto_0

    #@73
    .line 668
    :cond_1
    const v11, 0x114000d

    #@76
    .restart local v11    # "line1ResId":I
    goto :goto_1

    #@77
    .line 671
    .end local v11    # "line1ResId":I
    .end local v12    # "num":I
    .end local v16    # "summaryResId":I
    :cond_2
    move/from16 v0, p3

    #@79
    int-to-float v2, v0

    #@7a
    const/high16 v7, 0x42700000    # 60.0f

    #@7c
    div-float/2addr v2, v7

    #@7d
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@80
    move-result v12

    #@81
    .line 672
    .restart local v12    # "num":I
    if-eqz p7, :cond_3

    #@83
    const v16, 0x114000c

    #@86
    .line 674
    .restart local v16    # "summaryResId":I
    :goto_3
    if-eqz p7, :cond_4

    #@88
    const v11, 0x1140010

    #@8b
    .restart local v11    # "line1ResId":I
    goto :goto_1

    #@8c
    .line 673
    .end local v11    # "line1ResId":I
    .end local v16    # "summaryResId":I
    :cond_3
    const v16, 0x114000b

    #@8f
    .restart local v16    # "summaryResId":I
    goto :goto_3

    #@90
    .line 675
    :cond_4
    const v11, 0x114000f

    #@93
    .restart local v11    # "line1ResId":I
    goto/16 :goto_1

    #@95
    .line 677
    :cond_5
    const-string/jumbo v15, "hma"

    #@98
    .restart local v15    # "skeleton":Ljava/lang/String;
    goto :goto_2
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 6
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 706
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
    .line 707
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
    .line 708
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
    .line 710
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
    .line 708
    :cond_1
    return-wide v4

    #@3a
    .line 711
    :catch_0
    move-exception v0

    #@3b
    .line 712
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
    .line 713
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
    .line 341
    if-nez p0, :cond_0

    #@4
    return-object v5

    #@5
    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 343
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    #@a
    if-nez v4, :cond_1

    #@c
    return-object v5

    #@d
    .line 344
    :cond_1
    array-length v4, v3

    #@e
    new-array v2, v4, [I

    #@10
    .line 345
    .local v2, "rt":[I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v4, v3

    #@12
    if-ge v1, v4, :cond_3

    #@14
    .line 346
    aget-object v4, v3, v1

    #@16
    invoke-static {v4, v6}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@19
    move-result v0

    #@1a
    .line 347
    .local v0, "day":I
    if-ne v0, v6, :cond_2

    #@1c
    return-object v5

    #@1d
    .line 348
    :cond_2
    aput v0, v2, v1

    #@1f
    .line 345
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 350
    .end local v0    # "day":I
    :cond_3
    return-object v2
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 8
    .param p0, "conditionId"    # Landroid/net/Uri;

    #@0
    .prologue
    const-wide/16 v6, -0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 814
    if-eqz p0, :cond_0

    #@6
    .line 815
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const-string/jumbo v3, "condition"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    .line 814
    if-eqz v2, :cond_0

    #@13
    .line 816
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, "android"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    .line 814
    if-eqz v2, :cond_0

    #@20
    .line 817
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@23
    move-result-object v2

    #@24
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@27
    move-result v2

    #@28
    const/4 v3, 0x1

    #@29
    if-ne v2, v3, :cond_0

    #@2b
    .line 818
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/lang/String;

    #@35
    const-string/jumbo v3, "event"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    .line 819
    :goto_0
    if-nez v0, :cond_1

    #@3e
    return-object v4

    #@3f
    .line 814
    :cond_0
    const/4 v0, 0x0

    #@40
    .local v0, "isEvent":Z
    goto :goto_0

    #@41
    .line 820
    .end local v0    # "isEvent":Z
    :cond_1
    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    #@43
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    #@46
    .line 821
    .local v1, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v2, "userId"

    #@49
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    const/16 v3, -0x2710

    #@4f
    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@52
    move-result v2

    #@53
    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    #@55
    .line 822
    const-string/jumbo v2, "calendar"

    #@58
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@5e
    .line 823
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
    invoke-static {v2, v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    #@6b
    move-result-wide v2

    #@6c
    cmp-long v2, v2, v6

    #@6e
    if-eqz v2, :cond_3

    #@70
    .line 824
    :cond_2
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    #@72
    .line 826
    :cond_3
    const-string/jumbo v2, "reply"

    #@75
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    invoke-static {v2, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@7c
    move-result v2

    #@7d
    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    #@7f
    .line 827
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
    .line 869
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    return-object v3

    #@b
    .line 870
    :cond_0
    const/16 v4, 0x2e

    #@d
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v1

    #@11
    .line 871
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
    .line 872
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@23
    move-result v0

    #@24
    .line 873
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
    .line 874
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
    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return p1

    #@7
    .line 356
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 357
    :catch_0
    move-exception v0

    #@11
    .line 358
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    #@0
    .prologue
    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    return-wide p1

    #@7
    .line 365
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
    .line 366
    :catch_0
    move-exception v0

    #@11
    .line 367
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
    const/4 v6, 0x0

    #@3
    .line 740
    if-eqz p0, :cond_0

    #@5
    .line 741
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    const-string/jumbo v5, "condition"

    #@c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v4

    #@10
    .line 740
    if-eqz v4, :cond_0

    #@12
    .line 742
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, "android"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    .line 740
    if-eqz v4, :cond_0

    #@1f
    .line 743
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
    .line 744
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v4

    #@31
    check-cast v4, Ljava/lang/String;

    #@33
    const-string/jumbo v5, "schedule"

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    .line 745
    :goto_0
    if-nez v1, :cond_1

    #@3c
    return-object v6

    #@3d
    .line 740
    :cond_0
    const/4 v1, 0x0

    #@3e
    .local v1, "isSchedule":Z
    goto :goto_0

    #@3f
    .line 746
    .end local v1    # "isSchedule":Z
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
    .line 747
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
    .line 748
    .local v0, "end":[I
    if-eqz v3, :cond_2

    #@57
    if-nez v0, :cond_3

    #@59
    :cond_2
    return-object v6

    #@5a
    .line 749
    :cond_3
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@5c
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@5f
    .line 750
    .local v2, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string/jumbo v4, "days"

    #@62
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    const-string/jumbo v5, "\\."

    #@69
    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    #@6c
    move-result-object v4

    #@6d
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@6f
    .line 751
    aget v4, v3, v7

    #@71
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@73
    .line 752
    aget v4, v3, v8

    #@75
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@77
    .line 753
    aget v4, v0, v7

    #@79
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@7b
    .line 754
    aget v4, v0, v8

    #@7d
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@7f
    .line 755
    return-object v2
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    #@0
    .prologue
    .line 878
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    .line 879
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
    .line 511
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
    .line 512
    const-string/jumbo v0, "summary"

    #@10
    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    #@12
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@15
    .line 513
    const-string/jumbo v0, "line1"

    #@18
    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    #@1a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 514
    const-string/jumbo v0, "line2"

    #@20
    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    #@22
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 515
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
    .line 516
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
    .line 517
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
    .line 510
    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
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
    .line 476
    const-string/jumbo v0, "enabled"

    #@4
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@6
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 477
    const-string/jumbo v0, "snoozing"

    #@10
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    #@12
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@19
    .line 478
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 479
    const-string/jumbo v0, "name"

    #@20
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@22
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@25
    .line 481
    :cond_0
    const-string/jumbo v0, "zen"

    #@28
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 482
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 483
    const-string/jumbo v0, "component"

    #@38
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@3a
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@41
    .line 485
    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@43
    if-eqz v0, :cond_2

    #@45
    .line 486
    const-string/jumbo v0, "conditionId"

    #@48
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@4a
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 488
    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@53
    if-eqz v0, :cond_3

    #@55
    .line 489
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    #@57
    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    #@5a
    .line 475
    :cond_3
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 3
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 635
    if-nez p1, :cond_0

    #@4
    return-void

    #@5
    .line 636
    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@7
    and-int/lit8 v0, v0, 0x8

    #@9
    if-eqz v0, :cond_1

    #@b
    move v0, v1

    #@c
    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@e
    .line 637
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@10
    and-int/lit8 v0, v0, 0x4

    #@12
    if-eqz v0, :cond_2

    #@14
    move v0, v1

    #@15
    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@17
    .line 638
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@19
    and-int/lit8 v0, v0, 0x2

    #@1b
    if-eqz v0, :cond_3

    #@1d
    move v0, v1

    #@1e
    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@20
    .line 639
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@22
    and-int/lit8 v0, v0, 0x1

    #@24
    if-eqz v0, :cond_4

    #@26
    move v0, v1

    #@27
    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@29
    .line 640
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    #@2b
    and-int/lit8 v0, v0, 0x10

    #@2d
    if-eqz v0, :cond_5

    #@2f
    :goto_4
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@31
    .line 642
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    #@33
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@35
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@3b
    .line 643
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    #@3d
    .line 644
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@3f
    .line 643
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    #@42
    move-result v0

    #@43
    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@45
    .line 634
    return-void

    #@46
    :cond_1
    move v0, v2

    #@47
    .line 636
    goto :goto_0

    #@48
    :cond_2
    move v0, v2

    #@49
    .line 637
    goto :goto_1

    #@4a
    :cond_3
    move v0, v2

    #@4b
    .line 638
    goto :goto_2

    #@4c
    :cond_4
    move v0, v2

    #@4d
    .line 639
    goto :goto_3

    #@4e
    :cond_5
    move v1, v2

    #@4f
    .line 640
    goto :goto_4
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    #@0
    .prologue
    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 571
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    #@5
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 572
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    .line 573
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    #@e
    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@14
    .line 573
    return-object v1

    #@15
    .line 574
    :catchall_0
    move-exception v1

    #@16
    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@19
    .line 574
    throw v1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 565
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
    .line 309
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 310
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
    .line 311
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    #@d
    .line 312
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@f
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 313
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@15
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 314
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@1b
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 315
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@21
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@23
    if-ne v2, v3, :cond_2

    #@25
    .line 316
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@27
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@29
    if-ne v2, v3, :cond_2

    #@2b
    .line 317
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@2d
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@2f
    if-ne v2, v3, :cond_2

    #@31
    .line 318
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@33
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@35
    if-ne v2, v3, :cond_2

    #@37
    .line 319
    iget v2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    #@39
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    .line 320
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@3f
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@41
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    .line 312
    if-eqz v2, :cond_2

    #@47
    .line 321
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@49
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4b
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    .line 312
    :cond_2
    return v1
.end method

.method public getAutomaticRuleNames()Landroid/util/ArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 556
    new-instance v1, Landroid/util/ArraySet;

    #@2
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 557
    .local v1, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@b
    move-result v2

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 558
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@10
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@16
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1b
    .line 557
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 560
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 326
    const/16 v0, 0xa

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
    .line 327
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
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v1

    #@49
    const/4 v2, 0x7

    #@4a
    aput-object v1, v0, v2

    #@4c
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@4e
    const/16 v2, 0x8

    #@50
    aput-object v1, v0, v2

    #@52
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@54
    const/16 v2, 0x9

    #@56
    aput-object v1, v0, v2

    #@58
    .line 326
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@5b
    move-result v0

    #@5c
    return v0
.end method

.method public isValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 256
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
    .line 257
    :cond_0
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@c
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v0

    #@10
    .line 258
    .local v0, "N":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@13
    .line 259
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
    .line 258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 261
    :cond_2
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method public newRuleId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 883
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

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 4

    #@0
    .prologue
    .line 593
    const/4 v1, 0x0

    #@1
    .line 594
    .local v1, "priorityCategories":I
    const/4 v0, 0x1

    #@2
    .line 595
    .local v0, "priorityCallSenders":I
    const/4 v2, 0x1

    #@3
    .line 596
    .local v2, "priorityMessageSenders":I
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 597
    const/16 v1, 0x8

    #@9
    .line 599
    :cond_0
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 600
    or-int/lit8 v1, v1, 0x4

    #@f
    .line 602
    :cond_1
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@11
    if-eqz v3, :cond_2

    #@13
    .line 603
    or-int/lit8 v1, v1, 0x2

    #@15
    .line 605
    :cond_2
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@17
    if-eqz v3, :cond_3

    #@19
    .line 606
    or-int/lit8 v1, v1, 0x1

    #@1b
    .line 608
    :cond_3
    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@1d
    if-eqz v3, :cond_4

    #@1f
    .line 609
    or-int/lit8 v1, v1, 0x10

    #@21
    .line 611
    :cond_4
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@23
    invoke-static {v3, v0}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    #@26
    move-result v0

    #@27
    .line 612
    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@29
    invoke-static {v3, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    #@2c
    move-result v2

    #@2d
    .line 613
    new-instance v3, Landroid/app/NotificationManager$Policy;

    #@2f
    invoke-direct {v3, v1, v0, v2}, Landroid/app/NotificationManager$Policy;-><init>(III)V

    #@32
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 179
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
    .line 180
    const-string/jumbo v1, "user="

    #@14
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 180
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@1a
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 181
    const-string/jumbo v1, ",allowCalls="

    #@21
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 181
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@27
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 182
    const-string/jumbo v1, ",allowRepeatCallers="

    #@2e
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 182
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@34
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 183
    const-string/jumbo v1, ",allowMessages="

    #@3b
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 183
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@41
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 184
    const-string/jumbo v1, ",allowCallsFrom="

    #@48
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 184
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@4e
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 185
    const-string/jumbo v1, ",allowMessagesFrom="

    #@59
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 185
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@5f
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 186
    const-string/jumbo v1, ",allowReminders="

    #@6a
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 186
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@70
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 187
    const-string/jumbo v1, ",allowEvents="

    #@77
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 187
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@7d
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 188
    const-string/jumbo v1, ",automaticRules="

    #@84
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 188
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@8a
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 189
    const-string/jumbo v1, ",manualRule="

    #@91
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    .line 189
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@97
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    .line 190
    const/16 v1, 0x5d

    #@9d
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v0

    #@a5
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
    .line 152
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    move v4, v5

    #@7
    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 153
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    #@c
    if-eqz v4, :cond_1

    #@e
    move v4, v5

    #@f
    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 154
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@14
    if-eqz v4, :cond_2

    #@16
    move v4, v5

    #@17
    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 155
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@1c
    if-eqz v4, :cond_3

    #@1e
    move v4, v5

    #@1f
    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 156
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@24
    if-eqz v4, :cond_4

    #@26
    :goto_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 157
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@2b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 158
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@30
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 159
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    #@35
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 160
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@3a
    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3d
    .line 161
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@3f
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_6

    #@45
    .line 162
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@47
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@4a
    move-result v2

    #@4b
    .line 163
    .local v2, "len":I
    new-array v1, v2, [Ljava/lang/String;

    #@4d
    .line 164
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4f
    .line 165
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    #@50
    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    #@52
    .line 166
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@54
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@57
    move-result-object v4

    #@58
    check-cast v4, Ljava/lang/String;

    #@5a
    aput-object v4, v1, v0

    #@5c
    .line 167
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@5e
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@61
    move-result-object v4

    #@62
    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@64
    aput-object v4, v3, v0

    #@66
    .line 165
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_5

    #@69
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    move v4, v6

    #@6a
    .line 152
    goto :goto_0

    #@6b
    :cond_1
    move v4, v6

    #@6c
    .line 153
    goto :goto_1

    #@6d
    :cond_2
    move v4, v6

    #@6e
    .line 154
    goto :goto_2

    #@6f
    :cond_3
    move v4, v6

    #@70
    .line 155
    goto :goto_3

    #@71
    :cond_4
    move v5, v6

    #@72
    .line 156
    goto :goto_4

    #@73
    .line 169
    .restart local v0    # "i":I
    .restart local v1    # "ids":[Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@79
    .line 171
    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@7c
    .line 151
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_6
    return-void

    #@7d
    .line 173
    :cond_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@80
    goto :goto_6
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
    .line 427
    const-string/jumbo v4, "zen"

    #@4
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7
    .line 428
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
    .line 429
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
    .line 431
    const-string/jumbo v4, "allow"

    #@21
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@24
    .line 432
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
    .line 433
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
    .line 434
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
    .line 435
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
    .line 436
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
    .line 437
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
    .line 438
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
    .line 439
    const-string/jumbo v4, "allow"

    #@7b
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7e
    .line 441
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@80
    if-eqz v4, :cond_0

    #@82
    .line 442
    const-string/jumbo v4, "manual"

    #@85
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@88
    .line 443
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    #@8a
    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    #@8d
    .line 444
    const-string/jumbo v4, "manual"

    #@90
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@93
    .line 446
    :cond_0
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@95
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@98
    move-result v0

    #@99
    .line 447
    .local v0, "N":I
    const/4 v2, 0x0

    #@9a
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@9c
    .line 448
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@9e
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@a1
    move-result-object v3

    #@a2
    check-cast v3, Ljava/lang/String;

    #@a4
    .line 449
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@a6
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a9
    move-result-object v1

    #@aa
    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@ac
    .line 450
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string/jumbo v4, "automatic"

    #@af
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b2
    .line 451
    const-string/jumbo v4, "ruleId"

    #@b5
    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b8
    .line 452
    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    #@bb
    .line 453
    const-string/jumbo v4, "automatic"

    #@be
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@c1
    .line 447
    add-int/lit8 v2, v2, 0x1

    #@c3
    goto :goto_0

    #@c4
    .line 455
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "zen"

    #@c7
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ca
    .line 426
    return-void
.end method

.class public final Landroid/service/notification/ZenModeConfig$XmlV1;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlV1"
.end annotation


# static fields
.field private static final EXIT_CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final EXIT_CONDITION_TAG:Ljava/lang/String; = "exitCondition"

.field private static final SLEEP_ATT_END_HR:Ljava/lang/String; = "endHour"

.field private static final SLEEP_ATT_END_MIN:Ljava/lang/String; = "endMin"

.field private static final SLEEP_ATT_MODE:Ljava/lang/String; = "mode"

.field private static final SLEEP_ATT_NONE:Ljava/lang/String; = "none"

.field private static final SLEEP_ATT_START_HR:Ljava/lang/String; = "startHour"

.field private static final SLEEP_ATT_START_MIN:Ljava/lang/String; = "startMin"

.field public static final SLEEP_MODE_DAYS_PREFIX:Ljava/lang/String; = "days:"

.field public static final SLEEP_MODE_NIGHTS:Ljava/lang/String; = "nights"

.field public static final SLEEP_MODE_WEEKNIGHTS:Ljava/lang/String; = "weeknights"

.field private static final SLEEP_TAG:Ljava/lang/String; = "sleep"


# instance fields
.field public allowCalls:Z

.field public allowEvents:Z

.field public allowFrom:I

.field public allowMessages:Z

.field public allowReminders:Z

.field public conditionComponents:[Landroid/content/ComponentName;

.field public conditionIds:[Landroid/net/Uri;

.field public exitCondition:Landroid/service/notification/Condition;

.field public exitConditionComponent:Landroid/content/ComponentName;

.field public sleepEndHour:I

.field public sleepEndMinute:I

.field public sleepMode:Ljava/lang/String;

.field public sleepNone:Z

.field public sleepStartHour:I

.field public sleepStartMinute:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1087
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    #@6
    .line 1088
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    #@8
    .line 1089
    const/4 v0, 0x0

    #@9
    iput v0, p0, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@b
    .line 1069
    return-void
.end method

.method private static isValidSleepMode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sleepMode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1103
    if-eqz p0, :cond_0

    #@3
    const-string/jumbo v1, "nights"

    #@6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 1104
    const-string/jumbo v1, "weeknights"

    #@f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    .line 1103
    if-nez v1, :cond_0

    #@15
    .line 1104
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 1103
    :cond_0
    :goto_0
    return v0

    #@1c
    .line 1104
    :cond_1
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;
    .locals 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1121
    new-instance v7, Landroid/service/notification/ZenModeConfig$XmlV1;

    #@2
    invoke-direct {v7}, Landroid/service/notification/ZenModeConfig$XmlV1;-><init>()V

    #@5
    .line 1122
    .local v7, "rt":Landroid/service/notification/ZenModeConfig$XmlV1;
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 1123
    .local v1, "conditionComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 1124
    .local v3, "conditionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@12
    move-result v11

    #@13
    .local v11, "type":I
    const/4 v12, 0x1

    #@14
    if-eq v11, v12, :cond_c

    #@16
    .line 1125
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@19
    move-result-object v10

    #@1a
    .line 1126
    .local v10, "tag":Ljava/lang/String;
    const/4 v12, 0x3

    #@1b
    if-ne v11, v12, :cond_2

    #@1d
    const-string/jumbo v12, "zen"

    #@20
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v12

    #@24
    if-eqz v12, :cond_2

    #@26
    .line 1127
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@29
    move-result v12

    #@2a
    if-nez v12, :cond_1

    #@2c
    .line 1129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v12

    #@30
    new-array v12, v12, [Landroid/content/ComponentName;

    #@32
    .line 1128
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v12

    #@36
    check-cast v12, [Landroid/content/ComponentName;

    #@38
    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->conditionComponents:[Landroid/content/ComponentName;

    #@3a
    .line 1130
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v12

    #@3e
    new-array v12, v12, [Landroid/net/Uri;

    #@40
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@43
    move-result-object v12

    #@44
    check-cast v12, [Landroid/net/Uri;

    #@46
    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->conditionIds:[Landroid/net/Uri;

    #@48
    .line 1132
    :cond_1
    return-object v7

    #@49
    .line 1134
    :cond_2
    const/4 v12, 0x2

    #@4a
    if-ne v11, v12, :cond_0

    #@4c
    .line 1135
    const-string/jumbo v12, "allow"

    #@4f
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v12

    #@53
    if-eqz v12, :cond_4

    #@55
    .line 1136
    const-string/jumbo v12, "calls"

    #@58
    const/4 v13, 0x0

    #@59
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@5c
    move-result v12

    #@5d
    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    #@5f
    .line 1137
    const-string/jumbo v12, "messages"

    #@62
    const/4 v13, 0x0

    #@63
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@66
    move-result v12

    #@67
    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    #@69
    .line 1138
    const-string/jumbo v12, "reminders"

    #@6c
    .line 1139
    const/4 v13, 0x1

    #@6d
    .line 1138
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@70
    move-result v12

    #@71
    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    #@73
    .line 1140
    const-string/jumbo v12, "events"

    #@76
    .line 1141
    const/4 v13, 0x1

    #@77
    .line 1140
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@7a
    move-result v12

    #@7b
    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    #@7d
    .line 1142
    const-string/jumbo v12, "from"

    #@80
    const/4 v13, 0x0

    #@81
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@84
    move-result v12

    #@85
    iput v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@87
    .line 1143
    iget v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@89
    if-ltz v12, :cond_3

    #@8b
    iget v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@8d
    const/4 v13, 0x2

    #@8e
    if-le v12, v13, :cond_0

    #@90
    .line 1144
    :cond_3
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    #@92
    new-instance v13, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v14, "bad source in config:"

    #@9a
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v13

    #@9e
    .line 1145
    iget v14, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@a0
    .line 1144
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v13

    #@a4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v13

    #@a8
    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v12

    #@ac
    .line 1147
    :cond_4
    const-string/jumbo v12, "sleep"

    #@af
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v12

    #@b3
    if-eqz v12, :cond_a

    #@b5
    .line 1148
    const-string/jumbo v12, "mode"

    #@b8
    const/4 v13, 0x0

    #@b9
    invoke-interface {p0, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 1149
    .local v6, "mode":Ljava/lang/String;
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig$XmlV1;->isValidSleepMode(Ljava/lang/String;)Z

    #@c0
    move-result v12

    #@c1
    if-eqz v12, :cond_5

    #@c3
    .end local v6    # "mode":Ljava/lang/String;
    :goto_1
    iput-object v6, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    #@c5
    .line 1150
    const-string/jumbo v12, "none"

    #@c8
    const/4 v13, 0x0

    #@c9
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap2(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    #@cc
    move-result v12

    #@cd
    iput-boolean v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepNone:Z

    #@cf
    .line 1151
    const-string/jumbo v12, "startHour"

    #@d2
    const/4 v13, 0x0

    #@d3
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@d6
    move-result v8

    #@d7
    .line 1152
    .local v8, "startHour":I
    const-string/jumbo v12, "startMin"

    #@da
    const/4 v13, 0x0

    #@db
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@de
    move-result v9

    #@df
    .line 1153
    .local v9, "startMinute":I
    const-string/jumbo v12, "endHour"

    #@e2
    const/4 v13, 0x0

    #@e3
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@e6
    move-result v4

    #@e7
    .line 1154
    .local v4, "endHour":I
    const-string/jumbo v12, "endMin"

    #@ea
    const/4 v13, 0x0

    #@eb
    invoke-static {p0, v12, v13}, Landroid/service/notification/ZenModeConfig;->-wrap4(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    #@ee
    move-result v5

    #@ef
    .line 1155
    .local v5, "endMinute":I
    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    #@f2
    move-result v12

    #@f3
    if-eqz v12, :cond_6

    #@f5
    .end local v8    # "startHour":I
    :goto_2
    iput v8, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    #@f7
    .line 1156
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    #@fa
    move-result v12

    #@fb
    if-eqz v12, :cond_7

    #@fd
    .end local v9    # "startMinute":I
    :goto_3
    iput v9, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    #@ff
    .line 1157
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    #@102
    move-result v12

    #@103
    if-eqz v12, :cond_8

    #@105
    .end local v4    # "endHour":I
    :goto_4
    iput v4, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    #@107
    .line 1158
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    #@10a
    move-result v12

    #@10b
    if-eqz v12, :cond_9

    #@10d
    .end local v5    # "endMinute":I
    :goto_5
    iput v5, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    #@10f
    goto/16 :goto_0

    #@111
    .line 1149
    .restart local v6    # "mode":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    #@112
    goto :goto_1

    #@113
    .line 1155
    .end local v6    # "mode":Ljava/lang/String;
    .restart local v4    # "endHour":I
    .restart local v5    # "endMinute":I
    .restart local v8    # "startHour":I
    .restart local v9    # "startMinute":I
    :cond_6
    const/4 v8, 0x0

    #@114
    goto :goto_2

    #@115
    .line 1156
    .end local v8    # "startHour":I
    :cond_7
    const/4 v9, 0x0

    #@116
    goto :goto_3

    #@117
    .line 1157
    .end local v9    # "startMinute":I
    :cond_8
    const/4 v4, 0x0

    #@118
    goto :goto_4

    #@119
    .line 1158
    .end local v4    # "endHour":I
    :cond_9
    const/4 v5, 0x0

    #@11a
    goto :goto_5

    #@11b
    .line 1159
    .end local v5    # "endMinute":I
    :cond_a
    const-string/jumbo v12, "condition"

    #@11e
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@121
    move-result v12

    #@122
    if-eqz v12, :cond_b

    #@124
    .line 1161
    const-string/jumbo v12, "component"

    #@127
    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->-wrap0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@12a
    move-result-object v0

    #@12b
    .line 1162
    .local v0, "component":Landroid/content/ComponentName;
    const-string/jumbo v12, "id"

    #@12e
    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->-wrap1(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    #@131
    move-result-object v2

    #@132
    .line 1163
    .local v2, "conditionId":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@134
    if-eqz v2, :cond_0

    #@136
    .line 1164
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@139
    .line 1165
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13c
    goto/16 :goto_0

    #@13e
    .line 1167
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "conditionId":Landroid/net/Uri;
    :cond_b
    const-string/jumbo v12, "exitCondition"

    #@141
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@144
    move-result v12

    #@145
    if-eqz v12, :cond_0

    #@147
    .line 1168
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    #@14a
    move-result-object v12

    #@14b
    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->exitCondition:Landroid/service/notification/Condition;

    #@14d
    .line 1169
    iget-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->exitCondition:Landroid/service/notification/Condition;

    #@14f
    if-eqz v12, :cond_0

    #@151
    .line 1171
    const-string/jumbo v12, "component"

    #@154
    invoke-static {p0, v12}, Landroid/service/notification/ZenModeConfig;->-wrap0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    #@157
    move-result-object v12

    #@158
    .line 1170
    iput-object v12, v7, Landroid/service/notification/ZenModeConfig$XmlV1;->exitConditionComponent:Landroid/content/ComponentName;

    #@15a
    goto/16 :goto_0

    #@15c
    .line 1176
    .end local v10    # "tag":Ljava/lang/String;
    :cond_c
    new-instance v12, Ljava/lang/IllegalStateException;

    #@15e
    const-string/jumbo v13, "Failed to reach END_DOCUMENT"

    #@161
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@164
    throw v12
.end method

.method public static tryParseDays(Ljava/lang/String;)[I
    .locals 2
    .param p0, "sleepMode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1108
    if-nez p0, :cond_0

    #@3
    return-object v1

    #@4
    .line 1109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    .line 1110
    const-string/jumbo v0, "nights"

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    sget-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    #@13
    return-object v0

    #@14
    .line 1111
    :cond_1
    const-string/jumbo v0, "weeknights"

    #@17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    sget-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    #@1f
    return-object v0

    #@20
    .line 1112
    :cond_2
    const-string/jumbo v0, "days:"

    #@23
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_3

    #@29
    return-object v1

    #@2a
    .line 1113
    :cond_3
    const-string/jumbo v0, "days:"

    #@2d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4

    #@33
    return-object v1

    #@34
    .line 1114
    :cond_4
    const-string/jumbo v0, "days:"

    #@37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3a
    move-result v0

    #@3b
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    const-string/jumbo v1, ","

    #@42
    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->-wrap3(Ljava/lang/String;Ljava/lang/String;)[I

    #@45
    move-result-object v0

    #@46
    return-object v0
.end method

.class Lcom/android/server/notification/ZenModeHelper$1;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/service/notification/ZenModeConfig$Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    #@0
    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;
    .locals 7
    .param p1, "v1"    # Landroid/service/notification/ZenModeConfig$XmlV1;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 886
    if-nez p1, :cond_0

    #@4
    return-object v5

    #@5
    .line 887
    :cond_0
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    #@7
    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    #@a
    .line 888
    .local v1, "rt":Landroid/service/notification/ZenModeConfig;
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    #@c
    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    #@e
    .line 889
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    #@10
    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    #@12
    .line 890
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@14
    iput v5, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    #@16
    .line 891
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    #@18
    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    #@1a
    .line 892
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    #@1c
    iput v5, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    #@1e
    .line 893
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    #@20
    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    #@22
    .line 895
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    #@24
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    #@27
    move-result-object v0

    #@28
    .line 896
    .local v0, "days":[I
    if-eqz v0, :cond_2

    #@2a
    array-length v5, v0

    #@2b
    if-lez v5, :cond_2

    #@2d
    .line 897
    const-string/jumbo v5, "ZenModeHelper"

    #@30
    const-string/jumbo v6, "Migrating existing V1 downtime to single schedule"

    #@33
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 898
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    #@38
    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    #@3b
    .line 899
    .local v3, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput-object v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    #@3d
    .line 900
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    #@3f
    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    #@41
    .line 901
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    #@43
    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    #@45
    .line 902
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    #@47
    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    #@49
    .line 903
    iget v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    #@4b
    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    #@4d
    .line 904
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    #@4f
    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    #@52
    .line 905
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    #@54
    .line 906
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@56
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->-get1(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v5

    #@5e
    .line 907
    const v6, 0x10405c4

    #@61
    .line 906
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    iput-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    #@67
    .line 908
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    #@6a
    move-result-object v5

    #@6b
    iput-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    #@6d
    .line 909
    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepNone:Z

    #@6f
    if-eqz v5, :cond_1

    #@71
    const/4 v4, 0x2

    #@72
    :cond_1
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    #@74
    .line 911
    sget-object v4, Lcom/android/server/notification/ScheduleConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    #@76
    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    #@78
    .line 912
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    #@7a
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    .line 917
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@83
    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->-wrap1(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    #@86
    .line 918
    return-object v1

    #@87
    .line 914
    :cond_2
    const-string/jumbo v4, "ZenModeHelper"

    #@8a
    const-string/jumbo v5, "No existing V1 downtime found, generating default schedules"

    #@8d
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    .line 915
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    #@92
    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->-wrap2(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    #@95
    goto :goto_0
.end method

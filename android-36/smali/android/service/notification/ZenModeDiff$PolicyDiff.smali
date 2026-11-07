.class public Landroid/service/notification/ZenModeDiff$PolicyDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_ALLOW_CHANNELS:Ljava/lang/String; = "mAllowChannels"

.field public static final blacklist FIELD_CONVERSATION_SENDERS:Ljava/lang/String; = "mConversationSenders"

.field public static final blacklist FIELD_PRIORITY_CALLS:Ljava/lang/String; = "mPriorityCalls"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_ALARMS:Ljava/lang/String; = "mPriorityCategories_Alarms"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_CALLS:Ljava/lang/String; = "mPriorityCategories_Calls"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_CONVERSATIONS:Ljava/lang/String; = "mPriorityCategories_Conversations"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_EVENTS:Ljava/lang/String; = "mPriorityCategories_Events"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MEDIA:Ljava/lang/String; = "mPriorityCategories_Media"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MESSAGES:Ljava/lang/String; = "mPriorityCategories_Messages"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REMINDERS:Ljava/lang/String; = "mPriorityCategories_Reminders"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS:Ljava/lang/String; = "mPriorityCategories_RepeatCallers"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_SYSTEM:Ljava/lang/String; = "mPriorityCategories_System"

.field public static final blacklist FIELD_PRIORITY_MESSAGES:Ljava/lang/String; = "mPriorityMessages"

.field public static final blacklist FIELD_VISUAL_EFFECT_AMBIENT:Ljava/lang/String; = "mVisualEffects_Ambient"

.field public static final blacklist FIELD_VISUAL_EFFECT_BADGE:Ljava/lang/String; = "mVisualEffects_Badge"

.field public static final blacklist FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT:Ljava/lang/String; = "mVisualEffects_FullScreenIntent"

.field public static final blacklist FIELD_VISUAL_EFFECT_LIGHTS:Ljava/lang/String; = "mVisualEffects_Lights"

.field public static final blacklist FIELD_VISUAL_EFFECT_NOTIFICATION_LIST:Ljava/lang/String; = "mVisualEffects_NotificationList"

.field public static final blacklist FIELD_VISUAL_EFFECT_PEEK:Ljava/lang/String; = "mVisualEffects_Peek"

.field public static final blacklist FIELD_VISUAL_EFFECT_STATUS_BAR:Ljava/lang/String; = "mVisualEffects_StatusBar"


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenPolicy;)V
    .registers 6
    .param p1, "from"    # Landroid/service/notification/ZenPolicy;
    .param p2, "to"    # Landroid/service/notification/ZenPolicy;

    .line 868
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 870
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 871
    return-void

    .line 873
    :cond_8
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 876
    return-void

    .line 880
    :cond_f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    if-eq v0, v1, :cond_34

    .line 881
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 882
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 883
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    const-string/jumbo v1, "mPriorityCategories_Reminders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 885
    :cond_34
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    if-eq v0, v1, :cond_59

    .line 886
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 887
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 888
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    const-string/jumbo v1, "mPriorityCategories_Events"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 890
    :cond_59
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v1

    if-eq v0, v1, :cond_7e

    .line 891
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 892
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 893
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 891
    const-string/jumbo v1, "mPriorityCategories_Messages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 895
    :cond_7e
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    if-eq v0, v1, :cond_a3

    .line 896
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 897
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 898
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 896
    const-string/jumbo v1, "mPriorityCategories_Calls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 900
    :cond_a3
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    if-eq v0, v1, :cond_c8

    .line 901
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 902
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 903
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 901
    const-string/jumbo v1, "mPriorityCategories_RepeatCallers"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 905
    :cond_c8
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    if-eq v0, v1, :cond_ed

    .line 906
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 907
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 908
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    const-string/jumbo v1, "mPriorityCategories_Alarms"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 910
    :cond_ed
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    if-eq v0, v1, :cond_112

    .line 911
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 912
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 913
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 911
    const-string/jumbo v1, "mPriorityCategories_Media"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 915
    :cond_112
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    if-eq v0, v1, :cond_137

    .line 916
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 917
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 918
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 916
    const-string/jumbo v1, "mPriorityCategories_System"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 920
    :cond_137
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v1

    if-eq v0, v1, :cond_15c

    .line 921
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 922
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 923
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 921
    const-string/jumbo v1, "mPriorityCategories_Conversations"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 925
    :cond_15c
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    if-eq v0, v1, :cond_181

    .line 926
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 927
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 928
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    const-string/jumbo v1, "mVisualEffects_FullScreenIntent"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 930
    :cond_181
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    if-eq v0, v1, :cond_1a6

    .line 931
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 932
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 931
    const-string/jumbo v1, "mVisualEffects_Lights"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 934
    :cond_1a6
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    if-eq v0, v1, :cond_1cb

    .line 935
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 936
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    const-string/jumbo v1, "mVisualEffects_Peek"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 938
    :cond_1cb
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    if-eq v0, v1, :cond_1f0

    .line 939
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 940
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 941
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 939
    const-string/jumbo v1, "mVisualEffects_StatusBar"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 943
    :cond_1f0
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    if-eq v0, v1, :cond_215

    .line 944
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 945
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 944
    const-string/jumbo v1, "mVisualEffects_Badge"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 947
    :cond_215
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    if-eq v0, v1, :cond_23a

    .line 948
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 949
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 948
    const-string/jumbo v1, "mVisualEffects_Ambient"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 951
    :cond_23a
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    if-eq v0, v1, :cond_25f

    .line 952
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 953
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 954
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 952
    const-string/jumbo v1, "mVisualEffects_NotificationList"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 956
    :cond_25f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    if-eq v0, v1, :cond_284

    .line 957
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 958
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 957
    const-string/jumbo v1, "mPriorityMessages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 960
    :cond_284
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    if-eq v0, v1, :cond_2a9

    .line 961
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 962
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    const-string/jumbo v1, "mPriorityCalls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 964
    :cond_2a9
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    if-eq v0, v1, :cond_2ce

    .line 965
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 966
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 967
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 965
    const-string/jumbo v1, "mConversationSenders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 969
    :cond_2ce
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    if-eq v0, v1, :cond_2f3

    .line 970
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 971
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 970
    const-string/jumbo v1, "mAllowChannels"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 973
    :cond_2f3
    return-void
.end method


# virtual methods
.method public blacklist hasDiff()Z
    .registers 2

    .line 980
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasFieldDiffs()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenPolicyDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 988
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 993
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 994
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 995
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 996
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :cond_31
    :goto_31
    const/4 v1, 0x1

    .line 1002
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1003
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v4

    .line 1004
    .local v4, "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    if-nez v4, :cond_4d

    .line 1006
    goto :goto_3a

    .line 1008
    :cond_4d
    if-eqz v1, :cond_51

    .line 1009
    const/4 v1, 0x0

    goto :goto_56

    .line 1011
    :cond_51
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :goto_56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1017
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    goto :goto_3a

    .line 1019
    :cond_62
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class public Landroid/service/notification/ZenModeDiff$RuleDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuleDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_ALLOW_MANUAL:Ljava/lang/String; = "allowManualInvocation"

.field public static final blacklist FIELD_COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist FIELD_CONDITION:Ljava/lang/String; = "condition"

.field public static final blacklist FIELD_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field public static final blacklist FIELD_CONDITION_OVERRIDE:Ljava/lang/String; = "conditionOverride"

.field public static final blacklist FIELD_CONFIGURATION_ACTIVITY:Ljava/lang/String; = "configurationActivity"

.field public static final blacklist FIELD_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field public static final blacklist FIELD_ENABLED:Ljava/lang/String; = "enabled"

.field public static final blacklist FIELD_ENABLER:Ljava/lang/String; = "enabler"

.field public static final blacklist FIELD_ICON_RES:Ljava/lang/String; = "iconResName"

.field public static final blacklist FIELD_ID:Ljava/lang/String; = "id"

.field public static final blacklist FIELD_LEGACY_SUPPRESSED_EFFECTS:Ljava/lang/String; = "legacySuppressedEffects"

.field public static final blacklist FIELD_NAME:Ljava/lang/String; = "name"

.field public static final blacklist FIELD_PKG:Ljava/lang/String; = "pkg"

.field public static final blacklist FIELD_SNOOZING:Ljava/lang/String; = "snoozing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FIELD_TRIGGER_DESCRIPTION:Ljava/lang/String; = "triggerDescription"

.field public static final blacklist FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist FIELD_ZEN_DEVICE_EFFECTS:Ljava/lang/String; = "zenDeviceEffects"

.field public static final blacklist FIELD_ZEN_MODE:Ljava/lang/String; = "zenMode"

.field public static final blacklist FIELD_ZEN_POLICY:Ljava/lang/String; = "zenPolicy"


# instance fields
.field blacklist mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/service/notification/ZenModeDiff$FieldDiff<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 10
    .param p1, "from"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p2, "to"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 509
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 512
    return-void

    .line 517
    :cond_8
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v1

    goto :goto_11

    :cond_10
    move v1, v0

    .line 518
    .local v1, "fromActive":Z
    :goto_11
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    .line 519
    .local v0, "toActive":Z
    :cond_17
    if-eq v1, v0, :cond_28

    .line 520
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    .line 524
    :cond_28
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 525
    return-void

    .line 528
    :cond_2f
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v2, v3, :cond_4b

    .line 529
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "enabled"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 531
    :cond_4b
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 532
    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    iget v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    if-eq v2, v3, :cond_8b

    .line 533
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 534
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 533
    const-string v3, "conditionOverride"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    goto :goto_8b

    .line 537
    :cond_6e
    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eq v2, v3, :cond_8b

    .line 538
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "snoozing"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 541
    :cond_8b
    :goto_8b
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    .line 542
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "name"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 544
    :cond_a4
    iget v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v2, v3, :cond_c1

    .line 545
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "zenMode"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 547
    :cond_c1
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 548
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "conditionId"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 551
    :cond_d9
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    .line 552
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "condition"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 554
    :cond_f1
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_109

    .line 555
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "component"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 557
    :cond_109
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_121

    .line 558
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "configurationActivity"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 561
    :cond_121
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13a

    .line 562
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v3, "id"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 564
    :cond_13a
    iget-wide v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-wide v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_158

    .line 565
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-wide v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 566
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    const-string v3, "creationTime"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 568
    :cond_158
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_170

    .line 569
    new-instance v2, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "enabler"

    invoke-virtual {p0, v3, v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 571
    :cond_170
    new-instance v2, Landroid/service/notification/ZenModeDiff$PolicyDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$PolicyDiff;-><init>(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenPolicy;)V

    .line 572
    .local v2, "policyDiff":Landroid/service/notification/ZenModeDiff$PolicyDiff;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasDiff()Z

    move-result v3

    if-eqz v3, :cond_18e

    .line 573
    new-instance v3, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v3, v4, v5, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/service/notification/ZenModeDiff$BaseDiff;)V

    const-string/jumbo v4, "zenPolicy"

    invoke-virtual {p0, v4, v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 576
    :cond_18e
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a7

    .line 577
    new-instance v3, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v4, "pkg"

    invoke-virtual {p0, v4, v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 579
    :cond_1a7
    new-instance v3, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-direct {v3, v4, v5}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;-><init>(Landroid/service/notification/ZenDeviceEffects;Landroid/service/notification/ZenDeviceEffects;)V

    .line 581
    .local v3, "deviceEffectsDiff":Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;
    invoke-virtual {v3}, Landroid/service/notification/ZenModeDiff$DeviceEffectsDiff;->hasDiff()Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 582
    new-instance v4, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-direct {v4, v5, v6, v3}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/service/notification/ZenModeDiff$BaseDiff;)V

    const-string/jumbo v5, "zenDeviceEffects"

    invoke-virtual {p0, v5, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 586
    :cond_1c5
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1de

    .line 587
    new-instance v4, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    iget-object v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v5, "triggerDescription"

    invoke-virtual {p0, v5, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 590
    :cond_1de
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    iget v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-eq v4, v5, :cond_1fb

    .line 591
    new-instance v4, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v5, "type"

    invoke-virtual {p0, v5, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 593
    :cond_1fb
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    iget-boolean v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    if-eq v4, v5, :cond_217

    .line 594
    new-instance v4, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 595
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    const-string v5, "allowManualInvocation"

    invoke-virtual {p0, v5, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 597
    :cond_217
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_230

    .line 598
    new-instance v4, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    iget-object v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v5, "iconResName"

    invoke-virtual {p0, v5, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 600
    :cond_230
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v4

    if-eqz v4, :cond_253

    .line 601
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    iget v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    if-eq v4, v5, :cond_253

    .line 602
    new-instance v4, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 603
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 604
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 602
    const-string/jumbo v5, "legacySuppressedEffects"

    invoke-virtual {p0, v5, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 607
    :cond_253
    return-void
.end method


# virtual methods
.method public blacklist becameActive()Z
    .registers 2

    .line 674
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist becameInactive()Z
    .registers 2

    .line 682
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$RuleDiff;->mActiveDiff:Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist hasDiff()Z
    .registers 2

    .line 614
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasFieldDiffs()Z

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

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenRuleDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 623
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 628
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 629
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 630
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 631
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_31
    :goto_31
    const/4 v1, 0x1

    .line 637
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 638
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$RuleDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v5

    .line 639
    .local v5, "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    if-nez v5, :cond_4f

    .line 641
    goto :goto_3a

    .line 643
    :cond_4f
    if-eqz v1, :cond_53

    .line 644
    const/4 v1, 0x0

    goto :goto_56

    .line 646
    :cond_53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :goto_56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    goto :goto_3a

    .line 654
    :cond_66
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 655
    if-nez v1, :cond_71

    .line 656
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_71
    const-string v2, "(->active)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 659
    :cond_77
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 660
    if-nez v1, :cond_82

    .line 661
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_82
    const-string v2, "(->inactive)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_87
    :goto_87
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class public Landroid/hardware/input/InputGestureData$Builder;
.super Ljava/lang/Object;
.source "InputGestureData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputGestureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppLaunchData:Landroid/hardware/input/AppLaunchData;

.field private blacklist mKeyGestureType:I

.field private blacklist mTrigger:Landroid/hardware/input/InputGestureData$Trigger;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    .line 94
    iput-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/input/InputGestureData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    if-eqz v0, :cond_79

    .line 121
    iget v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    if-eqz v0, :cond_71

    .line 124
    iget v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    const/16 v1, 0x33

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v0, :cond_13

    goto :goto_1b

    .line 126
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No app launch data for system action launch application"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/hardware/input/AidlInputGestureData;

    invoke-direct {v0}, Landroid/hardware/input/AidlInputGestureData;-><init>()V

    .line 130
    .local v0, "data":Landroid/hardware/input/AidlInputGestureData;
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    invoke-interface {v1}, Landroid/hardware/input/InputGestureData$Trigger;->getAidlTrigger()Landroid/hardware/input/AidlInputGestureData$Trigger;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/input/AidlInputGestureData;->trigger:Landroid/hardware/input/AidlInputGestureData$Trigger;

    .line 131
    iget v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    iput v1, v0, Landroid/hardware/input/AidlInputGestureData;->gestureType:I

    .line 132
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v1, :cond_6b

    .line 133
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v2, :cond_3f

    check-cast v1, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 134
    .local v1, "categoryData":Landroid/hardware/input/AppLaunchData$CategoryData;
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchCategory:Ljava/lang/String;

    goto :goto_6b

    .line 135
    .end local v1    # "categoryData":Landroid/hardware/input/AppLaunchData$CategoryData;
    :cond_3f
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v2, :cond_4e

    check-cast v1, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 136
    .local v1, "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchRole:Ljava/lang/String;

    goto :goto_6b

    .line 137
    .end local v1    # "roleData":Landroid/hardware/input/AppLaunchData$RoleData;
    :cond_4e
    iget-object v1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    instance-of v2, v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v2, :cond_63

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 138
    .local v1, "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchPackageName:Ljava/lang/String;

    .line 139
    invoke-virtual {v1}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/input/AidlInputGestureData;->appLaunchClassName:Ljava/lang/String;

    goto :goto_6b

    .line 141
    .end local v1    # "componentData":Landroid/hardware/input/AppLaunchData$ComponentData;
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AppLaunchData type is invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_6b
    :goto_6b
    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, v0}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    return-object v1

    .line 122
    .end local v0    # "data":Landroid/hardware/input/AidlInputGestureData;
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No system action found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No trigger found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;
    .registers 3
    .param p1, "appLaunchData"    # Landroid/hardware/input/AppLaunchData;

    .line 111
    const/16 v0, 0x33

    iput v0, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    .line 112
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mAppLaunchData:Landroid/hardware/input/AppLaunchData;

    .line 113
    return-object p0
.end method

.method public blacklist setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;
    .registers 2
    .param p1, "keyGestureType"    # I

    .line 105
    iput p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mKeyGestureType:I

    .line 106
    return-object p0
.end method

.method public blacklist setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;
    .registers 2
    .param p1, "trigger"    # Landroid/hardware/input/InputGestureData$Trigger;

    .line 99
    iput-object p1, p0, Landroid/hardware/input/InputGestureData$Builder;->mTrigger:Landroid/hardware/input/InputGestureData$Trigger;

    .line 100
    return-object p0
.end method

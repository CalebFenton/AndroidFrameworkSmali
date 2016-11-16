.class public Lcom/android/internal/policy/EmergencyAffordanceManager;
.super Ljava/lang/Object;
.source "EmergencyAffordanceManager.java"


# static fields
.field private static final EMERGENCY_CALL_NUMBER_SETTING:Ljava/lang/String; = "emergency_affordance_number"

.field public static final ENABLED:Z = true

.field private static final FORCE_EMERGENCY_AFFORDANCE_SETTING:Ljava/lang/String; = "force_emergency_affordance"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    #@5
    .line 47
    return-void
.end method

.method private forceShowing()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 99
    const-string/jumbo v2, "force_emergency_affordance"

    #@a
    .line 98
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private static getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    .line 60
    const v3, 0x1040073

    #@8
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 61
    .local v0, "number":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "emergency_affordance_number"

    #@17
    .line 62
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 64
    .local v1, "override":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1d
    .line 65
    move-object v0, v1

    #@1e
    .line 68
    .end local v1    # "override":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "tel"

    #@21
    invoke-static {v2, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    #@24
    move-result-object v2

    #@25
    return-object v2
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    iget-object v1, p0, Lcom/android/internal/policy/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 93
    const-string/jumbo v2, "emergency_affordance_needed"

    #@a
    .line 92
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private static performEmergencyCall(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.CALL_EMERGENCY"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 73
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->getPhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@f
    .line 74
    const/high16 v1, 0x10000000

    #@11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@14
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@17
    .line 71
    return-void
.end method


# virtual methods
.method public needsEmergencyAffordance()Z
    .locals 1

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->forceShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 86
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->isEmergencyAffordanceNeeded()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final performEmergencyCall()V
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/EmergencyAffordanceManager;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Lcom/android/internal/policy/EmergencyAffordanceManager;->performEmergencyCall(Landroid/content/Context;)V

    #@5
    .line 54
    return-void
.end method

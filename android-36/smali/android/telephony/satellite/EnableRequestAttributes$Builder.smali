.class public final Landroid/telephony/satellite/EnableRequestAttributes$Builder;
.super Ljava/lang/Object;
.source "EnableRequestAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/EnableRequestAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergencyMode:Z

.field private blacklist mIsEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsDemoMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsDemoMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencyMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEmergencyMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEnabled(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    return p0
.end method

.method public constructor whitelist <init>(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsDemoMode:Z

    .line 84
    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEmergencyMode:Z

    .line 87
    iput-boolean p1, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/satellite/EnableRequestAttributes;
    .registers 3

    .line 130
    new-instance v0, Landroid/telephony/satellite/EnableRequestAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/satellite/EnableRequestAttributes;-><init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;Landroid/telephony/satellite/EnableRequestAttributes-IA;)V

    return-object v0
.end method

.method public whitelist setDemoMode(Z)Landroid/telephony/satellite/EnableRequestAttributes$Builder;
    .registers 3
    .param p1, "isDemoMode"    # Z

    .line 100
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    if-eqz v0, :cond_6

    .line 101
    iput-boolean p1, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsDemoMode:Z

    .line 103
    :cond_6
    return-object p0
.end method

.method public whitelist setEmergencyMode(Z)Landroid/telephony/satellite/EnableRequestAttributes$Builder;
    .registers 3
    .param p1, "isEmergencyMode"    # Z

    .line 117
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEnabled:Z

    if-eqz v0, :cond_6

    .line 118
    iput-boolean p1, p0, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->mIsEmergencyMode:Z

    .line 120
    :cond_6
    return-object p0
.end method

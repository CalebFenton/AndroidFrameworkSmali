.class public Landroid/telephony/satellite/EnableRequestAttributes;
.super Ljava/lang/Object;
.source "EnableRequestAttributes.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/EnableRequestAttributes$Builder;
    }
.end annotation


# instance fields
.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergencyMode:Z

.field private blacklist mIsEnabled:Z


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/satellite/EnableRequestAttributes$Builder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->-$$Nest$fgetmIsEnabled(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEnabled:Z

    .line 53
    invoke-static {p1}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->-$$Nest$fgetmIsDemoMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsDemoMode:Z

    .line 54
    invoke-static {p1}, Landroid/telephony/satellite/EnableRequestAttributes$Builder;->-$$Nest$fgetmIsEmergencyMode(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEmergencyMode:Z

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;Landroid/telephony/satellite/EnableRequestAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/EnableRequestAttributes;-><init>(Landroid/telephony/satellite/EnableRequestAttributes$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist isDemoMode()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsDemoMode:Z

    return v0
.end method

.method public whitelist isEmergencyMode()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEmergencyMode:Z

    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroid/telephony/satellite/EnableRequestAttributes;->mIsEnabled:Z

    return v0
.end method

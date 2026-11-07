.class public Lcom/android/internal/telephony/emergency/EmergencyConstants;
.super Ljava/lang/Object;
.source "EmergencyConstants.java"


# static fields
.field public static final blacklist MODE_EMERGENCY_CALLBACK:I = 0x3

.field public static final blacklist MODE_EMERGENCY_NONE:I = 0x0

.field public static final blacklist MODE_EMERGENCY_WLAN:I = 0x2

.field public static final blacklist MODE_EMERGENCY_WWAN:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emergencyModeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_22
    const-string p0, "CALLBACK"

    return-object p0

    .line 64
    :cond_25
    const-string p0, "WLAN"

    return-object p0

    .line 63
    :cond_28
    const-string p0, "WWAN"

    return-object p0

    .line 62
    :cond_2b
    const-string p0, "NONE"

    return-object p0
.end method

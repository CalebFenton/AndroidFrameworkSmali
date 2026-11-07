.class public final synthetic Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist m(ZII)I
    .registers 3

    .line 0
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, p2

    return p0
.end method

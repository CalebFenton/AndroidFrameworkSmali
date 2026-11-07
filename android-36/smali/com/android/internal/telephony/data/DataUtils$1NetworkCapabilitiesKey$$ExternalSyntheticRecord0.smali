.class public final synthetic Lcom/android/internal/telephony/data/DataUtils$1NetworkCapabilitiesKey$$ExternalSyntheticRecord0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    invoke-static {p2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

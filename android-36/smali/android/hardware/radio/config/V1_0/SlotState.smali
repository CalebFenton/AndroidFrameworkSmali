.class public final Landroid/hardware/radio/config/V1_0/SlotState;
.super Ljava/lang/Object;
.source "SlotState.java"


# direct methods
.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 15
    const-string p0, "INACTIVE"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 18
    const-string p0, "ACTIVE"

    return-object p0

    .line 20
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Llibcore/internal/Java21LanguageFeatures$$ExternalSyntheticTypeSwitch0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic blacklist m(Ljava/lang/Object;I[Ljava/lang/Object;)I
    .registers 5

    .line 0
    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_4
    array-length v0, p2

    if-ge p1, v0, :cond_20

    aget-object v0, p2, p1

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_16

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return p1

    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return p1

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_20
    const/4 p0, -0x2

    return p0
.end method

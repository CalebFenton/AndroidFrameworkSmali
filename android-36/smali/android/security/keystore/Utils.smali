.class public final Landroid/security/keystore/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;
    .registers 2
    .param p0, "value"    # Ljava/util/Date;

    .line 30
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method static blacklist cloneIfNotNull([B)[B
    .registers 2
    .param p0, "value"    # [B

    .line 34
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method static blacklist cloneIfNotNull([I)[I
    .registers 2
    .param p0, "value"    # [I

    .line 38
    if-eqz p0, :cond_9

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

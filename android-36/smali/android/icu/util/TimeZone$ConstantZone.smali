.class final Landroid/icu/util/TimeZone$ConstantZone;
.super Landroid/icu/util/TimeZone;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantZone"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private volatile transient greylist-max-o isFrozen:Z

.field private greylist-max-o rawOffset:I


# direct methods
.method private constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    .line 1334
    invoke-direct {p0, p2}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    .line 1366
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    .line 1335
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    .line 1336
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/icu/util/TimeZone-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api cloneAsThawed()Landroid/icu/util/TimeZone;
    .registers 3

    .line 1381
    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone$ConstantZone;

    .line 1382
    .local v0, "tz":Landroid/icu/util/TimeZone$ConstantZone;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    .line 1383
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api freeze()Landroid/icu/util/TimeZone;
    .registers 2

    .line 1375
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    .line 1376
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 1328
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .line 1340
    iget v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return v0
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 1353
    iget v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 1363
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 1370
    iget-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return v0
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 4
    .param p1, "offsetMillis"    # I

    .line 1345
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1348
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    .line 1349
    return-void

    .line 1346
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 1358
    const/4 v0, 0x0

    return v0
.end method

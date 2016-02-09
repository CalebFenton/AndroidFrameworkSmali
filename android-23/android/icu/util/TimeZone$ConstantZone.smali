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
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile transient isFrozen:Z

.field private rawOffset:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1323
    invoke-direct {p0, p2}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    #@3
    .line 1355
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    #@6
    .line 1324
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    #@8
    .line 1322
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/icu/util/TimeZone$ConstantZone;)V
    .locals 0
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    #@0
    .prologue
    .line 1370
    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/TimeZone$ConstantZone;

    #@6
    .line 1371
    .local v0, "tz":Landroid/icu/util/TimeZone$ConstantZone;
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    #@9
    .line 1372
    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 1364
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    #@3
    .line 1365
    return-object p0
.end method

.method public getOffset(IIIIII)I
    .locals 1
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    #@0
    .prologue
    .line 1329
    iget v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    #@2
    return v0
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 1342
    iget v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    #@2
    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1352
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 1359
    iget-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    #@2
    return v0
.end method

.method public setRawOffset(I)V
    .locals 2
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 1334
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify a frozen TimeZone instance."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1337
    :cond_0
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    #@11
    .line 1333
    return-void
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 1347
    const/4 v0, 0x0

    #@1
    return v0
.end method

.class public Lcom/android/internal/app/NightDisplayController$LocalTime;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NightDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalTime"
.end annotation


# instance fields
.field public final hourOfDay:I

.field public final minute:I


# direct methods
.method static synthetic -wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 1
    .param p0, "millis"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->valueOf(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->toMillis()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    #@0
    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 307
    if-ltz p1, :cond_0

    #@5
    const/16 v0, 0x17

    #@7
    if-le p1, v0, :cond_1

    #@9
    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Invalid hourOfDay: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 309
    :cond_1
    if-ltz p2, :cond_2

    #@25
    const/16 v0, 0x3b

    #@27
    if-le p2, v0, :cond_3

    #@29
    .line 310
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Invalid minute: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 313
    :cond_3
    iput p1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    #@45
    .line 314
    iput p2, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    #@47
    .line 306
    return-void
.end method

.method private toMillis()I
    .locals 3

    #@0
    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    #@2
    const v1, 0x36ee80

    #@5
    mul-int/2addr v0, v1

    #@6
    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    #@8
    const v2, 0xea60

    #@b
    mul-int/2addr v1, v2

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method private static valueOf(I)Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 3
    .param p0, "millis"    # I

    #@0
    .prologue
    .line 374
    const v2, 0x36ee80

    #@3
    div-int v2, p0, v2

    #@5
    rem-int/lit8 v0, v2, 0x18

    #@7
    .line 375
    .local v0, "hourOfDay":I
    const v2, 0xea60

    #@a
    div-int v2, p0, v2

    #@c
    rem-int/lit8 v1, v2, 0x3c

    #@e
    .line 376
    .local v1, "minutes":I
    new-instance v2, Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@10
    invoke-direct {v2, v0, v1}, Lcom/android/internal/app/NightDisplayController$LocalTime;-><init>(II)V

    #@13
    return-object v2
.end method


# virtual methods
.method public getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p1, "time"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v2, 0x6

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    .line 351
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    #@e
    .line 352
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@15
    .line 354
    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    #@17
    const/16 v2, 0xb

    #@19
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 355
    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    #@1e
    const/16 v2, 0xc

    #@20
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@23
    .line 356
    const/16 v1, 0xd

    #@25
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@28
    .line 357
    const/16 v1, 0xe

    #@2a
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    #@2d
    .line 360
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 361
    const/4 v1, 0x5

    #@34
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    #@37
    .line 364
    :cond_0
    return-object v0
.end method

.method public getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p1, "time"    # Ljava/util/Calendar;

    #@0
    .prologue
    const/4 v4, 0x6

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@6
    move-result-object v0

    #@7
    .line 326
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@e
    .line 327
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    #@15
    .line 329
    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    #@17
    const/16 v2, 0xb

    #@19
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@1c
    .line 330
    iget v1, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    #@1e
    const/16 v2, 0xc

    #@20
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    #@23
    .line 331
    const/16 v1, 0xd

    #@25
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    #@28
    .line 332
    const/16 v1, 0xe

    #@2a
    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    #@2d
    .line 335
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_0

    #@33
    .line 336
    const/4 v1, 0x5

    #@34
    const/4 v2, -0x1

    #@35
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    #@38
    .line 339
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 388
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2
    const-string/jumbo v1, "%02d:%02d"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    iget v3, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    #@a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    aput-object v3, v2, v4

    #@11
    iget v3, p0, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    #@13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x1

    #@18
    aput-object v3, v2, v4

    #@1a
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

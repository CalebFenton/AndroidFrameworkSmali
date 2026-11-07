.class public final Landroid/content/ContentValues;
.super Ljava/lang/Object;
.source "ContentValues.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TAG:Ljava/lang/String; = "ContentValues"


# instance fields
.field private final blacklist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 527
    new-instance v0, Landroid/content/ContentValues$1;

    invoke-direct {v0}, Landroid/content/ContentValues$1;-><init>()V

    sput-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    .line 57
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ContentValues;)V
    .registers 4
    .param p1, "from"    # Landroid/content/ContentValues;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    .line 93
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;Landroid/os/Parcel$ClassLoaderProvider;)V

    .line 94
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/ContentValues-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContentValues;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist <init>(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    .local p1, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    .line 87
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method public static blacklist isSupportedValue(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 589
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 590
    return v0

    .line 591
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 592
    return v0

    .line 593
    :cond_9
    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_e

    .line 594
    return v0

    .line 595
    :cond_e
    instance-of v1, p0, Ljava/lang/Short;

    if-eqz v1, :cond_13

    .line 596
    return v0

    .line 597
    :cond_13
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_18

    .line 598
    return v0

    .line 599
    :cond_18
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_1d

    .line 600
    return v0

    .line 601
    :cond_1d
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_22

    .line 602
    return v0

    .line 603
    :cond_22
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_27

    .line 604
    return v0

    .line 605
    :cond_27
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    .line 606
    return v0

    .line 607
    :cond_2c
    instance-of v1, p0, [B

    if-eqz v1, :cond_31

    .line 608
    return v0

    .line 610
    :cond_31
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist clear()V
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 281
    return-void
.end method

.method public whitelist containsKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Landroid/content/ContentValues;

    if-nez v0, :cond_6

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_6
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    move-object v1, p1

    check-cast v1, Landroid/content/ContentValues;

    iget-object v1, v1, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 473
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 475
    .local v0, "value":Ljava/lang/Object;
    :try_start_6
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_a

    return-object v1

    .line 476
    :catch_a
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/ClassCastException;
    instance-of v2, v0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    .line 482
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    move v3, v4

    :cond_28
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 483
    :cond_2d
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_40

    .line 484
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_3b

    move v3, v4

    :cond_3b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 486
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot cast value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to a Boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentValues"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getAsByte(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    :try_start_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_68

    .line 401
    :catch_15
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, "ContentValues"

    if-eqz v3, :cond_47

    .line 404
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v1

    .line 405
    :catch_25
    move-exception v3

    .line 406
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse Byte value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v1

    .line 410
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Byte: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    return-object v1

    .line 400
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_68
    :goto_68
    return-object v1
.end method

.method public whitelist getAsByteArray(Ljava/lang/String;)[B
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 501
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 502
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_e

    .line 503
    move-object v1, v0

    check-cast v1, [B

    return-object v1

    .line 505
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getAsDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    :try_start_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_68

    .line 426
    :catch_15
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, "ContentValues"

    if-eqz v3, :cond_47

    .line 429
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v1

    .line 430
    :catch_25
    move-exception v3

    .line 431
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse Double value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v1

    .line 435
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Double: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    return-object v1

    .line 425
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_68
    :goto_68
    return-object v1
.end method

.method public whitelist getAsFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    :try_start_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_68

    .line 451
    :catch_15
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, "ContentValues"

    if-eqz v3, :cond_47

    .line 454
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v1

    .line 455
    :catch_25
    move-exception v3

    .line 456
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse Float value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v1

    .line 460
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Float: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    return-object v1

    .line 450
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_68
    :goto_68
    return-object v1
.end method

.method public whitelist getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    :try_start_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_68

    .line 351
    :catch_15
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, "ContentValues"

    if-eqz v3, :cond_47

    .line 354
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v1

    .line 355
    :catch_25
    move-exception v3

    .line 356
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse Integer value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v1

    .line 360
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Integer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    return-object v1

    .line 350
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_68
    :goto_68
    return-object v1
.end method

.method public whitelist getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    :try_start_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_68

    .line 326
    :catch_15
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, "ContentValues"

    if-eqz v3, :cond_47

    .line 329
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v1

    .line 330
    :catch_25
    move-exception v3

    .line 331
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse Long value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v1

    .line 335
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Long: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-object v1

    .line 325
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_68
    :goto_68
    return-object v1
.end method

.method public whitelist getAsShort(Ljava/lang/String;)Ljava/lang/Short;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .line 373
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    :try_start_9
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_68

    .line 376
    :catch_15
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v3, v0, Ljava/lang/CharSequence;

    const-string v4, "ContentValues"

    if-eqz v3, :cond_47

    .line 379
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_25

    return-object v1

    .line 380
    :catch_25
    move-exception v3

    .line 381
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse Short value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-object v1

    .line 385
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot cast value for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to a Short: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    return-object v1

    .line 375
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_68
    :goto_68
    return-object v1
.end method

.method public whitelist getAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getValues()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2

    .line 264
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 200
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Byte;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Byte;

    .line 140
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 190
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Float;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .line 180
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 160
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .line 170
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/Short;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Short;

    .line 150
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public whitelist put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public whitelist put(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 210
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public whitelist putAll(Landroid/content/ContentValues;)V
    .registers 4
    .param p1, "other"    # Landroid/content/ContentValues;

    .line 130
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 131
    return-void
.end method

.method public whitelist putNull(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 224
    if-nez p2, :cond_6

    .line 225
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_68

    .line 226
    :cond_6
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 227
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 228
    :cond_11
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_1c

    .line 229
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_68

    .line 230
    :cond_1c
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_27

    .line 231
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_68

    .line 232
    :cond_27
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_32

    .line 233
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_68

    .line 234
    :cond_32
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3d

    .line 235
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_68

    .line 236
    :cond_3d
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_48

    .line 237
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_68

    .line 238
    :cond_48
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_53

    .line 239
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_68

    .line 240
    :cond_53
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5e

    .line 241
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_68

    .line 242
    :cond_5e
    instance-of v0, p2, [B

    if-eqz v0, :cond_69

    .line 243
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 247
    :goto_68
    return-void

    .line 245
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 580
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2a

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_f

    .line 584
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 547
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget-object v0, p0, Landroid/content/ContentValues;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMap(Landroid/util/ArrayMap;)V

    .line 549
    return-void
.end method

.class public final Landroid/content/ContentValues;
.super Ljava/lang/Object;
.source "ContentValues.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentValues$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ContentValues"


# instance fields
.field private mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 461
    new-instance v0, Landroid/content/ContentValues$1;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues$1;-><init>()V

    #@5
    .line 460
    sput-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    const/16 v1, 0x8

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@c
    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/util/HashMap;

    #@5
    const/high16 v1, 0x3f800000    # 1.0f

    #@7
    invoke-direct {v0, p1, v1}, Ljava/util/HashMap;-><init>(IF)V

    #@a
    iput-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@c
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "from"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Ljava/util/HashMap;

    #@5
    iget-object v1, p1, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@a
    iput-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@c
    .line 61
    return-void
.end method

.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput-object p1, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@5
    .line 72
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Ljava/util/HashMap;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentValues;-><init>(Ljava/util/HashMap;)V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 218
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 475
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    instance-of v0, p1, Landroid/content/ContentValues;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 79
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 81
    :cond_0
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@8
    check-cast p1, Landroid/content/ContentValues;

    #@a
    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 411
    iget-object v3, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 413
    .local v1, "value":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .end local v1    # "value":Ljava/lang/Object;
    return-object v1

    #@a
    .line 414
    .restart local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@b
    .line 415
    .local v0, "e":Ljava/lang/ClassCastException;
    instance-of v3, v1, Ljava/lang/CharSequence;

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 417
    :cond_0
    instance-of v3, v1, Ljava/lang/Number;

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 418
    check-cast v1, Ljava/lang/Number;

    #@1e
    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    const/4 v2, 0x1

    #@25
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@28
    move-result-object v2

    #@29
    return-object v2

    #@2a
    .line 420
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "ContentValues"

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Cannot cast value for "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v4, " to a Boolean: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    .line 421
    const/4 v2, 0x0

    #@50
    return-object v2
.end method

.method public getAsByte(Ljava/lang/String;)Ljava/lang/Byte;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 336
    iget-object v4, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    .line 338
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@9
    :try_start_0
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Number;

    #@c
    move-object v4, v0

    #@d
    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v4

    #@15
    :goto_0
    return-object v4

    #@16
    :cond_0
    move-object v4, v5

    #@17
    goto :goto_0

    #@18
    .line 339
    :catch_0
    move-exception v1

    #@19
    .line 340
    .local v1, "e":Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 342
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 343
    :catch_1
    move-exception v2

    #@27
    .line 344
    .local v2, "e2":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "ContentValues"

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Cannot parse Byte value for "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, " at key "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 345
    return-object v5

    #@4d
    .line 348
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v4, "ContentValues"

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Cannot cast value for "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    const-string/jumbo v7, " to a Byte: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 349
    return-object v5
.end method

.method public getAsByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 434
    iget-object v1, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 435
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 436
    check-cast v0, [B

    #@c
    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    #@d
    .line 438
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@e
    return-object v1
.end method

.method public getAsDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 361
    iget-object v5, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    .line 363
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@9
    :try_start_0
    move-object v0, v4

    #@a
    check-cast v0, Ljava/lang/Number;

    #@c
    move-object v5, v0

    #@d
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    #@10
    move-result-wide v8

    #@11
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v5

    #@15
    :goto_0
    return-object v5

    #@16
    :cond_0
    move-object v5, v6

    #@17
    goto :goto_0

    #@18
    .line 364
    :catch_0
    move-exception v2

    #@19
    .line 365
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v5, v4, Ljava/lang/CharSequence;

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 367
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v5

    #@25
    return-object v5

    #@26
    .line 368
    :catch_1
    move-exception v3

    #@27
    .line 369
    .local v3, "e2":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "ContentValues"

    #@2a
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v8, "Cannot parse Double value for "

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    const-string/jumbo v8, " at key "

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 370
    return-object v6

    #@4d
    .line 373
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v5, "ContentValues"

    #@50
    new-instance v7, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v8, "Cannot cast value for "

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    const-string/jumbo v8, " to a Double: "

    #@63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 374
    return-object v6
.end method

.method public getAsFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 386
    iget-object v4, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    .line 388
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@9
    :try_start_0
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Number;

    #@c
    move-object v4, v0

    #@d
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v4

    #@15
    :goto_0
    return-object v4

    #@16
    :cond_0
    move-object v4, v5

    #@17
    goto :goto_0

    #@18
    .line 389
    :catch_0
    move-exception v1

    #@19
    .line 390
    .local v1, "e":Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 392
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 393
    :catch_1
    move-exception v2

    #@27
    .line 394
    .local v2, "e2":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "ContentValues"

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Cannot parse Float value for "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, " at key "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 395
    return-object v5

    #@4d
    .line 398
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v4, "ContentValues"

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Cannot cast value for "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    const-string/jumbo v7, " to a Float: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 399
    return-object v5
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 286
    iget-object v4, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    .line 288
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@9
    :try_start_0
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Number;

    #@c
    move-object v4, v0

    #@d
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v4

    #@15
    :goto_0
    return-object v4

    #@16
    :cond_0
    move-object v4, v5

    #@17
    goto :goto_0

    #@18
    .line 289
    :catch_0
    move-exception v1

    #@19
    .line 290
    .local v1, "e":Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 292
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 293
    :catch_1
    move-exception v2

    #@27
    .line 294
    .local v2, "e2":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "ContentValues"

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Cannot parse Integer value for "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, " at key "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 295
    return-object v5

    #@4d
    .line 298
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v4, "ContentValues"

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Cannot cast value for "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    const-string/jumbo v7, " to a Integer: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 299
    return-object v5
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 261
    iget-object v5, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    .line 263
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    #@9
    :try_start_0
    move-object v0, v4

    #@a
    check-cast v0, Ljava/lang/Number;

    #@c
    move-object v5, v0

    #@d
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    #@10
    move-result-wide v8

    #@11
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v5

    #@15
    :goto_0
    return-object v5

    #@16
    :cond_0
    move-object v5, v6

    #@17
    goto :goto_0

    #@18
    .line 264
    :catch_0
    move-exception v2

    #@19
    .line 265
    .local v2, "e":Ljava/lang/ClassCastException;
    instance-of v5, v4, Ljava/lang/CharSequence;

    #@1b
    if-eqz v5, :cond_1

    #@1d
    .line 267
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v5

    #@25
    return-object v5

    #@26
    .line 268
    :catch_1
    move-exception v3

    #@27
    .line 269
    .local v3, "e2":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "ContentValues"

    #@2a
    new-instance v7, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v8, "Cannot parse Long value for "

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    const-string/jumbo v8, " at key "

    #@3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 270
    return-object v6

    #@4d
    .line 273
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v5, "ContentValues"

    #@50
    new-instance v7, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v8, "Cannot cast value for "

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    const-string/jumbo v8, " to a Long: "

    #@63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v7

    #@6b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 274
    return-object v6
.end method

.method public getAsShort(Ljava/lang/String;)Ljava/lang/Short;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 311
    iget-object v4, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    .line 313
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    #@9
    :try_start_0
    move-object v0, v3

    #@a
    check-cast v0, Ljava/lang/Number;

    #@c
    move-object v4, v0

    #@d
    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    #@10
    move-result v4

    #@11
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v4

    #@15
    :goto_0
    return-object v4

    #@16
    :cond_0
    move-object v4, v5

    #@17
    goto :goto_0

    #@18
    .line 314
    :catch_0
    move-exception v1

    #@19
    .line 315
    .local v1, "e":Ljava/lang/ClassCastException;
    instance-of v4, v3, Ljava/lang/CharSequence;

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 317
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 318
    :catch_1
    move-exception v2

    #@27
    .line 319
    .local v2, "e2":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "ContentValues"

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Cannot parse Short value for "

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, " at key "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 320
    return-object v5

    #@4d
    .line 323
    .end local v2    # "e2":Ljava/lang/NumberFormatException;
    :cond_1
    const-string/jumbo v4, "ContentValues"

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Cannot cast value for "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v6

    #@60
    const-string/jumbo v7, " to a Short: "

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v6

    #@67
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@72
    .line 324
    return-object v5
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 250
    iget-object v2, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 251
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/ArrayList;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 174
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Byte;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Byte;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 114
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 164
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 154
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 134
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 144
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Short;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Short;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 124
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 95
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 184
    return-void
.end method

.method public putAll(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "other"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    iget-object v1, p1, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@7
    .line 104
    return-void
.end method

.method public putNull(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 193
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 489
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 488
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 211
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 509
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@7
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "name$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 510
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 511
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@22
    move-result v4

    #@23
    if-lez v4, :cond_0

    #@25
    const-string/jumbo v4, " "

    #@28
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 512
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    const-string/jumbo v5, "="

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 514
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    return-object v4
.end method

.method public valueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/content/ContentValues;->mValues:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@5
    .line 479
    return-void
.end method

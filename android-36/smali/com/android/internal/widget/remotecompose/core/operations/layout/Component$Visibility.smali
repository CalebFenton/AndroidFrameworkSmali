.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visibility"
.end annotation


# static fields
.field public static final blacklist CLEAR_OVERRIDE:I = 0x80

.field public static final blacklist GONE:I = 0x0

.field public static final blacklist INVISIBLE:I = 0x2

.field public static final blacklist OVERRIDE_GONE:I = 0x10

.field public static final blacklist OVERRIDE_INVISIBLE:I = 0x40

.field public static final blacklist OVERRIDE_VISIBLE:I = 0x20

.field public static final blacklist VISIBLE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(II)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "visibility"    # I

    .line 473
    and-int/lit8 v0, p0, 0xf

    .line 474
    .local v0, "v":I
    add-int/2addr v0, p1

    .line 475
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_b

    .line 476
    and-int/lit8 v0, v0, 0xf

    .line 478
    :cond_b
    return v0
.end method

.method public static blacklist clearOverride(I)I
    .registers 2
    .param p0, "value"    # I

    .line 462
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static blacklist hasOverride(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 452
    shr-int/lit8 v0, p0, 0x4

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isGone(I)Z
    .registers 5
    .param p0, "value"    # I

    .line 413
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_f

    .line 414
    and-int/lit8 v0, p0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 416
    :cond_f
    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1
.end method

.method public static blacklist isInvisible(I)Z
    .registers 5
    .param p0, "value"    # I

    .line 439
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_f

    .line 440
    and-int/lit8 v0, p0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 442
    :cond_f
    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1
.end method

.method public static blacklist isVisible(I)Z
    .registers 5
    .param p0, "value"    # I

    .line 426
    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_e

    .line 427
    and-int/lit8 v0, p0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 429
    :cond_e
    if-ne p0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .line 384
    packed-switch p0, :pswitch_data_40

    .line 392
    shr-int/lit8 v0, p0, 0x4

    if-lez v0, :cond_2b

    .line 393
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_19

    .line 394
    const-string v0, "OVERRIDE_GONE"

    return-object v0

    .line 390
    :pswitch_10
    const-string v0, "INVISIBLE"

    return-object v0

    .line 388
    :pswitch_13
    const-string v0, "VISIBLE"

    return-object v0

    .line 386
    :pswitch_16
    const-string v0, "GONE"

    return-object v0

    .line 396
    :cond_19
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_22

    .line 397
    const-string v0, "OVERRIDE_VISIBLE"

    return-object v0

    .line 399
    :cond_22
    and-int/lit8 v0, p0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2b

    .line 400
    const-string v0, "OVERRIDE_INVISIBLE"

    return-object v0

    .line 403
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

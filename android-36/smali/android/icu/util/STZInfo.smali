.class final Landroid/icu/util/STZInfo;
.super Ljava/lang/Object;
.source "STZInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x6cef6c8f34397e78L


# instance fields
.field greylist-max-o ea:Z

.field greylist-max-o edm:I

.field greylist-max-o edw:I

.field greylist-max-o edwm:I

.field greylist-max-o em:I

.field greylist-max-o et:I

.field greylist-max-o sa:Z

.field greylist-max-o sdm:I

.field greylist-max-o sdw:I

.field greylist-max-o sdwm:I

.field greylist-max-o sm:I

.field greylist-max-o st:I

.field greylist-max-o sy:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/STZInfo;->sy:I

    .line 83
    iput v0, p0, Landroid/icu/util/STZInfo;->sm:I

    .line 85
    iput v0, p0, Landroid/icu/util/STZInfo;->em:I

    return-void
.end method


# virtual methods
.method greylist-max-o applyTo(Landroid/icu/util/SimpleTimeZone;)V
    .registers 9
    .param p1, "stz"    # Landroid/icu/util/SimpleTimeZone;

    .line 59
    iget v1, p0, Landroid/icu/util/STZInfo;->sy:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    .line 60
    iget v1, p0, Landroid/icu/util/STZInfo;->sy:I

    invoke-virtual {p1, v1}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 62
    :cond_a
    iget v1, p0, Landroid/icu/util/STZInfo;->sm:I

    if-eq v1, v6, :cond_3a

    .line 63
    iget v1, p0, Landroid/icu/util/STZInfo;->sdm:I

    if-ne v1, v6, :cond_1e

    .line 64
    iget v1, p0, Landroid/icu/util/STZInfo;->sm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->sdwm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->sdw:I

    iget v4, p0, Landroid/icu/util/STZInfo;->st:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    goto :goto_3a

    .line 65
    :cond_1e
    iget v1, p0, Landroid/icu/util/STZInfo;->sdw:I

    if-ne v1, v6, :cond_2c

    .line 66
    iget v1, p0, Landroid/icu/util/STZInfo;->sm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->sdm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->st:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    goto :goto_3a

    .line 68
    :cond_2c
    iget v1, p0, Landroid/icu/util/STZInfo;->sm:I

    iget v2, p0, Landroid/icu/util/STZInfo;->sdm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->sdw:I

    iget v4, p0, Landroid/icu/util/STZInfo;->st:I

    iget-boolean v5, p0, Landroid/icu/util/STZInfo;->sa:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIIZ)V

    .line 71
    :cond_3a
    :goto_3a
    iget v1, p0, Landroid/icu/util/STZInfo;->em:I

    if-eq v1, v6, :cond_6a

    .line 72
    iget v1, p0, Landroid/icu/util/STZInfo;->edm:I

    if-ne v1, v6, :cond_4e

    .line 73
    iget v1, p0, Landroid/icu/util/STZInfo;->em:I

    iget v2, p0, Landroid/icu/util/STZInfo;->edwm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->edw:I

    iget v4, p0, Landroid/icu/util/STZInfo;->et:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    goto :goto_6a

    .line 74
    :cond_4e
    iget v1, p0, Landroid/icu/util/STZInfo;->edw:I

    if-ne v1, v6, :cond_5c

    .line 75
    iget v1, p0, Landroid/icu/util/STZInfo;->em:I

    iget v2, p0, Landroid/icu/util/STZInfo;->edm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->et:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    goto :goto_6a

    .line 77
    :cond_5c
    iget v1, p0, Landroid/icu/util/STZInfo;->em:I

    iget v2, p0, Landroid/icu/util/STZInfo;->edm:I

    iget v3, p0, Landroid/icu/util/STZInfo;->edw:I

    iget v4, p0, Landroid/icu/util/STZInfo;->et:I

    iget-boolean v5, p0, Landroid/icu/util/STZInfo;->ea:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIZ)V

    .line 80
    :cond_6a
    :goto_6a
    return-void
.end method

.method greylist-max-o setEnd(IIIIIZ)V
    .registers 7
    .param p1, "em"    # I
    .param p2, "edwm"    # I
    .param p3, "edw"    # I
    .param p4, "et"    # I
    .param p5, "edm"    # I
    .param p6, "ea"    # Z

    .line 26
    iput p1, p0, Landroid/icu/util/STZInfo;->em:I

    .line 27
    iput p2, p0, Landroid/icu/util/STZInfo;->edwm:I

    .line 28
    iput p3, p0, Landroid/icu/util/STZInfo;->edw:I

    .line 29
    iput p4, p0, Landroid/icu/util/STZInfo;->et:I

    .line 30
    iput p5, p0, Landroid/icu/util/STZInfo;->edm:I

    .line 31
    iput-boolean p6, p0, Landroid/icu/util/STZInfo;->ea:Z

    .line 32
    return-void
.end method

.method greylist-max-o setStart(IIIIIZ)V
    .registers 7
    .param p1, "sm"    # I
    .param p2, "sdwm"    # I
    .param p3, "sdw"    # I
    .param p4, "st"    # I
    .param p5, "sdm"    # I
    .param p6, "sa"    # Z

    .line 17
    iput p1, p0, Landroid/icu/util/STZInfo;->sm:I

    .line 18
    iput p2, p0, Landroid/icu/util/STZInfo;->sdwm:I

    .line 19
    iput p3, p0, Landroid/icu/util/STZInfo;->sdw:I

    .line 20
    iput p4, p0, Landroid/icu/util/STZInfo;->st:I

    .line 21
    iput p5, p0, Landroid/icu/util/STZInfo;->sdm:I

    .line 22
    iput-boolean p6, p0, Landroid/icu/util/STZInfo;->sa:Z

    .line 23
    return-void
.end method

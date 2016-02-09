.class final Landroid/icu/util/STZInfo;
.super Ljava/lang/Object;
.source "STZInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6cef6c8f34397e78L


# instance fields
.field ea:Z

.field edm:I

.field edw:I

.field edwm:I

.field em:I

.field et:I

.field sa:Z

.field sdm:I

.field sdw:I

.field sdwm:I

.field sm:I

.field st:I

.field sy:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 79
    iput v0, p0, Landroid/icu/util/STZInfo;->sy:I

    #@6
    .line 80
    iput v0, p0, Landroid/icu/util/STZInfo;->sm:I

    #@8
    .line 82
    iput v0, p0, Landroid/icu/util/STZInfo;->em:I

    #@a
    .line 10
    return-void
.end method


# virtual methods
.method applyTo(Landroid/icu/util/SimpleTimeZone;)V
    .locals 7
    .param p1, "stz"    # Landroid/icu/util/SimpleTimeZone;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 56
    iget v0, p0, Landroid/icu/util/STZInfo;->sy:I

    #@3
    if-eq v0, v6, :cond_0

    #@5
    .line 57
    iget v0, p0, Landroid/icu/util/STZInfo;->sy:I

    #@7
    invoke-virtual {p1, v0}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    #@a
    .line 59
    :cond_0
    iget v0, p0, Landroid/icu/util/STZInfo;->sm:I

    #@c
    if-eq v0, v6, :cond_1

    #@e
    .line 60
    iget v0, p0, Landroid/icu/util/STZInfo;->sdm:I

    #@10
    if-ne v0, v6, :cond_3

    #@12
    .line 61
    iget v0, p0, Landroid/icu/util/STZInfo;->sm:I

    #@14
    iget v1, p0, Landroid/icu/util/STZInfo;->sdwm:I

    #@16
    iget v2, p0, Landroid/icu/util/STZInfo;->sdw:I

    #@18
    iget v3, p0, Landroid/icu/util/STZInfo;->st:I

    #@1a
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    #@1d
    .line 68
    :cond_1
    :goto_0
    iget v0, p0, Landroid/icu/util/STZInfo;->em:I

    #@1f
    if-eq v0, v6, :cond_2

    #@21
    .line 69
    iget v0, p0, Landroid/icu/util/STZInfo;->edm:I

    #@23
    if-ne v0, v6, :cond_5

    #@25
    .line 70
    iget v0, p0, Landroid/icu/util/STZInfo;->em:I

    #@27
    iget v1, p0, Landroid/icu/util/STZInfo;->edwm:I

    #@29
    iget v2, p0, Landroid/icu/util/STZInfo;->edw:I

    #@2b
    iget v3, p0, Landroid/icu/util/STZInfo;->et:I

    #@2d
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    #@30
    .line 55
    :cond_2
    :goto_1
    return-void

    #@31
    .line 62
    :cond_3
    iget v0, p0, Landroid/icu/util/STZInfo;->sdw:I

    #@33
    if-ne v0, v6, :cond_4

    #@35
    .line 63
    iget v0, p0, Landroid/icu/util/STZInfo;->sm:I

    #@37
    iget v1, p0, Landroid/icu/util/STZInfo;->sdm:I

    #@39
    iget v2, p0, Landroid/icu/util/STZInfo;->st:I

    #@3b
    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    #@3e
    goto :goto_0

    #@3f
    .line 65
    :cond_4
    iget v1, p0, Landroid/icu/util/STZInfo;->sm:I

    #@41
    iget v2, p0, Landroid/icu/util/STZInfo;->sdm:I

    #@43
    iget v3, p0, Landroid/icu/util/STZInfo;->sdw:I

    #@45
    iget v4, p0, Landroid/icu/util/STZInfo;->st:I

    #@47
    iget-boolean v5, p0, Landroid/icu/util/STZInfo;->sa:Z

    #@49
    move-object v0, p1

    #@4a
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIIZ)V

    #@4d
    goto :goto_0

    #@4e
    .line 71
    :cond_5
    iget v0, p0, Landroid/icu/util/STZInfo;->edw:I

    #@50
    if-ne v0, v6, :cond_6

    #@52
    .line 72
    iget v0, p0, Landroid/icu/util/STZInfo;->em:I

    #@54
    iget v1, p0, Landroid/icu/util/STZInfo;->edm:I

    #@56
    iget v2, p0, Landroid/icu/util/STZInfo;->et:I

    #@58
    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    #@5b
    goto :goto_1

    #@5c
    .line 74
    :cond_6
    iget v1, p0, Landroid/icu/util/STZInfo;->em:I

    #@5e
    iget v2, p0, Landroid/icu/util/STZInfo;->edm:I

    #@60
    iget v3, p0, Landroid/icu/util/STZInfo;->edw:I

    #@62
    iget v4, p0, Landroid/icu/util/STZInfo;->et:I

    #@64
    iget-boolean v5, p0, Landroid/icu/util/STZInfo;->ea:Z

    #@66
    move-object v0, p1

    #@67
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIZ)V

    #@6a
    goto :goto_1
.end method

.method setEnd(IIIIIZ)V
    .locals 0
    .param p1, "em"    # I
    .param p2, "edwm"    # I
    .param p3, "edw"    # I
    .param p4, "et"    # I
    .param p5, "edm"    # I
    .param p6, "ea"    # Z

    #@0
    .prologue
    .line 23
    iput p1, p0, Landroid/icu/util/STZInfo;->em:I

    #@2
    .line 24
    iput p2, p0, Landroid/icu/util/STZInfo;->edwm:I

    #@4
    .line 25
    iput p3, p0, Landroid/icu/util/STZInfo;->edw:I

    #@6
    .line 26
    iput p4, p0, Landroid/icu/util/STZInfo;->et:I

    #@8
    .line 27
    iput p5, p0, Landroid/icu/util/STZInfo;->edm:I

    #@a
    .line 28
    iput-boolean p6, p0, Landroid/icu/util/STZInfo;->ea:Z

    #@c
    .line 22
    return-void
.end method

.method setStart(IIIIIZ)V
    .locals 0
    .param p1, "sm"    # I
    .param p2, "sdwm"    # I
    .param p3, "sdw"    # I
    .param p4, "st"    # I
    .param p5, "sdm"    # I
    .param p6, "sa"    # Z

    #@0
    .prologue
    .line 14
    iput p1, p0, Landroid/icu/util/STZInfo;->sm:I

    #@2
    .line 15
    iput p2, p0, Landroid/icu/util/STZInfo;->sdwm:I

    #@4
    .line 16
    iput p3, p0, Landroid/icu/util/STZInfo;->sdw:I

    #@6
    .line 17
    iput p4, p0, Landroid/icu/util/STZInfo;->st:I

    #@8
    .line 18
    iput p5, p0, Landroid/icu/util/STZInfo;->sdm:I

    #@a
    .line 19
    iput-boolean p6, p0, Landroid/icu/util/STZInfo;->sa:Z

    #@c
    .line 13
    return-void
.end method

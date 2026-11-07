.class public Landroid/content/res/TagCounter;
.super Ljava/lang/Object;
.source "TagCounter.java"


# static fields
.field private static final blacklist DEFAULT_MAX_COUNT:I = 0x200


# instance fields
.field private blacklist mCount:I

.field private blacklist mMaxValue:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x200

    iput v0, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    .line 36
    return-void
.end method


# virtual methods
.method blacklist increment()V
    .registers 2

    .line 44
    iget v0, p0, Landroid/content/res/TagCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    .line 45
    return-void
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 48
    iget v0, p0, Landroid/content/res/TagCounter;->mCount:I

    iget v1, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method blacklist reset(I)V
    .registers 3
    .param p1, "maxValue"    # I

    .line 39
    iput p1, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    .line 41
    return-void
.end method

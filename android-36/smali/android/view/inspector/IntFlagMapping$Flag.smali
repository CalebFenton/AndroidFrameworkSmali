.class final Landroid/view/inspector/IntFlagMapping$Flag;
.super Ljava/lang/Object;
.source "IntFlagMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/IntFlagMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Flag"
.end annotation


# instance fields
.field private final blacklist mMask:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTarget:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/view/inspector/IntFlagMapping$Flag;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEnabledFor(Landroid/view/inspector/IntFlagMapping$Flag;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inspector/IntFlagMapping$Flag;->isEnabledFor(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "target"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mTarget:I

    .line 84
    iput p1, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mMask:I

    .line 85
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Landroid/view/inspector/IntFlagMapping-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inspector/IntFlagMapping$Flag;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private blacklist isEnabledFor(I)Z
    .registers 4
    .param p1, "value"    # I

    .line 95
    iget v0, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mMask:I

    and-int/2addr v0, p1

    iget v1, p0, Landroid/view/inspector/IntFlagMapping$Flag;->mTarget:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

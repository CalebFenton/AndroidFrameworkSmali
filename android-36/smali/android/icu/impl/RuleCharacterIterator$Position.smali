.class public final Landroid/icu/impl/RuleCharacterIterator$Position;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/RuleCharacterIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation


# instance fields
.field private blacklist buf:Ljava/lang/String;

.field private blacklist bufPos:I

.field private blacklist posIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbuf(Landroid/icu/impl/RuleCharacterIterator$Position;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/RuleCharacterIterator$Position;->buf:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbufPos(Landroid/icu/impl/RuleCharacterIterator$Position;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/RuleCharacterIterator$Position;->bufPos:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetposIndex(Landroid/icu/impl/RuleCharacterIterator$Position;)I
    .registers 1

    iget p0, p0, Landroid/icu/impl/RuleCharacterIterator$Position;->posIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbuf(Landroid/icu/impl/RuleCharacterIterator$Position;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator$Position;->buf:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputbufPos(Landroid/icu/impl/RuleCharacterIterator$Position;I)V
    .registers 2

    iput p1, p0, Landroid/icu/impl/RuleCharacterIterator$Position;->bufPos:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputposIndex(Landroid/icu/impl/RuleCharacterIterator$Position;I)V
    .registers 2

    iput p1, p0, Landroid/icu/impl/RuleCharacterIterator$Position;->posIndex:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

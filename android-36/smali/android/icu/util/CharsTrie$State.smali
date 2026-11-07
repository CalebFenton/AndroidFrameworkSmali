.class public final Landroid/icu/util/CharsTrie$State;
.super Ljava/lang/Object;
.source "CharsTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private greylist-max-o chars:Ljava/lang/CharSequence;

.field private greylist-max-o pos:I

.field private greylist-max-o remainingMatchLength:I

.field private greylist-max-o root:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetchars(Landroid/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpos(Landroid/icu/util/CharsTrie$State;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/CharsTrie$State;->pos:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetremainingMatchLength(Landroid/icu/util/CharsTrie$State;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/CharsTrie$State;->remainingMatchLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetroot(Landroid/icu/util/CharsTrie$State;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/CharsTrie$State;->root:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputchars(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/CharsTrie$State;->chars:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputpos(Landroid/icu/util/CharsTrie$State;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/CharsTrie$State;->pos:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputremainingMatchLength(Landroid/icu/util/CharsTrie$State;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/CharsTrie$State;->remainingMatchLength:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputroot(Landroid/icu/util/CharsTrie$State;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/CharsTrie$State;->root:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

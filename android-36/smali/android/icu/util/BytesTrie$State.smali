.class public final Landroid/icu/util/BytesTrie$State;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private greylist-max-o bytes:[B

.field private greylist-max-o pos:I

.field private greylist-max-o remainingMatchLength:I

.field private greylist-max-o root:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbytes(Landroid/icu/util/BytesTrie$State;)[B
    .registers 1

    iget-object p0, p0, Landroid/icu/util/BytesTrie$State;->bytes:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpos(Landroid/icu/util/BytesTrie$State;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/BytesTrie$State;->pos:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetremainingMatchLength(Landroid/icu/util/BytesTrie$State;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/BytesTrie$State;->remainingMatchLength:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetroot(Landroid/icu/util/BytesTrie$State;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/BytesTrie$State;->root:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbytes(Landroid/icu/util/BytesTrie$State;[B)V
    .registers 2

    iput-object p1, p0, Landroid/icu/util/BytesTrie$State;->bytes:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputpos(Landroid/icu/util/BytesTrie$State;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/BytesTrie$State;->pos:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputremainingMatchLength(Landroid/icu/util/BytesTrie$State;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/BytesTrie$State;->remainingMatchLength:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputroot(Landroid/icu/util/BytesTrie$State;I)V
    .registers 2

    iput p1, p0, Landroid/icu/util/BytesTrie$State;->root:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

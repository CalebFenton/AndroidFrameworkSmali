.class Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;
.super Ljava/lang/Object;
.source "StackStreamFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StackStreamFactory$AbstractStackWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibcoreAnchor"
.end annotation


# instance fields
.field private final blacklist nativeAnchor:Ljava/lang/Object;

.field private blacklist stackLevel:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetnativeAnchor(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->nativeAnchor:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstackLevel(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;)I
    .registers 1

    iget p0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->stackLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputstackLevel(Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;I)V
    .registers 2

    iput p1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->stackLevel:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "nativeAnchor"    # Ljava/lang/Object;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->stackLevel:I

    .line 454
    iput-object p1, p0, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;->nativeAnchor:Ljava/lang/Object;

    .line 455
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/StackStreamFactory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/StackStreamFactory$AbstractStackWalker$LibcoreAnchor;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.class Ljava/lang/Thread$ThreadIdentifiers;
.super Ljava/lang/Object;
.source "Thread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadIdentifiers"
.end annotation


# static fields
.field private static final blacklist NEXT_TID_OFFSET:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 608
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/lang/Thread$ThreadIdentifiers;->U:Ljdk/internal/misc/Unsafe;

    .line 611
    const-wide/32 v0, 0xef32

    sput-wide v0, Ljava/lang/Thread$ThreadIdentifiers;->NEXT_TID_OFFSET:J

    .line 612
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist next()J
    .registers 6

    .line 614
    sget-object v0, Ljava/lang/Thread$ThreadIdentifiers;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/lang/Thread$ThreadIdentifiers;->NEXT_TID_OFFSET:J

    const-wide/16 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide v0

    return-wide v0
.end method

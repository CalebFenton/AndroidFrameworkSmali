.class final Ljava/util/concurrent/ForkJoinTask$Aux;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Aux"
.end annotation


# static fields
.field private static final blacklist NEXT:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;


# instance fields
.field final blacklist ex:Ljava/lang/Throwable;

.field blacklist next:Ljava/util/concurrent/ForkJoinTask$Aux;

.field final blacklist thread:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 251
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinTask$Aux;->U:Ljdk/internal/misc/Unsafe;

    .line 252
    sget-object v0, Ljava/util/concurrent/ForkJoinTask$Aux;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/util/concurrent/ForkJoinTask$Aux;

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ForkJoinTask$Aux;->NEXT:J

    .line 253
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$Aux;->thread:Ljava/lang/Thread;

    .line 243
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinTask$Aux;->ex:Ljava/lang/Throwable;

    .line 244
    return-void
.end method


# virtual methods
.method final blacklist casNext(Ljava/util/concurrent/ForkJoinTask$Aux;Ljava/util/concurrent/ForkJoinTask$Aux;)Z
    .registers 9
    .param p1, "c"    # Ljava/util/concurrent/ForkJoinTask$Aux;
    .param p2, "v"    # Ljava/util/concurrent/ForkJoinTask$Aux;

    .line 246
    sget-object v0, Ljava/util/concurrent/ForkJoinTask$Aux;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask$Aux;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "c":Ljava/util/concurrent/ForkJoinTask$Aux;
    .end local p2    # "v":Ljava/util/concurrent/ForkJoinTask$Aux;
    .local v4, "c":Ljava/util/concurrent/ForkJoinTask$Aux;
    .local v5, "v":Ljava/util/concurrent/ForkJoinTask$Aux;
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.class final Ljava/util/concurrent/atomic/Striped64$Cell;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final blacklist VALUE:Ljava/lang/invoke/VarHandle;


# instance fields
.field volatile greylist-max-o value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 145
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 146
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/atomic/Striped64$Cell;

    const-string v2, "value"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 149
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 150
    return-void

    .line 147
    :catch_12
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "x"    # J

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    return-void
.end method


# virtual methods
.method final greylist-max-o cas(JJ)Z
    .registers 11
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 129
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:Ljava/lang/invoke/VarHandle;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "cmp":J
    .end local p3    # "val":J
    .local v2, "cmp":J
    .local v4, "val":J
    invoke-polymorphic/range {v0 .. v5}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/Striped64$Cell;JJ)Z

    move-result p1

    return p1
.end method

.method final blacklist getAndSet(J)J
    .registers 5
    .param p1, "val"    # J

    .line 138
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/Striped64$Cell;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final greylist-max-o reset()V
    .registers 4

    .line 132
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:Ljava/lang/invoke/VarHandle;

    const-wide/16 v1, 0x0

    invoke-polymorphic {v0, p0, v1, v2}, Ljava/lang/invoke/VarHandle;->setVolatile([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/Striped64$Cell;J)V

    .line 133
    return-void
.end method

.method final greylist-max-o reset(J)V
    .registers 4
    .param p1, "identity"    # J

    .line 135
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->setVolatile([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/Striped64$Cell;J)V

    .line 136
    return-void
.end method

.class public Ljava/util/concurrent/atomic/Fences;
.super Ljava/lang/Object;
.source "Fences.java"


# static fields
.field private static volatile theVolatile:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static orderAccesses(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 515
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    sput v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    #@3
    .line 516
    return-object p0
.end method

.method public static orderReads(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 486
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    sget v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    #@2
    .line 487
    .local v0, "ignore":I
    return-object p0
.end method

.method public static orderWrites(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 501
    .local p0, "ref":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1
    sput v0, Ljava/util/concurrent/atomic/Fences;->theVolatile:I

    #@3
    .line 502
    return-object p0
.end method

.method public static reachabilityFence(Ljava/lang/Object;)V
    .locals 0
    .param p0, "ref"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 535
    if-eqz p0, :cond_0

    #@2
    .line 536
    monitor-enter p0

    #@3
    monitor-exit p0

    #@4
    .line 534
    :cond_0
    return-void
.end method

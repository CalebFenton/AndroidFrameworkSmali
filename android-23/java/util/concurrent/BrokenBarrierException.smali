.class public Ljava/util/concurrent/BrokenBarrierException;
.super Ljava/lang/Exception;
.source "BrokenBarrierException.java"


# static fields
.field private static final serialVersionUID:J = 0x62c610b23d3ca0e4L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 34
    return-void
.end method

.class public Ljava/lang/AssertionError;
.super Ljava/lang/Error;
.source "AssertionError.java"


# static fields
.field private static final serialVersionUID:J = -0x4592d15402bec21aL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .param p1, "detailMessage"    # C

    #@0
    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 78
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "detailMessage"    # D

    #@0
    .prologue
    .line 123
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 122
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "detailMessage"    # F

    #@0
    .prologue
    .line 112
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 111
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "detailMessage"    # I

    #@0
    .prologue
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 89
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "detailMessage"    # J

    #@0
    .prologue
    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@7
    .line 55
    instance-of v0, p1, Ljava/lang/Throwable;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 56
    check-cast p1, Ljava/lang/Throwable;

    #@d
    .end local p1    # "detailMessage":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@10
    .line 53
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 39
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "detailMessage"    # Z

    #@0
    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7
    .line 67
    return-void
.end method

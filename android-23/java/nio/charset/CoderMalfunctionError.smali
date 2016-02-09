.class public Ljava/nio/charset/CoderMalfunctionError;
.super Ljava/lang/Error;
.source "CoderMalfunctionError.java"


# static fields
.field private static final serialVersionUID:J = -0xffaa36e1bfbb6fdL


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 38
    return-void
.end method

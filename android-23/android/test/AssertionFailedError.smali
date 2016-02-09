.class public Landroid/test/AssertionFailedError;
.super Ljava/lang/Error;
.source "AssertionFailedError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 32
    return-void
.end method

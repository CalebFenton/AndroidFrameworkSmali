.class public Lsun/misc/ServiceConfigurationError;
.super Ljava/lang/Error;
.source "ServiceConfigurationError.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 56
    return-void
.end method

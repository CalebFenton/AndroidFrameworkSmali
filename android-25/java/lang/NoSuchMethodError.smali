.class public Ljava/lang/NoSuchMethodError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "NoSuchMethodError.java"


# static fields
.field private static final serialVersionUID:J = -0x3441d1cd1ebfc867L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
    return-void
.end method

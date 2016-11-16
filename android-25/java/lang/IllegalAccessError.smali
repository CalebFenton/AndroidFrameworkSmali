.class public Ljava/lang/IllegalAccessError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "IllegalAccessError.java"


# static fields
.field private static final serialVersionUID:J = -0x7cbf00a185fbfc63L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@3
    .line 55
    return-void
.end method

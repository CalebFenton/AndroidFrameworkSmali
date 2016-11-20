.class public Ljava/lang/InstantiationError;
.super Ljava/lang/IncompatibleClassChangeError;
.source "InstantiationError.java"


# static fields
.field private static final serialVersionUID:J = -0x43cde2e81f214894L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IncompatibleClassChangeError;-><init>(Ljava/lang/String;)V

    #@3
    .line 58
    return-void
.end method

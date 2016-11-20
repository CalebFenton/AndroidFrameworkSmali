.class public Ljava/lang/InstantiationException;
.super Ljava/lang/ReflectiveOperationException;
.source "InstantiationException.java"


# static fields
.field private static final serialVersionUID:J = -0x7527c1d8b22a7a76L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    #@3
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    #@3
    .line 62
    return-void
.end method

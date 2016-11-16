.class public Ljava/lang/IllegalAccessException;
.super Ljava/lang/ReflectiveOperationException;
.source "IllegalAccessException.java"


# static fields
.field private static final serialVersionUID:J = 0x5bd42871f9297b32L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/ReflectiveOperationException;-><init>()V

    #@3
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;)V

    #@3
    .line 75
    return-void
.end method

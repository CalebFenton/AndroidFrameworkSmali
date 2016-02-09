.class public Ljava/lang/Error;
.super Ljava/lang/Throwable;
.source "Error.java"


# static fields
.field private static final serialVersionUID:J = 0x451d36568b820e56L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 71
    return-void
.end method

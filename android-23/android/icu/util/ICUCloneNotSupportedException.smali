.class public Landroid/icu/util/ICUCloneNotSupportedException;
.super Landroid/icu/util/ICUException;
.source "ICUCloneNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = -0x42f3e07e34148794L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/icu/util/ICUException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    #@3
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 43
    return-void
.end method

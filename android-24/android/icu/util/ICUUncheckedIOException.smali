.class public Landroid/icu/util/ICUUncheckedIOException;
.super Ljava/lang/RuntimeException;
.source "ICUUncheckedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x10cbb83d59830401L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 42
    return-void
.end method

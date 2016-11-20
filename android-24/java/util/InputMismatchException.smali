.class public Ljava/util/InputMismatchException;
.super Ljava/util/NoSuchElementException;
.source "InputMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x7a47c7b1773996bcL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    return-void
.end method

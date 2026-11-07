.class public Ljava/util/InputMismatchException;
.super Ljava/util/NoSuchElementException;
.source "InputMismatchException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x7a47c7b1773996bcL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

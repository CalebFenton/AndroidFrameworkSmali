.class public Ljava/lang/reflect/UndeclaredThrowableException;
.super Ljava/lang/RuntimeException;
.source "UndeclaredThrowableException.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x494d8dc73f9fcffL


# instance fields
.field private greylist-max-o undeclaredThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "undeclaredThrowable"    # Ljava/lang/Throwable;

    .line 75
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    .line 77
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "undeclaredThrowable"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 117
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api getUndeclaredThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 105
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

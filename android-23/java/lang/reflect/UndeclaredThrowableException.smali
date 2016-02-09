.class public Ljava/lang/reflect/UndeclaredThrowableException;
.super Ljava/lang/RuntimeException;
.source "UndeclaredThrowableException.java"


# static fields
.field private static final serialVersionUID:J = 0x494d8dc73f9fcffL


# instance fields
.field private undeclaredThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@5
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@5
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 54
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getUndeclaredThrowable()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.class public Ljava/lang/reflect/UndeclaredThrowableException;
.super Ljava/lang/RuntimeException;
.source "UndeclaredThrowableException.java"


# static fields
.field static final serialVersionUID:J = 0x494d8dc73f9fcffL


# instance fields
.field private undeclaredThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "undeclaredThrowable"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/Throwable;

    #@3
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@6
    .line 76
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@8
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "undeclaredThrowable"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 91
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@6
    .line 88
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getUndeclaredThrowable()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

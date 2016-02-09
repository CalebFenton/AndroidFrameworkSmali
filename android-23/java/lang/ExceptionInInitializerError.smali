.class public Ljava/lang/ExceptionInInitializerError;
.super Ljava/lang/LinkageError;
.source "ExceptionInInitializerError.java"


# static fields
.field private static final serialVersionUID:J = 0x151e34d009a19380L


# instance fields
.field private exception:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    #@3
    .line 34
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    #@3
    .line 46
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    #@5
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/ExceptionInInitializerError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8
    .line 57
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Ljava/lang/ExceptionInInitializerError;->exception:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

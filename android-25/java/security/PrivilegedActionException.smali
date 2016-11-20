.class public Ljava/security/PrivilegedActionException;
.super Ljava/lang/Exception;
.source "PrivilegedActionException.java"


# static fields
.field private static final serialVersionUID:J = 0x418f53f65211f5baL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/Throwable;

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@6
    .line 69
    iput-object p1, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    #@8
    .line 67
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 105
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    #@a
    if-eqz v1, :cond_0

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, ": "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    #@1e
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

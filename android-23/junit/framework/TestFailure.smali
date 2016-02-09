.class public Ljunit/framework/TestFailure;
.super Ljava/lang/Object;
.source "TestFailure.java"


# instance fields
.field protected fFailedTest:Ljunit/framework/Test;

.field protected fThrownException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failedTest"    # Ljunit/framework/Test;
    .param p2, "thrownException"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    iput-object p1, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    #@5
    .line 22
    iput-object p2, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    #@7
    .line 20
    return-void
.end method


# virtual methods
.method public exceptionMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public failedTest()Ljunit/framework/Test;
    .locals 1

    #@0
    .prologue
    .line 28
    iget-object v0, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    #@2
    return-object v0
.end method

.method public isFailure()Z
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Ljunit/framework/AssertionFailedError;

    #@6
    return v0
.end method

.method public thrownException()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 42
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    iget-object v2, p0, Ljunit/framework/TestFailure;->fFailedTest:Ljunit/framework/Test;

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ": "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Ljunit/framework/TestFailure;->fThrownException:Ljava/lang/Throwable;

    #@19
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public trace()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 46
    new-instance v1, Ljava/io/StringWriter;

    #@2
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 47
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    #@7
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@a
    .line 48
    .local v2, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Ljunit/framework/TestFailure;->thrownException()Ljava/lang/Throwable;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@11
    .line 49
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    #@14
    move-result-object v0

    #@15
    .line 50
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    return-object v3
.end method

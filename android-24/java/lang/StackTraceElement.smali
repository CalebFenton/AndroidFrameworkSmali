.class public final Ljava/lang/StackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6109c59a2636dd85L


# instance fields
.field private declaringClass:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private lineNumber:I

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const-string/jumbo v0, "Declaring class is null"

    #@6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    iput-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@e
    .line 72
    const-string/jumbo v0, "Method name is null"

    #@11
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    iput-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@19
    .line 73
    iput-object p3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@1b
    .line 74
    iput p4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@1d
    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 199
    if-ne p1, p0, :cond_0

    #@3
    .line 200
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 201
    :cond_0
    instance-of v2, p1, Ljava/lang/StackTraceElement;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 202
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 203
    check-cast v0, Ljava/lang/StackTraceElement;

    #@d
    .line 204
    .local v0, "e":Ljava/lang/StackTraceElement;
    iget-object v2, v0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@f
    iget-object v3, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    .line 205
    iget v2, v0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@19
    iget v3, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@1b
    if-ne v2, v3, :cond_2

    #@1d
    .line 206
    iget-object v2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@1f
    iget-object v3, v0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@21
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    .line 204
    if-eqz v2, :cond_2

    #@27
    .line 207
    iget-object v1, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@29
    iget-object v2, v0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@2b
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    .line 204
    :cond_2
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@2
    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 214
    iget-object v1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v1, v1, 0x1f

    #@8
    iget-object v2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v2

    #@e
    add-int v0, v1, v2

    #@10
    .line 215
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@12
    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@14
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@17
    move-result v2

    #@18
    add-int v0, v1, v2

    #@1a
    .line 216
    mul-int/lit8 v1, v0, 0x1f

    #@1c
    iget v2, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@1e
    add-int v0, v1, v2

    #@20
    .line 217
    return v0
.end method

.method public isNativeMethod()Z
    .locals 2

    #@0
    .prologue
    .line 142
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "."

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 173
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    const-string/jumbo v0, "(Native Method)"

    #@23
    .line 172
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 174
    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@2e
    if-eqz v0, :cond_1

    #@30
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@32
    if-ltz v0, :cond_1

    #@34
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v2, "("

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    const-string/jumbo v2, ":"

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    iget v2, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    const-string/jumbo v2, ")"

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    goto :goto_0

    #@5f
    .line 176
    :cond_1
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@61
    if-eqz v0, :cond_2

    #@63
    new-instance v0, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v2, "("

    #@6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    const-string/jumbo v2, ")"

    #@78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v0

    #@7c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    goto :goto_0

    #@81
    :cond_2
    const-string/jumbo v0, "(Unknown Source)"

    #@84
    goto :goto_0
.end method

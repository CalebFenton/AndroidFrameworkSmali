.class public final Ljava/lang/StackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NATIVE_LINE_NUMBER:I = -0x2

.field private static final serialVersionUID:J = 0x6109c59a2636dd85L


# instance fields
.field declaringClass:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field lineNumber:I

.field methodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "line"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    if-nez p1, :cond_0

    #@5
    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "cls == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 63
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "method == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 66
    :cond_1
    iput-object p1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@1b
    .line 67
    iput-object p2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@1d
    .line 68
    iput-object p3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@1f
    .line 69
    iput p4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@21
    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 100
    instance-of v2, p1, Ljava/lang/StackTraceElement;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 101
    return v4

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 103
    check-cast v0, Ljava/lang/StackTraceElement;

    #@9
    .line 109
    .local v0, "castObj":Ljava/lang/StackTraceElement;
    iget-object v2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@b
    if-eqz v2, :cond_1

    #@d
    iget-object v2, v0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@f
    if-nez v2, :cond_2

    #@11
    .line 110
    :cond_1
    return v4

    #@12
    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_3

    #@20
    .line 114
    return v4

    #@21
    .line 116
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_4

    #@2f
    .line 117
    return v4

    #@30
    .line 119
    :cond_4
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 120
    .local v1, "localFileName":Ljava/lang/String;
    if-nez v1, :cond_5

    #@36
    .line 121
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    if-eqz v2, :cond_6

    #@3c
    .line 122
    return v4

    #@3d
    .line 125
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_6

    #@47
    .line 126
    return v4

    #@48
    .line 129
    :cond_6
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@4b
    move-result v2

    #@4c
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@4f
    move-result v3

    #@50
    if-eq v2, v3, :cond_7

    #@52
    .line 130
    return v4

    #@53
    .line 133
    :cond_7
    const/4 v2, 0x1

    #@54
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "<unknown class>"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    #@2
    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, "<unknown method>"

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 187
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 190
    :cond_0
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    iget-object v1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    #@e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@11
    move-result v1

    #@12
    xor-int/2addr v0, v1

    #@13
    return v0
.end method

.method public isNativeMethod()Z
    .locals 2

    #@0
    .prologue
    .line 201
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
    .locals 4

    #@0
    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x50

    #@4
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 208
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 209
    const/16 v3, 0x2e

    #@10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 210
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 212
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 213
    const-string/jumbo v3, "(Native Method)"

    #@23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 231
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 217
    .local v1, "fName":Ljava/lang/String;
    if-nez v1, :cond_1

    #@31
    .line 218
    const-string/jumbo v3, "(Unknown Source)"

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_0

    #@38
    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@3b
    move-result v2

    #@3c
    .line 222
    .local v2, "lineNum":I
    const/16 v3, 0x28

    #@3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    .line 224
    if-ltz v2, :cond_2

    #@46
    .line 225
    const/16 v3, 0x3a

    #@48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    .line 228
    :cond_2
    const/16 v3, 0x29

    #@50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0
.end method

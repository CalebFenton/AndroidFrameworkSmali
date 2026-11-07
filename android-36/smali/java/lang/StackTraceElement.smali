.class public final Ljava/lang/StackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x6109c59a2636dd85L


# instance fields
.field private greylist declaringClass:Ljava/lang/String;

.field private greylist fileName:Ljava/lang/String;

.field private greylist lineNumber:I

.field private greylist methodName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "Declaring class is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    .line 93
    const-string v0, "Method name is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    .line 95
    iput p4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    .line 96
    return-void
.end method

.method static blacklist of(Ljava/lang/StackFrameInfo;)Ljava/lang/StackTraceElement;
    .registers 6
    .param p0, "sfi"    # Ljava/lang/StackFrameInfo;

    .line 548
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackFrameInfo;->getLineNumber()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    .local v0, "ste":Ljava/lang/StackTraceElement;
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 387
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 388
    return v0

    .line 389
    :cond_4
    instance-of v1, p1, Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 390
    return v2

    .line 391
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/lang/StackTraceElement;

    .line 396
    .local v1, "e":Ljava/lang/StackTraceElement;
    iget-object v3, v1, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    iget-object v4, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, v1, Ljava/lang/StackTraceElement;->lineNumber:I

    iget v4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    iget-object v4, v1, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    .line 399
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    iget-object v4, v1, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    .line 400
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 396
    :goto_33
    return v0
.end method

.method public whitelist test-api getClassName()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getFileName()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 181
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    return v0
.end method

.method public whitelist test-api getMethodName()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 407
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 413
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    add-int/2addr v0, v2

    .line 414
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api isNativeMethod()Z
    .registers 3

    .line 268
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 344
    const-string v1, "(Native Method)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 345
    :cond_24
    iget-object v1, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    const-string v2, ")"

    if-eqz v1, :cond_58

    .line 346
    iget v1, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    const-string v3, "("

    if-ltz v1, :cond_4a

    .line 347
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 349
    :cond_4a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 352
    :cond_58
    iget v1, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    if-ltz v1, :cond_6c

    .line 354
    const-string v1, "(Unknown Source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 356
    :cond_6c
    const-string v1, "(Unknown Source)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public final Ljava/lang/invoke/SerializedLambda;
.super Ljava/lang/Object;
.source "SerializedLambda.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor greylist-max-r <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .param p2, "functionalInterfaceClass"    # Ljava/lang/String;
    .param p3, "functionalInterfaceMethodName"    # Ljava/lang/String;
    .param p4, "functionalInterfaceMethodSignature"    # Ljava/lang/String;
    .param p5, "implMethodKind"    # I
    .param p6, "implClass"    # Ljava/lang/String;
    .param p7, "implMethodName"    # Ljava/lang/String;
    .param p8, "implMethodSignature"    # Ljava/lang/String;
    .param p9, "instantiatedMethodType"    # Ljava/lang/String;
    .param p10, "capturedArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "capturingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getCapturedArg(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-r getCapturedArgCount()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getCapturingClass()Ljava/lang/String;
    .registers 2

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getFunctionalInterfaceClass()Ljava/lang/String;
    .registers 2

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getFunctionalInterfaceMethodName()Ljava/lang/String;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getFunctionalInterfaceMethodSignature()Ljava/lang/String;
    .registers 2

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getImplClass()Ljava/lang/String;
    .registers 2

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getImplMethodKind()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getImplMethodName()Ljava/lang/String;
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getImplMethodSignature()Ljava/lang/String;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public final greylist-max-r getInstantiatedMethodType()Ljava/lang/String;
    .registers 2

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

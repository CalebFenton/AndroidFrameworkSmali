.class final Ljava/lang/constant/PrimitiveClassDescImpl;
.super Ljava/lang/constant/DynamicConstantDesc;
.source "PrimitiveClassDescImpl.java"

# interfaces
.implements Ljava/lang/constant/ClassDesc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/constant/DynamicConstantDesc<",
        "Ljava/lang/Class<",
        "*>;>;",
        "Ljava/lang/constant/ClassDesc;"
    }
.end annotation


# instance fields
.field private final blacklist descriptor:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 53
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_PRIMITIVE_CLASS:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/constant/ConstantDescs;->CD_Class:Ljava/lang/constant/ClassDesc;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/constant/ConstantDesc;

    invoke-direct {p0, v0, v1, v2, v4}, Ljava/lang/constant/DynamicConstantDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "VIJCSBFDZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_26

    .line 57
    iput-object p1, p0, Ljava/lang/constant/PrimitiveClassDescImpl;->descriptor:Ljava/lang/String;

    .line 58
    return-void

    .line 56
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a valid primitive type descriptor: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api descriptorString()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Ljava/lang/constant/PrimitiveClassDescImpl;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .registers 4
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/lang/constant/PrimitiveClassDescImpl;->descriptorString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lsun/invoke/util/Wrapper;->forBasicType(C)Lsun/invoke/util/Wrapper;

    move-result-object v0

    invoke-virtual {v0}, Lsun/invoke/util/Wrapper;->primitiveType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/constant/PrimitiveClassDescImpl;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 72
    invoke-virtual {p0}, Ljava/lang/constant/PrimitiveClassDescImpl;->displayName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PrimitiveClassDesc[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

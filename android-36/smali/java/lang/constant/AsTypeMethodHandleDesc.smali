.class final Ljava/lang/constant/AsTypeMethodHandleDesc;
.super Ljava/lang/constant/DynamicConstantDesc;
.source "AsTypeMethodHandleDesc.java"

# interfaces
.implements Ljava/lang/constant/MethodHandleDesc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/constant/DynamicConstantDesc<",
        "Ljava/lang/invoke/MethodHandle;",
        ">;",
        "Ljava/lang/constant/MethodHandleDesc;"
    }
.end annotation


# instance fields
.field private final blacklist type:Ljava/lang/constant/MethodTypeDesc;

.field private final blacklist underlying:Ljava/lang/constant/MethodHandleDesc;


# direct methods
.method constructor blacklist <init>(Ljava/lang/constant/MethodHandleDesc;Ljava/lang/constant/MethodTypeDesc;)V
    .registers 8
    .param p1, "underlying"    # Ljava/lang/constant/MethodHandleDesc;
    .param p2, "type"    # Ljava/lang/constant/MethodTypeDesc;

    .line 47
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_INVOKE:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_MethodHandle:Ljava/lang/constant/ClassDesc;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/constant/ConstantDesc;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/constant/ConstantDescs;->MHD_METHODHANDLE_ASTYPE:Ljava/lang/constant/DirectMethodHandleDesc;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string v3, "_"

    invoke-direct {p0, v0, v3, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/MethodHandleDesc;

    iput-object v0, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->underlying:Ljava/lang/constant/MethodHandleDesc;

    .line 50
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/constant/MethodTypeDesc;

    iput-object v0, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->type:Ljava/lang/constant/MethodTypeDesc;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist invocationType()Ljava/lang/constant/MethodTypeDesc;
    .registers 2

    .line 55
    iget-object v0, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->type:Ljava/lang/constant/MethodTypeDesc;

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

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/constant/AsTypeMethodHandleDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->underlying:Ljava/lang/constant/MethodHandleDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/MethodHandleDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    .line 62
    .local v0, "handle":Ljava/lang/invoke/MethodHandle;
    iget-object v1, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->type:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v1, p1}, Ljava/lang/constant/MethodTypeDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType;

    .line 63
    .local v1, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    iget-object v0, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->underlying:Ljava/lang/constant/MethodHandleDesc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/constant/AsTypeMethodHandleDesc;->type:Ljava/lang/constant/MethodTypeDesc;

    invoke-interface {v1}, Ljava/lang/constant/MethodTypeDesc;->displayDescriptor()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.asType%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

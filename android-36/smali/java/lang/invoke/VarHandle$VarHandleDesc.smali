.class public final Ljava/lang/invoke/VarHandle$VarHandleDesc;
.super Ljava/lang/constant/DynamicConstantDesc;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/VarHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VarHandleDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/constant/DynamicConstantDesc<",
        "Ljava/lang/invoke/VarHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist declaringClass:Ljava/lang/constant/ClassDesc;

.field private final blacklist kind:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

.field private final blacklist varType:Ljava/lang/constant/ClassDesc;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;Ljava/lang/String;Ljava/lang/constant/ClassDesc;Ljava/lang/constant/ClassDesc;)V
    .registers 8
    .param p1, "kind"    # Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "declaringClass"    # Ljava/lang/constant/ClassDesc;
    .param p4, "varType"    # Ljava/lang/constant/ClassDesc;

    .line 2415
    iget-object v0, p1, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_VarHandle:Ljava/lang/constant/ClassDesc;

    .line 2417
    invoke-virtual {p1, p3, p4}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->toBSMArgs(Ljava/lang/constant/ClassDesc;Ljava/lang/constant/ClassDesc;)[Ljava/lang/constant/ConstantDesc;

    move-result-object v2

    .line 2415
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/lang/constant/DynamicConstantDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V

    .line 2418
    iput-object p1, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->kind:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    .line 2419
    iput-object p3, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->declaringClass:Ljava/lang/constant/ClassDesc;

    .line 2420
    iput-object p4, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->varType:Ljava/lang/constant/ClassDesc;

    .line 2421
    return-void
.end method

.method public static blacklist ofArray(Ljava/lang/constant/ClassDesc;)Ljava/lang/invoke/VarHandle$VarHandleDesc;
    .registers 5
    .param p0, "arrayClass"    # Ljava/lang/constant/ClassDesc;

    .line 2470
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2473
    new-instance v0, Ljava/lang/invoke/VarHandle$VarHandleDesc;

    sget-object v1, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->ARRAY:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    const-string v2, "_"

    invoke-interface {p0}, Ljava/lang/constant/ClassDesc;->componentType()Ljava/lang/constant/ClassDesc;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Ljava/lang/invoke/VarHandle$VarHandleDesc;-><init>(Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;Ljava/lang/String;Ljava/lang/constant/ClassDesc;Ljava/lang/constant/ClassDesc;)V

    return-object v0

    .line 2472
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array class argument not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist ofField(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;)Ljava/lang/invoke/VarHandle$VarHandleDesc;
    .registers 5
    .param p0, "declaringClass"    # Ljava/lang/constant/ClassDesc;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/constant/ClassDesc;

    .line 2436
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    new-instance v0, Ljava/lang/invoke/VarHandle$VarHandleDesc;

    sget-object v1, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    invoke-direct {v0, v1, p1, p0, p2}, Ljava/lang/invoke/VarHandle$VarHandleDesc;-><init>(Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;Ljava/lang/String;Ljava/lang/constant/ClassDesc;Ljava/lang/constant/ClassDesc;)V

    return-object v0
.end method

.method public static blacklist ofStaticField(Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;)Ljava/lang/invoke/VarHandle$VarHandleDesc;
    .registers 5
    .param p0, "declaringClass"    # Ljava/lang/constant/ClassDesc;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/constant/ClassDesc;

    .line 2455
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    new-instance v0, Ljava/lang/invoke/VarHandle$VarHandleDesc;

    sget-object v1, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->STATIC_FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    invoke-direct {v0, v1, p1, p0, p2}, Ljava/lang/invoke/VarHandle$VarHandleDesc;-><init>(Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;Ljava/lang/String;Ljava/lang/constant/ClassDesc;Ljava/lang/constant/ClassDesc;)V

    return-object v0
.end method


# virtual methods
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

    .line 2373
    invoke-virtual {p0, p1}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/VarHandle;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/VarHandle;
    .registers 5
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2489
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->kind:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    invoke-virtual {v0}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 2497
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Cannot reach here"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2496
    :pswitch_11
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->declaringClass:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    goto :goto_45

    .line 2493
    :pswitch_1c
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->declaringClass:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    .line 2494
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->constantName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->varType:Ljava/lang/constant/ClassDesc;

    .line 2495
    invoke-interface {v2, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v2

    .line 2493
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStaticVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    goto :goto_45

    .line 2490
    :pswitch_31
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->declaringClass:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    .line 2491
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->constantName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->varType:Ljava/lang/constant/ClassDesc;

    .line 2492
    invoke-interface {v2, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v2

    .line 2490
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    .line 2489
    :goto_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_31
        :pswitch_1c
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2511
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->kind:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    invoke-virtual {v0}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 2516
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Cannot reach here"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2515
    :pswitch_11
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->declaringClass:Ljava/lang/constant/ClassDesc;

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VarHandleDesc[%s[]]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 2512
    :pswitch_22
    nop

    .line 2513
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->kind:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    sget-object v1, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->STATIC_FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    if-ne v0, v1, :cond_2c

    const-string v0, "static "

    goto :goto_2e

    :cond_2c
    const-string v0, ""

    :goto_2e
    iget-object v1, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->declaringClass:Ljava/lang/constant/ClassDesc;

    .line 2514
    invoke-interface {v1}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$VarHandleDesc;->constantName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->varType:Ljava/lang/constant/ClassDesc;

    invoke-interface {v3}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 2512
    const-string v1, "VarHandleDesc[%s%s.%s:%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2511
    :goto_48
    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_11
    .end packed-switch
.end method

.method public blacklist varType()Ljava/lang/constant/ClassDesc;
    .registers 2

    .line 2483
    iget-object v0, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc;->varType:Ljava/lang/constant/ClassDesc;

    return-object v0
.end method

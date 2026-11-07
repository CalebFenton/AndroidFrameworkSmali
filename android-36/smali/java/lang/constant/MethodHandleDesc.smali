.class public interface abstract Ljava/lang/constant/MethodHandleDesc;
.super Ljava/lang/Object;
.source "MethodHandleDesc.java"

# interfaces
.implements Ljava/lang/constant/ConstantDesc;


# annotations
.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljava/lang/constant/AsTypeMethodHandleDesc;,
        Ljava/lang/constant/DirectMethodHandleDesc;
    }
.end annotation


# direct methods
.method public static blacklist of(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 6
    .param p0, "kind"    # Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .param p1, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lookupDescriptor"    # Ljava/lang/String;

    .line 81
    sget-object v0, Ljava/lang/constant/MethodHandleDesc$1;->$SwitchMap$java$lang$constant$DirectMethodHandleDesc$Kind:[I

    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 88
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDescImpl;

    invoke-static {p3}, Ljava/lang/constant/MethodTypeDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/constant/DirectMethodHandleDescImpl;-><init>(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)V

    return-object v0

    .line 86
    :pswitch_15
    invoke-static {p3}, Ljava/lang/constant/ClassDesc;->ofDescriptor(Ljava/lang/String;)Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/constant/MethodHandleDesc;->ofField(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static varargs blacklist ofConstructor(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 5
    .param p0, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p1, "paramTypes"    # [Ljava/lang/constant/ClassDesc;

    .line 181
    sget-object v0, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->CONSTRUCTOR:Ljava/lang/constant/DirectMethodHandleDesc$Kind;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->CD_void:Ljava/lang/constant/ClassDesc;

    .line 182
    invoke-static {v1, p1}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v1

    .line 181
    const-string v2, "_"

    invoke-static {v0, p0, v2, v1}, Ljava/lang/constant/MethodHandleDesc;->ofMethod(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DirectMethodHandleDesc;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofField(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 8
    .param p0, "kind"    # Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .param p1, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldType"    # Ljava/lang/constant/ClassDesc;

    .line 159
    sget-object v0, Ljava/lang/constant/MethodHandleDesc$1;->$SwitchMap$java$lang$constant$DirectMethodHandleDesc$Kind:[I

    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_46

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_17
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_void:Ljava/lang/constant/ClassDesc;

    new-array v1, v1, [Ljava/lang/constant/ClassDesc;

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    goto :goto_3f

    .line 162
    :pswitch_22
    new-array v0, v2, [Ljava/lang/constant/ClassDesc;

    invoke-static {p3, v0}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    goto :goto_3f

    .line 161
    :pswitch_29
    sget-object v0, Ljava/lang/constant/ConstantDescs;->CD_void:Ljava/lang/constant/ClassDesc;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/constant/ClassDesc;

    aput-object p1, v3, v2

    aput-object p3, v3, v1

    invoke-static {v0, v3}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    goto :goto_3f

    .line 160
    :pswitch_37
    new-array v0, v1, [Ljava/lang/constant/ClassDesc;

    aput-object p1, v0, v2

    invoke-static {p3, v0}, Ljava/lang/constant/MethodTypeDesc;->of(Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ClassDesc;)Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    .line 164
    :goto_3f
    nop

    .line 166
    .local v0, "mtr":Ljava/lang/constant/MethodTypeDesc;
    new-instance v1, Ljava/lang/constant/DirectMethodHandleDescImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Ljava/lang/constant/DirectMethodHandleDescImpl;-><init>(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)V

    return-object v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_37
        :pswitch_29
        :pswitch_22
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist ofMethod(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/DirectMethodHandleDesc;
    .registers 6
    .param p0, "kind"    # Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    .param p1, "owner"    # Ljava/lang/constant/ClassDesc;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lookupMethodType"    # Ljava/lang/constant/MethodTypeDesc;

    .line 121
    sget-object v0, Ljava/lang/constant/MethodHandleDesc$1;->$SwitchMap$java$lang$constant$DirectMethodHandleDesc$Kind:[I

    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_15
    new-instance v0, Ljava/lang/constant/DirectMethodHandleDescImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/constant/DirectMethodHandleDescImpl;-><init>(Ljava/lang/constant/DirectMethodHandleDesc$Kind;Ljava/lang/constant/ClassDesc;Ljava/lang/String;Ljava/lang/constant/MethodTypeDesc;)V

    return-object v0

    .line 126
    :pswitch_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/constant/DirectMethodHandleDesc$Kind;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public blacklist asType(Ljava/lang/constant/MethodTypeDesc;)Ljava/lang/constant/MethodHandleDesc;
    .registers 3
    .param p1, "type"    # Ljava/lang/constant/MethodTypeDesc;

    .line 194
    invoke-interface {p0}, Ljava/lang/constant/MethodHandleDesc;->invocationType()Ljava/lang/constant/MethodTypeDesc;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/constant/MethodTypeDesc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p0

    goto :goto_11

    :cond_c
    new-instance v0, Ljava/lang/constant/AsTypeMethodHandleDesc;

    invoke-direct {v0, p0, p1}, Ljava/lang/constant/AsTypeMethodHandleDesc;-><init>(Ljava/lang/constant/MethodHandleDesc;Ljava/lang/constant/MethodTypeDesc;)V

    :goto_11
    return-object v0
.end method

.method public abstract whitelist test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract blacklist invocationType()Ljava/lang/constant/MethodTypeDesc;
.end method

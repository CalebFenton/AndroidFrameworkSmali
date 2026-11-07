.class Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
.super Ljava/lang/Object;
.source "MethodHandleImpl.java"

# interfaces
.implements Ljava/lang/invoke/MethodHandleInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodHandleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandleInfo"
.end annotation


# instance fields
.field private final greylist-max-o handle:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o member:Ljava/lang/reflect/Member;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "handle"    # Ljava/lang/invoke/MethodHandle;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    .line 140
    iput-object p2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    .line 141
    return-void
.end method


# virtual methods
.method public whitelist test-api getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMethodType()Ljava/lang/invoke/MethodType;
    .registers 5

    .line 197
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 199
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x0

    .line 204
    .local v1, "omitLeadingParam":Z
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v2, v2, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_14

    .line 205
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 206
    const/4 v1, 0x1

    .line 211
    :cond_14
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    :pswitch_1d
    goto :goto_1f

    .line 218
    :pswitch_1e
    const/4 v1, 0x1

    .line 221
    :goto_1f
    if-eqz v1, :cond_28

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v0

    :goto_29
    return-object v2

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist test-api getModifiers()I
    .registers 2

    .line 255
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    .line 187
    const-string v0, "<init>"

    return-object v0

    .line 190
    :cond_9
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getReferenceKind()I
    .registers 4

    .line 145
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v0

    const/4 v1, 0x7

    packed-switch v0, :pswitch_data_50

    .line 175
    :pswitch_a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected handle kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 173
    :pswitch_29
    const/4 v0, 0x4

    return v0

    .line 171
    :pswitch_2b
    const/4 v0, 0x2

    return v0

    .line 169
    :pswitch_2d
    const/4 v0, 0x3

    return v0

    .line 167
    :pswitch_2f
    const/4 v0, 0x1

    return v0

    .line 165
    :pswitch_31
    const/4 v0, 0x6

    return v0

    .line 155
    :pswitch_33
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3c

    .line 156
    const/16 v0, 0x8

    return v0

    .line 158
    :cond_3c
    return v1

    .line 163
    :pswitch_3d
    return v1

    .line 147
    :pswitch_3e
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 148
    const/16 v0, 0x9

    return v0

    .line 150
    :cond_4d
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_33
        :pswitch_31
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
    .end packed-switch
.end method

.method public whitelist test-api reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/reflect/Member;
    .registers 7
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation

    .line 227
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 228
    .local v0, "declaringClass":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isNative(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const-class v1, Ljava/lang/invoke/MethodHandle;

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_20

    const-class v1, Ljava/lang/invoke/VarHandle;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 231
    :cond_20
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v1, v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_39

    .line 232
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    check-cast v1, Ljava/lang/reflect/Method;

    .line 233
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_39

    .line 239
    :cond_31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Reflecting signature polymorphic method"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    .end local p1    # "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    throw v2

    .line 244
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .restart local p0    # "this":Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    .restart local p1    # "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "lookup":Ljava/lang/invoke/MethodHandles$Lookup;
    :cond_39
    :goto_39
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    .line 245
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v2}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p2, v0, v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_48} :catch_4c

    .line 248
    .end local v0    # "declaringClass":Ljava/lang/Class;
    nop

    .line 250
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    return-object v0

    .line 246
    :catch_4c
    move-exception v0

    .line 247
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to access member."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 260
    nop

    .line 261
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->getReferenceKind()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 260
    invoke-static {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandleInfo;->toString(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

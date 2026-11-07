.class Ljava/lang/invoke/Transformers$Invoker;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Invoker"
.end annotation


# instance fields
.field private final greylist-max-o copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o isExactInvoker:Z

.field private final greylist-max-o targetType:Ljava/lang/invoke/MethodType;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Z)V
    .registers 7
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "isExactInvoker"    # Z

    .line 1069
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/invoke/MethodHandle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1070
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    .line 1071
    iput-boolean p2, p0, Ljava/lang/invoke/Transformers$Invoker;->isExactInvoker:Z

    .line 1072
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Invoker;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1, v0}, Ldalvik/system/EmulatedStackFrame$Range;->from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Invoker;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1073
    return-void
.end method

.method private static blacklist exactMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .param p0, "lhs"    # Ljava/lang/Class;
    .param p1, "rhs"    # Ljava/lang/Class;

    .line 1128
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    .line 1131
    :cond_e
    return v1

    .line 1129
    :cond_f
    :goto_f
    if-ne p0, p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private static blacklist exactMatch(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Z
    .registers 8
    .param p0, "callsiteType"    # Ljava/lang/invoke/MethodType;
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;

    .line 1102
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1103
    .local v0, "parameterCount":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 1104
    return v3

    .line 1107
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_25

    .line 1108
    invoke-virtual {p0, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    .line 1109
    .local v2, "argumentType":Ljava/lang/Class;
    invoke-virtual {p1, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v4

    .line 1110
    .local v4, "parameterType":Ljava/lang/Class;
    invoke-static {v2, v4}, Ljava/lang/invoke/Transformers$Invoker;->exactMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 1111
    return v3

    .line 1107
    .end local v2    # "argumentType":Ljava/lang/Class;
    .end local v4    # "parameterType":Ljava/lang/Class;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1115
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3b

    .line 1116
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/Transformers$Invoker;->exactMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3c

    :cond_3b
    const/4 v3, 0x1

    .line 1115
    :cond_3c
    return v3
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1078
    const-class v0, Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    .line 1081
    .local v0, "target":Ljava/lang/invoke/MethodHandle;
    iget-object v2, p0, Ljava/lang/invoke/Transformers$Invoker;->targetType:Ljava/lang/invoke/MethodType;

    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 1082
    .local v2, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Invoker;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v3, v1, v1}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1085
    iget-boolean v1, p0, Ljava/lang/invoke/Transformers$Invoker;->isExactInvoker:Z

    if-eqz v1, :cond_1c

    .line 1086
    invoke-virtual {p0, v0, v2}, Ljava/lang/invoke/Transformers$Invoker;->invokeExactFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    goto :goto_1f

    .line 1088
    :cond_1c
    invoke-static {v0, v2}, Ljava/lang/invoke/Transformers$Invoker;->invokeFromTransform(Ljava/lang/invoke/MethodHandle;Ldalvik/system/EmulatedStackFrame;)V

    .line 1090
    :goto_1f
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1091
    return-void
.end method

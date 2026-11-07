.class public abstract Ljava/lang/invoke/MethodHandle;
.super Ljava/lang/Object;
.source "MethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final greylist-max-o IGET:I = 0x8

.field public static final greylist-max-o INVOKE_DIRECT:I = 0x2

.field public static final greylist-max-o INVOKE_INTERFACE:I = 0x4

.field public static final greylist-max-o INVOKE_STATIC:I = 0x3

.field public static final greylist-max-o INVOKE_SUPER:I = 0x1

.field public static final greylist-max-o INVOKE_TRANSFORM:I = 0x5

.field public static final greylist-max-o INVOKE_VAR_HANDLE:I = 0x6

.field public static final greylist-max-o INVOKE_VAR_HANDLE_EXACT:I = 0x7

.field public static final greylist-max-o INVOKE_VIRTUAL:I = 0x0

.field public static final greylist-max-o IPUT:I = 0x9

.field public static final greylist-max-o SGET:I = 0xa

.field public static final greylist-max-o SPUT:I = 0xb


# instance fields
.field protected final greylist-max-o artFieldOrMethod:J

.field blacklist asTypeCache:Ljava/lang/invoke/MethodHandle;

.field private greylist-max-o cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

.field protected final greylist-max-o handleKind:I

.field private final greylist-max-o type:Ljava/lang/invoke/MethodType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 423
    return-void
.end method

.method protected constructor greylist-max-o <init>(JILjava/lang/invoke/MethodType;)V
    .registers 5
    .param p1, "artFieldOrMethod"    # J
    .param p3, "handleKind"    # I
    .param p4, "type"    # Ljava/lang/invoke/MethodType;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-wide p1, p0, Ljava/lang/invoke/MethodHandle;->artFieldOrMethod:J

    .line 499
    iput p3, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    .line 500
    iput-object p4, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    .line 501
    return-void
.end method

.method private blacklist asSpreaderChecks(Ljava/lang/Class;II)Ljava/lang/invoke/MethodType;
    .registers 12
    .param p2, "pos"    # I
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/invoke/MethodType;"
        }
    .end annotation

    .line 1023
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    .line 1024
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1025
    .local v0, "nargs":I
    if-lt v0, p3, :cond_51

    if-ltz p3, :cond_51

    .line 1027
    if-ltz p2, :cond_4a

    add-int v1, p2, p3

    if-gt v1, v0, :cond_4a

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1031
    .local v1, "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1032
    .local v2, "mtype":Ljava/lang/invoke/MethodType;
    const/4 v3, 0x1

    .local v3, "match":Z
    const/4 v4, 0x0

    .line 1033
    .local v4, "fail":Z
    move v5, p2

    .local v5, "i":I
    :goto_20
    add-int v6, p2, p3

    if-ge v5, v6, :cond_36

    .line 1034
    invoke-virtual {v2, v5}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v6

    .line 1035
    .local v6, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v6, v1, :cond_33

    .line 1036
    const/4 v3, 0x0

    .line 1037
    invoke-static {v1, v6}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 1038
    const/4 v4, 0x1

    .line 1039
    goto :goto_36

    .line 1033
    .end local v6    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 1043
    .end local v5    # "i":I
    :cond_36
    :goto_36
    if-eqz v3, :cond_39

    return-object v2

    .line 1044
    :cond_39
    invoke-virtual {v2, p1, p2, p3}, Ljava/lang/invoke/MethodType;->asSpreaderType(Ljava/lang/Class;II)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1045
    .local v5, "needType":Ljava/lang/invoke/MethodType;
    if-nez v4, :cond_40

    return-object v5

    .line 1047
    :cond_40
    invoke-virtual {p0, v5}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    .line 1048
    const-string v6, "should not return"

    invoke-static {v6}, Ljava/lang/invoke/MethodHandleStatics;->newInternalError(Ljava/lang/String;)Ljava/lang/InternalError;

    move-result-object v6

    throw v6

    .line 1028
    .end local v1    # "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mtype":Ljava/lang/invoke/MethodType;
    .end local v3    # "match":Z
    .end local v4    # "fail":Z
    .end local v5    # "needType":Ljava/lang/invoke/MethodType;
    :cond_4a
    const-string v1, "bad spread position"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1026
    :cond_51
    const-string v1, "bad spread array length"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist asTypeCached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 846
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->asTypeCache:Ljava/lang/invoke/MethodHandle;

    .line 848
    .local v0, "atc":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_d

    iget-object v1, v0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {p1, v1}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 849
    return-object v0

    .line 851
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o spreadArrayChecks(Ljava/lang/Class;I)V
    .registers 6
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 1052
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1053
    .local v0, "arrayElement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2f

    .line 1055
    and-int/lit8 v1, p2, 0x7f

    if-eq v1, p2, :cond_2e

    .line 1056
    and-int/lit16 v1, p2, 0xff

    if-ne v1, p2, :cond_23

    .line 1058
    nop

    .line 1059
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_18

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_18

    goto :goto_2e

    .line 1061
    :cond_18
    const-string v1, "array length is not legal for long[] or double[]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1057
    :cond_23
    const-string v1, "array length is not legal"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1063
    :cond_2e
    :goto_2e
    return-void

    .line 1054
    :cond_2f
    const-string v1, "not an array type"

    invoke-static {v1, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o transformInternal(Ldalvik/system/EmulatedStackFrame;)V
    .registers 2
    .param p1, "arguments"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1615
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->transform(Ldalvik/system/EmulatedStackFrame;)V

    .line 1616
    return-void
.end method


# virtual methods
.method public whitelist test-api asCollector(ILjava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "collectArgPos"    # I
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1224
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, p1, p3}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;II)Z

    .line 1237
    new-instance v0, Ljava/lang/invoke/Transformers$Collector;

    invoke-direct {v0, p0, p2, p1, p3}, Ljava/lang/invoke/Transformers$Collector;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;II)V

    return-object v0
.end method

.method public whitelist test-api asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1177
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asCollector(ILjava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method blacklist asCollectorChecks(Ljava/lang/Class;II)Z
    .registers 7
    .param p2, "pos"    # I
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)Z"
        }
    .end annotation

    .line 1246
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/invoke/MethodHandle;->spreadArrayChecks(Ljava/lang/Class;I)V

    .line 1247
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    .line 1248
    .local v0, "nargs":I
    if-ltz p2, :cond_2c

    if-ge p2, v0, :cond_2c

    .line 1251
    if-eqz v0, :cond_25

    .line 1252
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 1253
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_1d

    const/4 v2, 0x1

    return v2

    .line 1254
    :cond_1d
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    return v2

    .line 1256
    .end local v1    # "param":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_25
    const-string v1, "array type not assignable to argument"

    invoke-static {v1, p0, p1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1249
    :cond_2c
    const-string v1, "bad collect position"

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api asFixedArity()Ljava/lang/invoke/MethodHandle;
    .registers 3

    .line 1489
    move-object v0, p0

    .line 1490
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1491
    move-object v1, v0

    check-cast v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-virtual {v1}, Ljava/lang/invoke/Transformers$VarargsCollector;->asFixedArity()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1493
    :cond_e
    nop

    .line 1494
    return-object v0
.end method

.method public whitelist test-api asSpreader(ILjava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p1, "spreadArgPos"    # I
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1001
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p1, p3}, Ljava/lang/invoke/MethodHandle;->asSpreaderChecks(Ljava/lang/Class;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1010
    .local v0, "postSpreadType":Ljava/lang/invoke/MethodType;
    add-int v1, p1, p3

    .line 1011
    .local v1, "spreadEnd":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 1012
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/invoke/MethodType;->replaceParameterTypes(II[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1013
    .local v2, "adapterType":Ljava/lang/invoke/MethodType;
    new-instance v3, Ljava/lang/invoke/Transformers$Spreader;

    .line 1014
    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-direct {v3, v4, v2, p1, p3}, Ljava/lang/invoke/Transformers$Spreader;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;II)V

    .line 1013
    return-object v3
.end method

.method public whitelist test-api asSpreader(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p2, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 958
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0, p1, p2}, Ljava/lang/invoke/MethodHandle;->asSpreader(ILjava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 834
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {p1, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 835
    return-object p0

    .line 838
    :cond_9
    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodHandle;->asTypeCached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 839
    .local v0, "atc":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_10

    .line 840
    return-object v0

    .line 842
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandle;->asTypeUncached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1
.end method

.method blacklist asTypeUncached(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "newType"    # Ljava/lang/invoke/MethodType;

    .line 856
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodType;->isConvertibleTo(Ljava/lang/invoke/MethodType;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 860
    new-instance v0, Ljava/lang/invoke/Transformers$AsTypeAdapter;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$AsTypeAdapter;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    iput-object v0, p0, Ljava/lang/invoke/MethodHandle;->asTypeCache:Ljava/lang/invoke/MethodHandle;

    return-object v0

    .line 857
    :cond_10
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 1413
    .local p1, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/invoke/MethodHandle;->asCollectorChecks(Ljava/lang/Class;II)Z

    move-result v0

    .line 1415
    .local v0, "lastMatch":Z
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 1416
    return-object p0

    .line 1419
    :cond_1b
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, p0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1
.end method

.method public whitelist test-api bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "x"    # Ljava/lang/Object;

    .line 1526
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->leadingReferenceParameter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1529
    new-instance v0, Ljava/lang/invoke/Transformers$BindTo;

    invoke-direct {v0, p0, p1}, Ljava/lang/invoke/Transformers$BindTo;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected greylist-max-o duplicate()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .line 1600
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1601
    :catch_7
    move-exception v0

    .line 1602
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Subclass of Transformer is not cloneable"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public greylist-max-o getHandleKind()I
    .registers 3

    .line 1571
    iget v0, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_e

    iget v0, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    goto :goto_e

    .line 1576
    :cond_b
    iget v0, p0, Ljava/lang/invoke/MethodHandle;->handleKind:I

    return v0

    .line 1574
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public final varargs native whitelist test-api invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method public final varargs native whitelist test-api invokeExact([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/invoke/MethodHandle$PolymorphicSignature;
    .end annotation
.end method

.method native blacklist invokeExactWithFrame(Ldalvik/system/EmulatedStackFrame;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public whitelist test-api invokeWithArguments(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 729
    .local p1, "arguments":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 698
    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    array-length v1, p1

    :goto_6
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 701
    .local v1, "invocationType":Ljava/lang/invoke/MethodType;
    iget-object v2, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    .line 702
    .local v2, "invoker":Ljava/lang/invoke/MethodHandle;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 703
    :cond_18
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->spreadInvoker(Ljava/lang/invoke/MethodType;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 704
    iput-object v2, p0, Ljava/lang/invoke/MethodHandle;->cachedSpreadInvoker:Ljava/lang/invoke/MethodHandle;

    .line 706
    :cond_1e
    invoke-virtual {p0, v1}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v2, v0, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/invoke/MethodHandle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isVarargsCollector()Z
    .registers 2

    .line 1438
    const/4 v0, 0x0

    return v0
.end method

.method blacklist standardString()Ljava/lang/String;
    .registers 3

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1551
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->standardString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "arguments"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1581
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "MethodHandle.transform should never be called."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist test-api type()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 510
    iget-object v0, p0, Ljava/lang/invoke/MethodHandle;->type:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public whitelist test-api withVarargs(Z)Ljava/lang/invoke/MethodHandle;
    .registers 3
    .param p1, "makeVarargs"    # Z

    .line 1097
    nop

    .line 1098
    if-eqz p1, :cond_10

    .line 1099
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->lastParameterType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandle;->asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_10
    return-object p0
.end method

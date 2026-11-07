.class final Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder;
.super Ljava/lang/Object;
.source "DynamicConstantDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/constant/DynamicConstantDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanonicalMapHolder"
.end annotation


# static fields
.field static final blacklist CANONICAL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/constant/MethodHandleDesc;",
            "Ljava/util/function/Function<",
            "Ljava/lang/constant/DynamicConstantDesc<",
            "*>;",
            "Ljava/lang/constant/ConstantDesc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$7Dy253MtPgbdmpPjo-Cw40i96Fw(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->-$$Nest$smcanonicalizeFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$G2vpsUUENeG1AUdkG1WXIioCM78(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->-$$Nest$smcanonicalizeArrayVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$NZ_K6bqgatI1a1I6LL0Ou0NVj1A(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->-$$Nest$smcanonicalizeEnum(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$TG492C-YvcecEnMmDOKANOaumug(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->-$$Nest$smcanonicalizeNull(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Vef5nrhzehC-ffdmJHdQ3aO5NZo(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->-$$Nest$smcanonicalizePrimitiveClass(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$aEefqHhROh6Q7ggQokddIy_ZnzU(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;
    .registers 1

    invoke-static {p0}, Ljava/lang/constant/DynamicConstantDesc;->-$$Nest$smcanonicalizeStaticFieldVarHandle(Ljava/lang/constant/DynamicConstantDesc;)Ljava/lang/constant/ConstantDesc;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 391
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Map$Entry;

    sget-object v1, Ljava/lang/constant/ConstantDescs;->BSM_PRIMITIVE_CLASS:Ljava/lang/constant/DirectMethodHandleDesc;

    new-instance v2, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda0;-><init>()V

    .line 393
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/constant/ConstantDescs;->BSM_ENUM_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

    new-instance v2, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda1;-><init>()V

    .line 394
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/constant/ConstantDescs;->BSM_NULL_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

    new-instance v2, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda2;-><init>()V

    .line 395
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_STATIC_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

    new-instance v2, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda3;-><init>()V

    .line 396
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

    new-instance v2, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda4;-><init>()V

    .line 397
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_ARRAY:Ljava/lang/constant/DirectMethodHandleDesc;

    new-instance v2, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder$$ExternalSyntheticLambda5;-><init>()V

    .line 398
    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 392
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljava/lang/constant/DynamicConstantDesc$CanonicalMapHolder;->CANONICAL_MAP:Ljava/util/Map;

    .line 391
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

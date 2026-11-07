.class final enum Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;
.super Ljava/lang/Enum;
.source "VarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/VarHandle$VarHandleDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

.field public static final enum blacklist ARRAY:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

.field public static final enum blacklist FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

.field public static final enum blacklist STATIC_FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;


# instance fields
.field final blacklist bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;
    .registers 3

    .line 2378
    sget-object v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    sget-object v1, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->STATIC_FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    sget-object v2, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->ARRAY:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    filled-new-array {v0, v1, v2}, [Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2379
    new-instance v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

    const-string v3, "FIELD"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;-><init>(Ljava/lang/String;ILjava/lang/constant/DirectMethodHandleDesc;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    .line 2380
    new-instance v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_STATIC_FIELD:Ljava/lang/constant/DirectMethodHandleDesc;

    const-string v3, "STATIC_FIELD"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;-><init>(Ljava/lang/String;ILjava/lang/constant/DirectMethodHandleDesc;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->STATIC_FIELD:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    .line 2381
    new-instance v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/constant/ConstantDescs;->BSM_VARHANDLE_ARRAY:Ljava/lang/constant/DirectMethodHandleDesc;

    const-string v3, "ARRAY"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;-><init>(Ljava/lang/String;ILjava/lang/constant/DirectMethodHandleDesc;)V

    sput-object v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->ARRAY:Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    .line 2378
    invoke-static {}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->$values()[Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->$VALUES:[Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/constant/DirectMethodHandleDesc;)V
    .registers 4
    .param p3, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/constant/DirectMethodHandleDesc;",
            ")V"
        }
    .end annotation

    .line 2385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2386
    iput-object p3, p0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->bootstrapMethod:Ljava/lang/constant/DirectMethodHandleDesc;

    .line 2387
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2378
    const-class v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    return-object v0
.end method

.method public static blacklist values()[Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;
    .registers 1

    .line 2378
    sget-object v0, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->$VALUES:[Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    invoke-virtual {v0}, [Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;

    return-object v0
.end method


# virtual methods
.method blacklist toBSMArgs(Ljava/lang/constant/ClassDesc;Ljava/lang/constant/ClassDesc;)[Ljava/lang/constant/ConstantDesc;
    .registers 6
    .param p1, "declaringClass"    # Ljava/lang/constant/ClassDesc;
    .param p2, "varType"    # Ljava/lang/constant/ClassDesc;

    .line 2390
    invoke-virtual {p0}, Ljava/lang/invoke/VarHandle$VarHandleDesc$Kind;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1e

    .line 2393
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Cannot reach here"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2392
    :pswitch_11
    new-array v0, v1, [Ljava/lang/constant/ConstantDesc;

    aput-object p1, v0, v2

    goto :goto_1d

    .line 2391
    :pswitch_16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/constant/ConstantDesc;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    .line 2390
    :goto_1d
    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

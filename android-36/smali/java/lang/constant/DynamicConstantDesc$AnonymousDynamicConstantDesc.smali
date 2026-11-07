.class Ljava/lang/constant/DynamicConstantDesc$AnonymousDynamicConstantDesc;
.super Ljava/lang/constant/DynamicConstantDesc;
.source "DynamicConstantDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/constant/DynamicConstantDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnonymousDynamicConstantDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/constant/DynamicConstantDesc<",
        "TT;>;"
    }
.end annotation


# direct methods
.method varargs constructor blacklist <init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V
    .registers 5
    .param p1, "bootstrapMethod"    # Ljava/lang/constant/DirectMethodHandleDesc;
    .param p2, "constantName"    # Ljava/lang/String;
    .param p3, "constantType"    # Ljava/lang/constant/ClassDesc;
    .param p4, "bootstrapArgs"    # [Ljava/lang/constant/ConstantDesc;

    .line 386
    .local p0, "this":Ljava/lang/constant/DynamicConstantDesc$AnonymousDynamicConstantDesc;, "Ljava/lang/constant/DynamicConstantDesc$AnonymousDynamicConstantDesc<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/constant/DynamicConstantDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V

    .line 387
    return-void
.end method

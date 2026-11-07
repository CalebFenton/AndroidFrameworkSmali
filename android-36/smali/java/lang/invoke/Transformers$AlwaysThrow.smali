.class Ljava/lang/invoke/Transformers$AlwaysThrow;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlwaysThrow"
.end annotation


# instance fields
.field private final greylist-max-o exceptionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "nominalReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "exType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-static {p1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 117
    iput-object p2, p0, Ljava/lang/invoke/Transformers$AlwaysThrow;->exceptionType:Ljava/lang/Class;

    .line 118
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 4
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/invoke/Transformers$AlwaysThrow;->exceptionType:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

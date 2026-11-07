.class public Ljava/lang/invoke/LambdaMetafactory;
.super Ljava/lang/Object;
.source "LambdaMetafactory.java"


# static fields
.field public static final blacklist FLAG_BRIDGES:I = 0x4

.field public static final blacklist FLAG_MARKERS:I = 0x2

.field public static final blacklist FLAG_SERIALIZABLE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist altMetafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;
    .registers 5
    .param p0, "caller"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "invokedName"    # Ljava/lang/String;
    .param p2, "invokedType"    # Ljava/lang/invoke/MethodType;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/LambdaConversionException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;
    .registers 7
    .param p0, "caller"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p1, "invokedName"    # Ljava/lang/String;
    .param p2, "invokedType"    # Ljava/lang/invoke/MethodType;
    .param p3, "samMethodType"    # Ljava/lang/invoke/MethodType;
    .param p4, "implMethod"    # Ljava/lang/invoke/MethodHandle;
    .param p5, "instantiatedMethodType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/invoke/LambdaConversionException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

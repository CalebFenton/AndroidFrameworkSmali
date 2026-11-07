.class public interface abstract Ljava/lang/constant/ConstantDesc;
.super Ljava/lang/Object;
.source "ConstantDesc.java"


# annotations
.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljava/lang/constant/ClassDesc;,
        Ljava/lang/constant/MethodHandleDesc;,
        Ljava/lang/constant/MethodTypeDesc;,
        Ljava/lang/Double;,
        Ljava/lang/constant/DynamicConstantDesc;,
        Ljava/lang/Float;,
        Ljava/lang/Integer;,
        Ljava/lang/Long;,
        Ljava/lang/String;
    }
.end annotation


# virtual methods
.method public abstract blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation
.end method

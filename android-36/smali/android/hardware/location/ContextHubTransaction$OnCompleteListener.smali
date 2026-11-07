.class public interface abstract Landroid/hardware/location/ContextHubTransaction$OnCompleteListener;
.super Ljava/lang/Object;
.source "ContextHubTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract whitelist onComplete(Landroid/hardware/location/ContextHubTransaction;Landroid/hardware/location/ContextHubTransaction$Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "T",
            "L;",
            ">;",
            "Landroid/hardware/location/ContextHubTransaction$Response<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation
.end method

.class public interface abstract Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContextAwareServiceProducerWithoutBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TServiceClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TTServiceClass;"
        }
    .end annotation
.end method

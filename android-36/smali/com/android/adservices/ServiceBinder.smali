.class public abstract Lcom/android/adservices/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    .local p0, "this":Lcom/android/adservices/ServiceBinder;, "Lcom/android/adservices/ServiceBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceIntentAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT2;>;)",
            "Lcom/android/adservices/ServiceBinder<",
            "TT2;>;"
        }
    .end annotation

    .line 47
    .local p2, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT2;>;"
    new-instance v0, Lcom/android/adservices/AndroidServiceBinder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/adservices/AndroidServiceBinder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getService()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist unbindFromService()V
.end method

.class Ljava/util/concurrent/atomic/Striped64$1;
.super Ljava/lang/Object;
.source "Striped64.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/invoke/MethodHandles$Lookup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 393
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/Striped64$1;->run()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 3

    .line 396
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->privateLookupIn(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 397
    :catch_b
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.class Ljava/io/ObjectInputStream$1;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectInputStream;->auditSubclass(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$subcl:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1353
    iput-object p1, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 5

    .line 1355
    iget-object v0, p0, Ljava/io/ObjectInputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1356
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v1, Ljava/io/ObjectInputStream;

    if-eq v0, v1, :cond_24

    .line 1360
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "readUnshared"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1362
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_11} :catch_12

    return-object v1

    .line 1363
    :catch_12
    move-exception v2

    .line 1366
    :try_start_13
    const-string v2, "readFields"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1367
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_1d} :catch_1e

    return-object v1

    .line 1368
    :catch_1e
    move-exception v1

    .line 1357
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 1371
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1353
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

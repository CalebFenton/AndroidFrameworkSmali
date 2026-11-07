.class Ljava/io/ObjectOutputStream$1;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z
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

    .line 1092
    iput-object p1, p0, Ljava/io/ObjectOutputStream$1;->val$subcl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 6

    .line 1094
    iget-object v0, p0, Ljava/io/ObjectOutputStream$1;->val$subcl:Ljava/lang/Class;

    .line 1095
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v1, Ljava/io/ObjectOutputStream;

    if-eq v0, v1, :cond_29

    .line 1099
    :try_start_6
    const-string v1, "writeUnshared"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1101
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v1

    .line 1102
    :catch_16
    move-exception v1

    .line 1105
    :try_start_17
    const-string v1, "putFields"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1106
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_22} :catch_23

    return-object v1

    .line 1107
    :catch_23
    move-exception v1

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 1110
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1092
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class final Ljava/io/ObjectOutputStream$1;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectOutputStream;->auditSubclass(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subcl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "val$subcl"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1082
    iput-object p1, p0, Ljava/io/ObjectOutputStream$1;->val$subcl:Ljava/lang/Class;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 6

    #@0
    .prologue
    .line 1084
    iget-object v0, p0, Ljava/io/ObjectOutputStream$1;->val$subcl:Ljava/lang/Class;

    #@2
    .line 1085
    .local v0, "cl":Ljava/lang/Class;
    :goto_0
    const-class v2, Ljava/io/ObjectOutputStream;

    #@4
    .line 1084
    if-eq v0, v2, :cond_0

    #@6
    .line 1090
    :try_start_0
    const-string/jumbo v2, "writeUnshared"

    #@9
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    const-class v4, Ljava/lang/Object;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    .line 1089
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    .line 1091
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    return-object v2

    #@17
    .line 1092
    :catch_0
    move-exception v1

    #@18
    .line 1095
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_1
    const-string/jumbo v3, "putFields"

    #@1b
    const/4 v2, 0x0

    #@1c
    nop

    #@1d
    nop

    #@1e
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@21
    .line 1096
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@23
    return-object v2

    #@24
    .line 1097
    :catch_1
    move-exception v1

    #@25
    .line 1086
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@28
    move-result-object v0

    #@29
    goto :goto_0

    #@2a
    .line 1100
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@2c
    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1083
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

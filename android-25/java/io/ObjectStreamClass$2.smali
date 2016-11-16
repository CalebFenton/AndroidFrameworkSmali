.class Ljava/io/ObjectStreamClass$2;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ObjectStreamClass;

.field final synthetic val$cl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Ljava/io/ObjectStreamClass;

    #@0
    .prologue
    .line 457
    .local p2, "val$cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@2
    iput-object p2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 458
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 9

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 459
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@5
    invoke-static {v3}, Ljava/io/ObjectStreamClass;->-get2(Ljava/io/ObjectStreamClass;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 460
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@d
    const-wide/16 v2, 0x0

    #@f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set8(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;

    #@16
    .line 461
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@18
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@1a
    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    #@1d
    .line 462
    return-object v8

    #@1e
    .line 464
    :cond_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@20
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 465
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@28
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@2a
    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    #@2d
    .line 466
    return-object v8

    #@2e
    .line 469
    :cond_1
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@30
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@32
    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-wrap1(Ljava/lang/Class;)Ljava/lang/Long;

    #@35
    move-result-object v4

    #@36
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set8(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;

    #@39
    .line 471
    :try_start_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@3b
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@3d
    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-wrap0(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    #@40
    move-result-object v4

    #@41
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    #@44
    .line 472
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@46
    invoke-static {v3}, Ljava/io/ObjectStreamClass;->-wrap9(Ljava/io/ObjectStreamClass;)V
    :try_end_0
    .catch Ljava/io/InvalidClassException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    .line 479
    :goto_0
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@4b
    invoke-static {v3}, Ljava/io/ObjectStreamClass;->-get1(Ljava/io/ObjectStreamClass;)Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_2

    #@51
    .line 480
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@53
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@55
    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-wrap4(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@58
    move-result-object v2

    #@59
    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set0(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    #@5c
    .line 493
    :goto_1
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@5e
    .line 494
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@60
    const-string/jumbo v3, "writeReplace"

    #@63
    const-class v4, Ljava/lang/Object;

    #@65
    .line 493
    invoke-static {v2, v3, v8, v4}, Ljava/io/ObjectStreamClass;->-wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@68
    move-result-object v2

    #@69
    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set10(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    #@6c
    .line 495
    iget-object v1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@6e
    .line 496
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@70
    const-string/jumbo v3, "readResolve"

    #@73
    const-class v4, Ljava/lang/Object;

    #@75
    .line 495
    invoke-static {v2, v3, v8, v4}, Ljava/io/ObjectStreamClass;->-wrap6(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@78
    move-result-object v2

    #@79
    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->-set6(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    #@7c
    .line 497
    return-object v8

    #@7d
    .line 473
    :catch_0
    move-exception v0

    #@7e
    .line 474
    .local v0, "e":Ljava/io/InvalidClassException;
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@80
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@82
    .line 475
    new-instance v5, Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@84
    iget-object v6, v0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    #@86
    invoke-virtual {v0}, Ljava/io/InvalidClassException;->getMessage()Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8d
    .line 474
    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->-set1(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@90
    move-result-object v4

    #@91
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set7(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;

    #@94
    .line 476
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@96
    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    #@98
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set2(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;

    #@9b
    goto :goto_0

    #@9c
    .line 482
    .end local v0    # "e":Ljava/io/InvalidClassException;
    :cond_2
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@9e
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@a0
    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-wrap5(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@a3
    move-result-object v4

    #@a4
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set0(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    #@a7
    .line 483
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@a9
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@ab
    const-string/jumbo v5, "writeObject"

    #@ae
    .line 484
    new-array v6, v1, [Ljava/lang/Class;

    #@b0
    const-class v7, Ljava/io/ObjectOutputStream;

    #@b2
    aput-object v7, v6, v2

    #@b4
    .line 485
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@b6
    .line 483
    invoke-static {v4, v5, v6, v7}, Ljava/io/ObjectStreamClass;->-wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b9
    move-result-object v4

    #@ba
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set9(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    #@bd
    .line 486
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@bf
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@c1
    const-string/jumbo v5, "readObject"

    #@c4
    .line 487
    new-array v6, v1, [Ljava/lang/Class;

    #@c6
    const-class v7, Ljava/io/ObjectInputStream;

    #@c8
    aput-object v7, v6, v2

    #@ca
    .line 488
    sget-object v7, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@cc
    .line 486
    invoke-static {v4, v5, v6, v7}, Ljava/io/ObjectStreamClass;->-wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@cf
    move-result-object v4

    #@d0
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set4(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    #@d3
    .line 489
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@d5
    .line 490
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    #@d7
    const-string/jumbo v5, "readObjectNoData"

    #@da
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@dc
    .line 489
    invoke-static {v4, v5, v8, v6}, Ljava/io/ObjectStreamClass;->-wrap7(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@df
    move-result-object v4

    #@e0
    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-set5(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    #@e3
    .line 491
    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@e5
    iget-object v4, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    #@e7
    invoke-static {v4}, Ljava/io/ObjectStreamClass;->-get3(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;

    #@ea
    move-result-object v4

    #@eb
    if-eqz v4, :cond_3

    #@ed
    :goto_2
    invoke-static {v3, v1}, Ljava/io/ObjectStreamClass;->-set3(Ljava/io/ObjectStreamClass;Z)Z

    #@f0
    goto/16 :goto_1

    #@f2
    :cond_3
    move v1, v2

    #@f3
    goto :goto_2
.end method

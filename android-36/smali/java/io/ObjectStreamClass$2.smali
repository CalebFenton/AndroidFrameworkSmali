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
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/io/ObjectStreamClass;

.field final synthetic blacklist val$cl:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V
    .registers 3
    .param p1, "this$0"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iput-object p2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 501
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 9

    .line 503
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetisEnum(Ljava/io/ObjectStreamClass;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 504
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputsuid(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)V

    .line 505
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputfields(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)V

    .line 506
    return-object v1

    .line 508
    :cond_1c
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 509
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputfields(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)V

    .line 510
    return-object v1

    .line 513
    :cond_2c
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputsuid(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)V

    .line 515
    :try_start_37
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputfields(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)V

    .line 516
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-$$Nest$mcomputeFieldOffsets(Ljava/io/ObjectStreamClass;)V
    :try_end_47
    .catch Ljava/io/InvalidClassException; {:try_start_37 .. :try_end_47} :catch_48

    .line 521
    goto :goto_65

    .line 517
    :catch_48
    move-exception v0

    .line 518
    .local v0, "e":Ljava/io/InvalidClassException;
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v3, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    new-instance v4, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v5, v0, Ljava/io/InvalidClassException;->classname:Ljava/lang/String;

    .line 519
    invoke-virtual {v0}, Ljava/io/InvalidClassException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/io/ObjectStreamClass;->-$$Nest$fputdeserializeEx(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)V

    invoke-static {v2, v4}, Ljava/io/ObjectStreamClass;->-$$Nest$fputserializeEx(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)V

    .line 520
    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    sget-object v3, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->-$$Nest$fputfields(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)V

    .line 523
    .end local v0    # "e":Ljava/io/InvalidClassException;
    :goto_65
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetisRecord(Ljava/io/ObjectStreamClass;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 524
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-$$Nest$smcanonicalRecordCtr(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputcanonicalCtr(Ljava/io/ObjectStreamClass;Ljava/lang/invoke/MethodHandle;)V

    .line 525
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    new-instance v2, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;

    invoke-direct {v2}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;-><init>()V

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputdeserializationCtrs(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;)V

    goto :goto_ec

    .line 526
    :cond_83
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetexternalizable(Ljava/io/ObjectStreamClass;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 527
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputcons(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)V

    goto :goto_ec

    .line 529
    :cond_97
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputcons(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)V

    .line 530
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/ObjectOutputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v7, "writeObject"

    invoke-static {v2, v7, v4, v5}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputwriteObjectMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V

    .line 533
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/ObjectInputStream;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v7, "readObject"

    invoke-static {v2, v7, v4, v5}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputreadObjectMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V

    .line 536
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string v4, "readObjectNoData"

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4, v1, v5}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputreadObjectNoDataMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V

    .line 538
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fgetwriteObjectMethod(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_e8

    goto :goto_e9

    :cond_e8
    move v3, v6

    :goto_e9
    invoke-static {v0, v3}, Ljava/io/ObjectStreamClass;->-$$Nest$fputhasWriteObjectData(Ljava/io/ObjectStreamClass;Z)V

    .line 540
    :goto_ec
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string v3, "writeReplace"

    const-class v4, Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputwriteReplaceMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V

    .line 542
    iget-object v0, p0, Ljava/io/ObjectStreamClass$2;->this$0:Ljava/io/ObjectStreamClass;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$2;->val$cl:Ljava/lang/Class;

    const-string v3, "readResolve"

    const-class v4, Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Ljava/io/ObjectStreamClass;->-$$Nest$smgetInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/io/ObjectStreamClass;->-$$Nest$fputreadResolveMethod(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)V

    .line 544
    return-object v1
.end method

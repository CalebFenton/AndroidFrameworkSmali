.class public final Landroid/renderscript/ScriptGroup$Builder2;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder2"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field greylist-max-o mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/RenderScript;)V
    .registers 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    .line 942
    return-void
.end method

.method private greylist-max-o addInvokeInternal(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;
    .registers 6
    .param p1, "invoke"    # Landroid/renderscript/Script$InvokeID;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .line 972
    .local p3, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/renderscript/ScriptGroup$Closure;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 973
    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    return-object v0
.end method

.method private greylist-max-o addKernelInternal(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;
    .registers 11
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/renderscript/Type;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .line 956
    .local p4, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "k":Landroid/renderscript/Script$KernelID;
    .end local p2    # "returnType":Landroid/renderscript/Type;
    .end local p3    # "args":[Ljava/lang/Object;
    .end local p4    # "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    .local v2, "k":Landroid/renderscript/Script$KernelID;
    .local v3, "returnType":Landroid/renderscript/Type;
    .local v4, "args":[Ljava/lang/Object;
    .local v5, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/ScriptGroup$Closure;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 957
    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    iget-object p1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    return-object v0
.end method

.method private greylist-max-o seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .registers 8
    .param p1, "argsAndBindings"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1049
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_13

    .line 1050
    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/renderscript/ScriptGroup$Binding;

    if-eqz v1, :cond_b

    .line 1051
    goto :goto_13

    .line 1053
    :cond_b
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    :cond_13
    :goto_13
    array-length v1, p1

    if-ge v0, v1, :cond_30

    .line 1057
    aget-object v1, p1, v0

    instance-of v1, v1, Landroid/renderscript/ScriptGroup$Binding;

    if-nez v1, :cond_1e

    .line 1058
    const/4 v1, 0x0

    return v1

    .line 1060
    :cond_1e
    aget-object v1, p1, v0

    check-cast v1, Landroid/renderscript/ScriptGroup$Binding;

    .line 1061
    .local v1, "b":Landroid/renderscript/ScriptGroup$Binding;
    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Binding;->getField()Landroid/renderscript/Script$FieldID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .end local v1    # "b":Landroid/renderscript/ScriptGroup$Binding;
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1064
    :cond_30
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist addInput()Landroid/renderscript/ScriptGroup$Input;
    .registers 3

    .line 984
    new-instance v0, Landroid/renderscript/ScriptGroup$Input;

    invoke-direct {v0}, Landroid/renderscript/ScriptGroup$Input;-><init>()V

    .line 985
    .local v0, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    return-object v0
.end method

.method public varargs whitelist addInvoke(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup$Closure;
    .registers 6
    .param p1, "invoke"    # Landroid/renderscript/Script$InvokeID;
    .param p2, "argsAndBindings"    # [Ljava/lang/Object;

    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1017
    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p2, v0, v1}, Landroid/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1018
    const/4 v2, 0x0

    return-object v2

    .line 1020
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Landroid/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v2

    return-object v2
.end method

.method public varargs whitelist addKernel(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup$Closure;
    .registers 7
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/renderscript/Type;
    .param p3, "argsAndBindings"    # [Ljava/lang/Object;

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p3, v0, v1}, Landroid/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1001
    const/4 v2, 0x0

    return-object v2

    .line 1003
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v2

    return-object v2
.end method

.method public varargs whitelist create(Ljava/lang/String;[Landroid/renderscript/ScriptGroup$Future;)Landroid/renderscript/ScriptGroup;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outputs"    # [Landroid/renderscript/ScriptGroup$Future;

    .line 1035
    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3d

    .line 1036
    const-string v0, "[^a-zA-Z0-9-]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1039
    new-instance v1, Landroid/renderscript/ScriptGroup;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    iget-object v5, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    move-object v3, p1

    move-object v6, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    .local v3, "name":Ljava/lang/String;
    .local v6, "outputs":[Landroid/renderscript/ScriptGroup$Future;
    invoke-direct/range {v1 .. v6}, Landroid/renderscript/ScriptGroup;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V

    .line 1040
    .local v1, "ret":Landroid/renderscript/ScriptGroup;
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 1041
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    .line 1042
    return-object v1

    .line 1036
    .end local v1    # "ret":Landroid/renderscript/ScriptGroup;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    :cond_3a
    move-object v3, p1

    move-object v6, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    goto :goto_3f

    .line 1035
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    :cond_3d
    move-object v3, p1

    move-object v6, p2

    .line 1037
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v6    # "outputs":[Landroid/renderscript/ScriptGroup$Future;
    :goto_3f
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo p2, "invalid script group name"

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

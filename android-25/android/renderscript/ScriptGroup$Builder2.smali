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
.field private static final TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 934
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 935
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    #@c
    .line 936
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    #@13
    .line 933
    return-void
.end method

.method private addInvokeInternal(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 2
    .param p1, "invoke"    # Landroid/renderscript/Script$InvokeID;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    #@0
    .prologue
    .line 967
    .local p3, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure;

    #@2
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-direct {v0, v1, p1, p2, p3}, Landroid/renderscript/ScriptGroup$Closure;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    #@7
    .line 968
    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    #@9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c
    .line 969
    return-object v0
.end method

.method private addKernelInternal(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 6
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
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    #@0
    .prologue
    .line 951
    .local p4, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure;

    #@2
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/ScriptGroup$Closure;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    #@b
    .line 952
    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    #@d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 953
    return-object v0
.end method

.method private seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 4
    .param p1, "argsAndBindings"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1044
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@2
    if-ge v1, v2, :cond_0

    #@4
    .line 1045
    aget-object v2, p1, v1

    #@6
    instance-of v2, v2, Landroid/renderscript/ScriptGroup$Binding;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 1051
    :cond_0
    :goto_1
    array-length v2, p1

    #@b
    if-ge v1, v2, :cond_3

    #@d
    .line 1052
    aget-object v2, p1, v1

    #@f
    instance-of v2, v2, Landroid/renderscript/ScriptGroup$Binding;

    #@11
    if-nez v2, :cond_2

    #@13
    .line 1053
    const/4 v2, 0x0

    #@14
    return v2

    #@15
    .line 1048
    :cond_1
    aget-object v2, p1, v1

    #@17
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1044
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1055
    :cond_2
    aget-object v0, p1, v1

    #@1f
    check-cast v0, Landroid/renderscript/ScriptGroup$Binding;

    #@21
    .line 1056
    .local v0, "b":Landroid/renderscript/ScriptGroup$Binding;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Binding;->getField()Landroid/renderscript/Script$FieldID;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 1051
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 1059
    .end local v0    # "b":Landroid/renderscript/ScriptGroup$Binding;
    :cond_3
    const/4 v2, 0x1

    #@30
    return v2
.end method


# virtual methods
.method public addInput()Landroid/renderscript/ScriptGroup$Input;
    .locals 2

    #@0
    .prologue
    .line 979
    new-instance v0, Landroid/renderscript/ScriptGroup$Input;

    #@2
    invoke-direct {v0}, Landroid/renderscript/ScriptGroup$Input;-><init>()V

    #@5
    .line 980
    .local v0, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    #@7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 981
    return-object v0
.end method

.method public varargs addInvoke(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 3
    .param p1, "invoke"    # Landroid/renderscript/Script$InvokeID;
    .param p2, "argsAndBindings"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1011
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    #@7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 1012
    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p2, v0, v1}, Landroid/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 1013
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 1015
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, p1, v2, v1}, Landroid/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public varargs addKernel(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 3
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/renderscript/Type;
    .param p3, "argsAndBindings"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 993
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 994
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    #@7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 995
    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p3, v0, v1}, Landroid/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 996
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 998
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method public varargs create(Ljava/lang/String;[Landroid/renderscript/ScriptGroup$Future;)Landroid/renderscript/ScriptGroup;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outputs"    # [Landroid/renderscript/ScriptGroup$Future;

    #@0
    .prologue
    .line 1030
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    const/16 v2, 0x64

    #@e
    if-le v1, v2, :cond_1

    #@10
    .line 1032
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@12
    const-string/jumbo v2, "invalid script group name"

    #@15
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1

    #@19
    .line 1031
    :cond_1
    const-string/jumbo v1, "[^a-zA-Z0-9-]"

    #@1c
    const-string/jumbo v2, "_"

    #@1f
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 1034
    new-instance v0, Landroid/renderscript/ScriptGroup;

    #@2b
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    #@2f
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    #@31
    move-object v2, p1

    #@32
    move-object v5, p2

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/ScriptGroup;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V

    #@36
    .line 1035
    .local v0, "ret":Landroid/renderscript/ScriptGroup;
    new-instance v1, Ljava/util/ArrayList;

    #@38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@3b
    iput-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    #@3d
    .line 1036
    new-instance v1, Ljava/util/ArrayList;

    #@3f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@42
    iput-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    #@44
    .line 1037
    return-object v0
.end method

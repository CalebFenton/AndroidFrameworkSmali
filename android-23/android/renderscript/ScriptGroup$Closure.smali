.class public final Landroid/renderscript/ScriptGroup$Closure;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroid/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Landroid/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 111
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 25
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "invokeID"    # Landroid/renderscript/Script$InvokeID;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 155
    .local p4, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    #@2
    move-object/from16 v0, p0

    #@4
    move-object/from16 v1, p1

    #@6
    invoke-direct {v0, v4, v5, v1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@9
    .line 156
    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    #@c
    move-result-object v4

    #@d
    move-object/from16 v0, p0

    #@f
    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    #@11
    .line 158
    move-object/from16 v0, p3

    #@13
    move-object/from16 v1, p0

    #@15
    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    #@17
    .line 159
    move-object/from16 v0, p4

    #@19
    move-object/from16 v1, p0

    #@1b
    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    #@1d
    .line 160
    new-instance v4, Ljava/util/HashMap;

    #@1f
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@22
    move-object/from16 v0, p0

    #@24
    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    #@26
    .line 162
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    #@29
    move-result v24

    #@2a
    .line 164
    .local v24, "numValues":I
    move/from16 v0, v24

    #@2c
    new-array v0, v0, [J

    #@2e
    move-object/from16 v17, v0

    #@30
    .line 165
    .local v17, "fieldIDs":[J
    move/from16 v0, v24

    #@32
    new-array v9, v0, [J

    #@34
    .line 166
    .local v9, "values":[J
    move/from16 v0, v24

    #@36
    new-array v10, v0, [I

    #@38
    .line 167
    .local v10, "sizes":[I
    move/from16 v0, v24

    #@3a
    new-array v11, v0, [J

    #@3c
    .line 168
    .local v11, "depClosures":[J
    move/from16 v0, v24

    #@3e
    new-array v12, v0, [J

    #@40
    .line 170
    .local v12, "depFieldIDs":[J
    const/4 v6, 0x0

    #@41
    .line 171
    .local v6, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@44
    move-result-object v4

    #@45
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v21

    #@49
    .local v21, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_0

    #@4f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v20

    #@53
    check-cast v20, Ljava/util/Map$Entry;

    #@55
    .line 172
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@58
    move-result-object v8

    #@59
    .line 173
    .local v8, "obj":Ljava/lang/Object;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5c
    move-result-object v7

    #@5d
    check-cast v7, Landroid/renderscript/Script$FieldID;

    #@5f
    .line 174
    .local v7, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object/from16 v0, p1

    #@61
    invoke-virtual {v7, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    #@64
    move-result-wide v4

    #@65
    aput-wide v4, v17, v6

    #@67
    move-object/from16 v4, p0

    #@69
    move-object/from16 v5, p1

    #@6b
    .line 175
    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    #@6e
    .line 177
    add-int/lit8 v6, v6, 0x1

    #@70
    goto :goto_0

    #@71
    .line 180
    .end local v7    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    :cond_0
    move-object/from16 v0, p2

    #@73
    move-object/from16 v1, p1

    #@75
    invoke-virtual {v0, v1}, Landroid/renderscript/Script$InvokeID;->getID(Landroid/renderscript/RenderScript;)J

    #@78
    move-result-wide v14

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    #@7d
    invoke-virtual {v4}, Landroid/renderscript/FieldPacker;->getData()[B

    #@80
    move-result-object v16

    #@81
    move-object/from16 v13, p1

    #@83
    move-object/from16 v18, v9

    #@85
    move-object/from16 v19, v10

    #@87
    invoke-virtual/range {v13 .. v19}, Landroid/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    #@8a
    move-result-wide v22

    #@8b
    .line 183
    .local v22, "id":J
    move-object/from16 v0, p0

    #@8d
    move-wide/from16 v1, v22

    #@8f
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    #@92
    .line 154
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 28
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "kernelID"    # Landroid/renderscript/Script$KernelID;
    .param p3, "returnType"    # Landroid/renderscript/Type;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p5, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    #@2
    move-object/from16 v0, p0

    #@4
    move-object/from16 v1, p1

    #@6
    invoke-direct {v0, v4, v5, v1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    #@9
    .line 119
    move-object/from16 v0, p4

    #@b
    move-object/from16 v1, p0

    #@d
    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    #@f
    .line 120
    move-object/from16 v0, p1

    #@11
    move-object/from16 v1, p3

    #@13
    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    #@16
    move-result-object v4

    #@17
    move-object/from16 v0, p0

    #@19
    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    #@1b
    .line 121
    move-object/from16 v0, p5

    #@1d
    move-object/from16 v1, p0

    #@1f
    iput-object v0, v1, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    #@21
    .line 122
    new-instance v4, Ljava/util/HashMap;

    #@23
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@26
    move-object/from16 v0, p0

    #@28
    iput-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    #@2a
    .line 124
    move-object/from16 v0, p4

    #@2c
    array-length v4, v0

    #@2d
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    #@30
    move-result v5

    #@31
    add-int v25, v4, v5

    #@33
    .line 126
    .local v25, "numValues":I
    move/from16 v0, v25

    #@35
    new-array v0, v0, [J

    #@37
    move-object/from16 v18, v0

    #@39
    .line 127
    .local v18, "fieldIDs":[J
    move/from16 v0, v25

    #@3b
    new-array v9, v0, [J

    #@3d
    .line 128
    .local v9, "values":[J
    move/from16 v0, v25

    #@3f
    new-array v10, v0, [I

    #@41
    .line 129
    .local v10, "sizes":[I
    move/from16 v0, v25

    #@43
    new-array v11, v0, [J

    #@45
    .line 130
    .local v11, "depClosures":[J
    move/from16 v0, v25

    #@47
    new-array v12, v0, [J

    #@49
    .line 133
    .local v12, "depFieldIDs":[J
    const/4 v6, 0x0

    #@4a
    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p4

    #@4c
    array-length v4, v0

    #@4d
    if-ge v6, v4, :cond_0

    #@4f
    .line 134
    const-wide/16 v4, 0x0

    #@51
    aput-wide v4, v18, v6

    #@53
    .line 135
    aget-object v8, p4, v6

    #@55
    const/4 v7, 0x0

    #@56
    move-object/from16 v4, p0

    #@58
    move-object/from16 v5, p1

    #@5a
    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    #@5d
    .line 133
    add-int/lit8 v6, v6, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 138
    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@63
    move-result-object v4

    #@64
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object v24

    #@68
    .local v24, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_1

    #@6e
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object v23

    #@72
    check-cast v23, Ljava/util/Map$Entry;

    #@74
    .line 139
    .local v23, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@77
    move-result-object v8

    #@78
    .line 140
    .local v8, "obj":Ljava/lang/Object;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7b
    move-result-object v7

    #@7c
    check-cast v7, Landroid/renderscript/Script$FieldID;

    #@7e
    .line 141
    .local v7, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object/from16 v0, p1

    #@80
    invoke-virtual {v7, v0}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    #@83
    move-result-wide v4

    #@84
    aput-wide v4, v18, v6

    #@86
    move-object/from16 v4, p0

    #@88
    move-object/from16 v5, p1

    #@8a
    .line 142
    invoke-direct/range {v4 .. v12}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    #@8d
    .line 144
    add-int/lit8 v6, v6, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 147
    .end local v7    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    :cond_1
    move-object/from16 v0, p2

    #@92
    move-object/from16 v1, p1

    #@94
    invoke-virtual {v0, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    #@97
    move-result-wide v14

    #@98
    move-object/from16 v0, p0

    #@9a
    iget-object v4, v0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    #@9c
    move-object/from16 v0, p1

    #@9e
    invoke-virtual {v4, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@a1
    move-result-wide v16

    #@a2
    move-object/from16 v13, p1

    #@a4
    move-object/from16 v19, v9

    #@a6
    move-object/from16 v20, v10

    #@a8
    move-object/from16 v21, v11

    #@aa
    move-object/from16 v22, v12

    #@ac
    invoke-virtual/range {v13 .. v22}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    #@af
    move-result-wide v26

    #@b0
    .line 150
    .local v26, "id":J
    move-object/from16 v0, p0

    #@b2
    move-wide/from16 v1, v26

    #@b4
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    #@b7
    .line 116
    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "fid"    # Landroid/renderscript/Script$FieldID;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I
    .param p7, "depClosures"    # [J
    .param p8, "depFieldIDs"    # [J

    #@0
    .prologue
    .line 192
    instance-of v4, p4, Landroid/renderscript/ScriptGroup$Future;

    #@2
    if-eqz v4, :cond_1

    #@4
    move-object v0, p4

    #@5
    .line 193
    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    #@7
    .line 194
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    #@a
    move-result-object p4

    #@b
    .line 195
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    #@12
    move-result-wide v4

    #@13
    aput-wide v4, p7, p2

    #@15
    .line 196
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    #@18
    move-result-object v1

    #@19
    .line 197
    .local v1, "fieldID":Landroid/renderscript/Script$FieldID;
    if-eqz v1, :cond_0

    #@1b
    invoke-virtual {v1, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    #@1e
    move-result-wide v4

    #@1f
    :goto_0
    aput-wide v4, p8, p2

    #@21
    .line 203
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    :goto_1
    instance-of v4, p4, Landroid/renderscript/ScriptGroup$Input;

    #@23
    if-eqz v4, :cond_3

    #@25
    move-object v2, p4

    #@26
    .line 204
    check-cast v2, Landroid/renderscript/ScriptGroup$Input;

    #@28
    .line 205
    .local v2, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    #@2a
    array-length v4, v4

    #@2b
    if-ge p2, v4, :cond_2

    #@2d
    .line 206
    invoke-virtual {v2, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    #@30
    .line 210
    :goto_2
    const-wide/16 v4, 0x0

    #@32
    aput-wide v4, p5, p2

    #@34
    .line 211
    const/4 v4, 0x0

    #@35
    aput v4, p6, p2

    #@37
    .line 190
    .end local v2    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :goto_3
    return-void

    #@38
    .line 197
    .restart local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .restart local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    :cond_0
    const-wide/16 v4, 0x0

    #@3a
    goto :goto_0

    #@3b
    .line 199
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    :cond_1
    const-wide/16 v4, 0x0

    #@3d
    aput-wide v4, p7, p2

    #@3f
    .line 200
    const-wide/16 v4, 0x0

    #@41
    aput-wide v4, p8, p2

    #@43
    goto :goto_1

    #@44
    .line 208
    .restart local v2    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :cond_2
    invoke-virtual {v2, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    #@47
    goto :goto_2

    #@48
    .line 213
    .end local v2    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :cond_3
    new-instance v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    #@4a
    invoke-direct {v3, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    #@4d
    .line 214
    .local v3, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-wide v4, v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@4f
    aput-wide v4, p5, p2

    #@51
    .line 215
    iget v4, v3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@53
    aput v4, p6, p2

    #@55
    goto :goto_3
.end method


# virtual methods
.method public getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .locals 3
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;

    #@0
    .prologue
    .line 241
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    #@2
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    #@8
    .line 243
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    if-nez v0, :cond_1

    #@a
    .line 248
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    #@c
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    .line 249
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/renderscript/ScriptGroup$Future;

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 250
    check-cast v1, Landroid/renderscript/ScriptGroup$Future;

    #@16
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    .line 252
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    #@1c
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-direct {v0, p0, p1, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    #@1f
    .line 253
    .restart local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    #@21
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 256
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public getReturn()Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 226
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 227
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    #@7
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    #@9
    invoke-direct {v0, p0, v2, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    #@c
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    #@e
    .line 230
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    #@10
    return-object v0
.end method

.method setArg(ILjava/lang/Object;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 260
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 261
    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    #@6
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    .line 263
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    #@c
    aput-object p2, v0, p1

    #@e
    .line 264
    new-instance v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    #@10
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@12
    invoke-direct {v7, v0, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    #@15
    .line 265
    .local v7, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@17
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@19
    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    #@1c
    move-result-wide v1

    #@1d
    iget-wide v4, v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@1f
    iget v6, v7, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@21
    move v3, p1

    #@22
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    #@25
    .line 259
    return-void
.end method

.method setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9
    .param p1, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 269
    instance-of v1, p2, Landroid/renderscript/ScriptGroup$Future;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 270
    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    #@6
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    .line 272
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    #@c
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 273
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    #@11
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@13
    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    #@16
    .line 274
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@18
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@1a
    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    #@1d
    move-result-wide v2

    #@1e
    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    #@20
    invoke-virtual {p1, v4}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    #@23
    move-result-wide v4

    #@24
    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    #@26
    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    #@28
    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    #@2b
    .line 268
    return-void
.end method

.class public final Landroid/renderscript/ScriptGroup$Future;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Future"
.end annotation


# instance fields
.field mClosure:Landroid/renderscript/ScriptGroup$Closure;

.field mFieldID:Landroid/renderscript/Script$FieldID;

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 319
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Future;->mClosure:Landroid/renderscript/ScriptGroup$Closure;

    #@5
    .line 320
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$Future;->mFieldID:Landroid/renderscript/Script$FieldID;

    #@7
    .line 321
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    #@9
    .line 318
    return-void
.end method


# virtual methods
.method getClosure()Landroid/renderscript/ScriptGroup$Closure;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mClosure:Landroid/renderscript/ScriptGroup$Closure;

    #@2
    return-object v0
.end method

.method getFieldID()Landroid/renderscript/Script$FieldID;
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mFieldID:Landroid/renderscript/Script$FieldID;

    #@2
    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 326
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

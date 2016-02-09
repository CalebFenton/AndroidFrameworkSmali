.class public final Landroid/renderscript/ScriptGroup$Binding;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binding"
.end annotation


# instance fields
.field private final mField:Landroid/renderscript/Script$FieldID;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 846
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Binding;->mField:Landroid/renderscript/Script$FieldID;

    #@5
    .line 847
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    #@7
    .line 845
    return-void
.end method


# virtual methods
.method getField()Landroid/renderscript/Script$FieldID;
    .locals 1

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Binding;->mField:Landroid/renderscript/Script$FieldID;

    #@2
    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

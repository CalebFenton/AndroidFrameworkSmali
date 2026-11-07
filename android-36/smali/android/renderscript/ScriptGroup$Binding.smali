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
.field private final greylist-max-o mField:Landroid/renderscript/Script$FieldID;

.field private final greylist-max-o mValue:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .registers 3
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;
    .param p2, "value"    # Ljava/lang/Object;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Binding;->mField:Landroid/renderscript/Script$FieldID;

    .line 877
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    .line 878
    return-void
.end method


# virtual methods
.method greylist-max-o getField()Landroid/renderscript/Script$FieldID;
    .registers 2

    .line 884
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Binding;->mField:Landroid/renderscript/Script$FieldID;

    return-object v0
.end method

.method greylist-max-o getValue()Ljava/lang/Object;
    .registers 2

    .line 890
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    return-object v0
.end method

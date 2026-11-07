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
.field greylist-max-o mClosure:Landroid/renderscript/ScriptGroup$Closure;

.field greylist-max-o mFieldID:Landroid/renderscript/Script$FieldID;

.field greylist-max-o mValue:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .registers 4
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p3, "value"    # Ljava/lang/Object;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Future;->mClosure:Landroid/renderscript/ScriptGroup$Closure;

    .line 348
    iput-object p2, p0, Landroid/renderscript/ScriptGroup$Future;->mFieldID:Landroid/renderscript/Script$FieldID;

    .line 349
    iput-object p3, p0, Landroid/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    .line 350
    return-void
.end method


# virtual methods
.method greylist-max-o getClosure()Landroid/renderscript/ScriptGroup$Closure;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mClosure:Landroid/renderscript/ScriptGroup$Closure;

    return-object v0
.end method

.method greylist-max-o getFieldID()Landroid/renderscript/Script$FieldID;
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mFieldID:Landroid/renderscript/Script$FieldID;

    return-object v0
.end method

.method greylist-max-o getValue()Ljava/lang/Object;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    return-object v0
.end method

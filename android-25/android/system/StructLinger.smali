.class public final Landroid/system/StructLinger;
.super Ljava/lang/Object;
.source "StructLinger.java"


# instance fields
.field public final l_linger:I

.field public final l_onoff:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "l_onoff"    # I
    .param p2, "l_linger"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput p1, p0, Landroid/system/StructLinger;->l_onoff:I

    #@5
    .line 36
    iput p2, p0, Landroid/system/StructLinger;->l_linger:I

    #@7
    .line 34
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 40
    iget v1, p0, Landroid/system/StructLinger;->l_onoff:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 44
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.class public abstract Landroid/util/FloatProperty;
.super Landroid/util/Property;
.source "FloatProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    .local p0, "this":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    const-class v0, Ljava/lang/Float;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5
    .line 29
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 41
    .local p0, "this":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    #@7
    .line 40
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    .local p0, "this":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    check-cast p2, Ljava/lang/Float;

    #@2
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    #@5
    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

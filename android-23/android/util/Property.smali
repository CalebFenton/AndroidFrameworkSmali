.class public abstract Landroid/util/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 61
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    iput-object p2, p0, Landroid/util/Property;->mName:Ljava/lang/String;

    #@5
    .line 63
    iput-object p1, p0, Landroid/util/Property;->mType:Ljava/lang/Class;

    #@7
    .line 61
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Property",
            "<TT;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "hostType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Landroid/util/ReflectiveProperty;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/util/ReflectiveProperty;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    iget-object v0, p0, Landroid/util/Property;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    iget-object v0, p0, Landroid/util/Property;->mType:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 76
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p0, "this":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Property "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " is read-only"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

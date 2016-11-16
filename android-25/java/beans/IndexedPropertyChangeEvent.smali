.class public Ljava/beans/IndexedPropertyChangeEvent;
.super Ljava/beans/PropertyChangeEvent;
.source "IndexedPropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x471ad2af2ec1996L


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .param p5, "index"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 62
    iput p5, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "; index="

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Ljava/beans/IndexedPropertyChangeEvent;->getIndex()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    .line 75
    return-void
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    #@2
    return v0
.end method

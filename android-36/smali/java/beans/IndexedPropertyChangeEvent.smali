.class public Ljava/beans/IndexedPropertyChangeEvent;
.super Ljava/beans/PropertyChangeEvent;
.source "IndexedPropertyChangeEvent.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x471ad2af2ec1996L


# instance fields
.field private greylist-max-o index:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .param p5, "index"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    iput p5, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    .line 63
    return-void
.end method


# virtual methods
.method greylist-max-o appendTo(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "; index="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/beans/IndexedPropertyChangeEvent;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    return-void
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 72
    iget v0, p0, Ljava/beans/IndexedPropertyChangeEvent;->index:I

    return v0
.end method

.class public Ljava/beans/PropertyChangeEvent;
.super Ljava/util/EventObject;
.source "PropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x61bcac98a722147bL


# instance fields
.field newValue:Ljava/lang/Object;

.field oldValue:Ljava/lang/Object;

.field propagationId:Ljava/lang/Object;

.field propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 59
    iput-object p2, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    #@5
    .line 60
    iput-object p3, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    #@7
    .line 61
    iput-object p4, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    #@9
    .line 56
    return-void
.end method


# virtual methods
.method public getNewValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getPropagationId()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setPropagationId(Ljava/lang/Object;)V
    .locals 0
    .param p1, "propagationId"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    #@2
    .line 79
    return-void
.end method

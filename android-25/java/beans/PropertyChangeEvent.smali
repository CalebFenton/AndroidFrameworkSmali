.class public Ljava/beans/PropertyChangeEvent;
.super Ljava/util/EventObject;
.source "PropertyChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x61bcac98a722147bL


# instance fields
.field private newValue:Ljava/lang/Object;

.field private oldValue:Ljava/lang/Object;

.field private propagationId:Ljava/lang/Object;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 61
    iput-object p2, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    #@5
    .line 62
    iput-object p4, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    #@7
    .line 63
    iput-object p3, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    #@9
    .line 59
    return-void
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 162
    return-void
.end method

.method public getNewValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getPropagationId()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setPropagationId(Ljava/lang/Object;)V
    .locals 0
    .param p1, "propagationId"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    #@2
    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[propertyName="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 154
    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeEvent;->appendTo(Ljava/lang/StringBuilder;)V

    #@1e
    .line 155
    const-string/jumbo v1, "; oldValue="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    .line 156
    const-string/jumbo v1, "; newValue="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    .line 157
    const-string/jumbo v1, "; propagationId="

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getPropagationId()Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    .line 158
    const-string/jumbo v1, "; source="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    .line 159
    const-string/jumbo v1, "]"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    return-object v1
.end method

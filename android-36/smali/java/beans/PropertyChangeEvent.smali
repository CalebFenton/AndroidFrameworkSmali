.class public Ljava/beans/PropertyChangeEvent;
.super Ljava/util/EventObject;
.source "PropertyChangeEvent.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x61bcac98a722147bL


# instance fields
.field private greylist-max-o newValue:Ljava/lang/Object;

.field private greylist-max-o oldValue:Ljava/lang/Object;

.field private greylist-max-o propagationId:Ljava/lang/Object;

.field private greylist-max-o propertyName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 63
    iput-object p2, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    .line 65
    iput-object p3, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method greylist-max-o appendTo(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 165
    return-void
.end method

.method public whitelist test-api getNewValue()Ljava/lang/Object;
    .registers 2

    .line 85
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->newValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getOldValue()Ljava/lang/Object;
    .registers 2

    .line 95
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->oldValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getPropagationId()Ljava/lang/Object;
    .registers 2

    .line 118
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getPropertyName()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Ljava/beans/PropertyChangeEvent;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api setPropagationId(Ljava/lang/Object;)V
    .registers 2
    .param p1, "propagationId"    # Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Ljava/beans/PropertyChangeEvent;->propagationId:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[propertyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeEvent;->appendTo(Ljava/lang/StringBuilder;)V

    .line 157
    const-string v1, "; oldValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "; newValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "; propagationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getPropagationId()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "; source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

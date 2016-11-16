.class public Ljava/beans/PropertyChangeListenerProxy;
.super Ljava/util/EventListenerProxy;
.source "PropertyChangeListenerProxy.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EventListenerProxy",
        "<",
        "Ljava/beans/PropertyChangeListener;",
        ">;",
        "Ljava/beans/PropertyChangeListener;"
    }
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p2}, Ljava/util/EventListenerProxy;-><init>(Ljava/util/EventListener;)V

    #@3
    .line 61
    iput-object p1, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    #@5
    .line 59
    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 1
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    #@0
    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/util/EventListenerProxy;->getListener()Ljava/util/EventListener;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/beans/PropertyChangeListener;

    #@6
    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    #@9
    .line 69
    return-void
.end method

.class public Ljava/beans/PropertyChangeListenerProxy;
.super Ljava/util/EventListenerProxy;
.source "PropertyChangeListenerProxy.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EventListenerProxy<",
        "Ljava/beans/PropertyChangeListener;",
        ">;",
        "Ljava/beans/PropertyChangeListener;"
    }
.end annotation


# instance fields
.field private final greylist-max-o propertyName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 60
    invoke-direct {p0, p2}, Ljava/util/EventListenerProxy;-><init>(Ljava/util/EventListener;)V

    .line 61
    iput-object p1, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist test-api getPropertyName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Ljava/beans/PropertyChangeListenerProxy;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .registers 3
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .line 70
    invoke-virtual {p0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 71
    return-void
.end method

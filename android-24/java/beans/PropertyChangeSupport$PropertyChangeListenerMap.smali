.class final Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;
.super Ljava/beans/ChangeListenerMap;
.source "PropertyChangeSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/beans/PropertyChangeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropertyChangeListenerMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/beans/ChangeListenerMap",
        "<",
        "Ljava/beans/PropertyChangeListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/beans/PropertyChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 506
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/beans/PropertyChangeListener;

    #@3
    sput-object v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->EMPTY:[Ljava/beans/PropertyChangeListener;

    #@5
    .line 505
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 505
    invoke-direct {p0}, Ljava/beans/ChangeListenerMap;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 540
    :goto_0
    instance-of v0, p1, Ljava/beans/PropertyChangeListenerProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 541
    check-cast p1, Ljava/beans/PropertyChangeListenerProxy;

    #@6
    .end local p1    # "listener":Ljava/beans/PropertyChangeListener;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Ljava/beans/PropertyChangeListener;

    #@c
    .restart local p1    # "listener":Ljava/beans/PropertyChangeListener;
    goto :goto_0

    #@d
    .line 543
    :cond_0
    return-object p1
.end method

.method public bridge synthetic extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 1
    .param p1, "listener"    # Ljava/util/EventListener;

    #@0
    .prologue
    .line 539
    check-cast p1, Ljava/beans/PropertyChangeListener;

    #@2
    .end local p1    # "listener":Ljava/util/EventListener;
    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected newArray(I)[Ljava/beans/PropertyChangeListener;
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 518
    if-lez p1, :cond_0

    #@2
    .line 519
    new-array v0, p1, [Ljava/beans/PropertyChangeListener;

    #@4
    .line 518
    :goto_0
    return-object v0

    #@5
    .line 520
    :cond_0
    sget-object v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->EMPTY:[Ljava/beans/PropertyChangeListener;

    #@7
    goto :goto_0
.end method

.method protected bridge synthetic newArray(I)[Ljava/util/EventListener;
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 517
    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->newArray(I)[Ljava/beans/PropertyChangeListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newProxy(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    #@0
    .prologue
    .line 533
    new-instance v0, Ljava/beans/PropertyChangeListenerProxy;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    #@5
    return-object v0
.end method

.method protected bridge synthetic newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/util/EventListener;

    #@0
    .prologue
    .line 532
    check-cast p2, Ljava/beans/PropertyChangeListener;

    #@2
    .end local p2    # "listener":Ljava/util/EventListener;
    invoke-virtual {p0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

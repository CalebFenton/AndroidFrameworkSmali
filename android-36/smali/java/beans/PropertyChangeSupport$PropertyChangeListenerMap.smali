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
        "Ljava/beans/ChangeListenerMap<",
        "Ljava/beans/PropertyChangeListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY:[Ljava/beans/PropertyChangeListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 507
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyChangeListener;

    sput-object v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->EMPTY:[Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 506
    invoke-direct {p0}, Ljava/beans/ChangeListenerMap;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/beans/PropertyChangeSupport-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final greylist-max-o extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .registers 3
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 541
    nop

    :goto_1
    instance-of v0, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v0, :cond_10

    .line 542
    move-object v0, p1

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/beans/PropertyChangeListener;

    goto :goto_1

    .line 544
    :cond_10
    return-object p1
.end method

.method public bridge synthetic blacklist extract(Ljava/util/EventListener;)Ljava/util/EventListener;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 506
    check-cast p1, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o newArray(I)[Ljava/beans/PropertyChangeListener;
    .registers 3
    .param p1, "length"    # I

    .line 519
    if-lez p1, :cond_5

    .line 520
    new-array v0, p1, [Ljava/beans/PropertyChangeListener;

    goto :goto_7

    .line 521
    :cond_5
    sget-object v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->EMPTY:[Ljava/beans/PropertyChangeListener;

    .line 519
    :goto_7
    return-object v0
.end method

.method protected bridge synthetic blacklist newArray(I)[Ljava/util/EventListener;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 506
    invoke-virtual {p0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->newArray(I)[Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o newProxy(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 534
    new-instance v0, Ljava/beans/PropertyChangeListenerProxy;

    invoke-direct {v0, p1, p2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist newProxy(Ljava/lang/String;Ljava/util/EventListener;)Ljava/util/EventListener;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 506
    check-cast p2, Ljava/beans/PropertyChangeListener;

    invoke-virtual {p0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->newProxy(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

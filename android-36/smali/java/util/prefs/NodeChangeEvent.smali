.class public Ljava/util/prefs/NodeChangeEvent;
.super Ljava/util/EventObject;
.source "NodeChangeEvent.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x6ffaaa71714d271dL


# instance fields
.field private greylist-max-o child:Ljava/util/prefs/Preferences;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/prefs/Preferences;
    .param p2, "child"    # Ljava/util/prefs/Preferences;

    .line 61
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 62
    iput-object p2, p0, Ljava/util/prefs/NodeChangeEvent;->child:Ljava/util/prefs/Preferences;

    .line 63
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getChild()Ljava/util/prefs/Preferences;
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/util/prefs/NodeChangeEvent;->child:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public whitelist test-api getParent()Ljava/util/prefs/Preferences;
    .registers 2

    .line 71
    invoke-virtual {p0}, Ljava/util/prefs/NodeChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/Preferences;

    return-object v0
.end method

.class public Ljava/util/prefs/PreferenceChangeEvent;
.super Ljava/util/EventObject;
.source "PreferenceChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0xb03e03d54d2278fL


# instance fields
.field private key:Ljava/lang/String;

.field private newValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/util/prefs/Preferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 72
    iput-object p2, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    #@5
    .line 73
    iput-object p3, p0, Ljava/util/prefs/PreferenceChangeEvent;->newValue:Ljava/lang/String;

    #@7
    .line 70
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    #@0
    .prologue
    .line 119
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    const-string/jumbo v1, "Not serializable."

    #@5
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    const-string/jumbo v1, "Not serializable."

    #@5
    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->newValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNode()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/prefs/Preferences;

    #@6
    return-object v0
.end method

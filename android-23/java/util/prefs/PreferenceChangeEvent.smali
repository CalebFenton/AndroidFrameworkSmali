.class public Ljava/util/prefs/PreferenceChangeEvent;
.super Ljava/util/EventObject;
.source "PreferenceChangeEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xb03e03d54d2278fL


# instance fields
.field private final key:Ljava/lang/String;

.field private final node:Ljava/util/prefs/Preferences;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/util/prefs/Preferences;
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 63
    iput-object p1, p0, Ljava/util/prefs/PreferenceChangeEvent;->node:Ljava/util/prefs/Preferences;

    #@5
    .line 64
    iput-object p2, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    #@7
    .line 65
    iput-object p3, p0, Ljava/util/prefs/PreferenceChangeEvent;->value:Ljava/lang/String;

    #@9
    .line 61
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 102
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNode()Ljava/util/prefs/Preferences;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->node:Ljava/util/prefs/Preferences;

    #@2
    return-object v0
.end method

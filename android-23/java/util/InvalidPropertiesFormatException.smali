.class public Ljava/util/InvalidPropertiesFormatException;
.super Ljava/io/IOException;
.source "InvalidPropertiesFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x6bbbea5ee5f9cb5bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "c"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 57
    invoke-virtual {p0, p1}, Ljava/util/InvalidPropertiesFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6
    .line 56
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
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
            Ljava/io/NotSerializableException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

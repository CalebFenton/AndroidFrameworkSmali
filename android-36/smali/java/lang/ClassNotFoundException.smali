.class public Ljava/lang/ClassNotFoundException;
.super Ljava/lang/ReflectiveOperationException;
.source "ClassNotFoundException.java"


# static fields
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = 0x7f5acd663ed4208eL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "ex"

    const-class v3, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ljava/lang/ClassNotFoundException;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 61
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/ReflectiveOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 129
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "ex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 130
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_12

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/ClassNotFoundException;->setCause(Ljava/lang/Throwable;)V

    .line 133
    :cond_12
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 145
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "ex"

    invoke-super {p0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist test-api getException()Ljava/lang/Throwable;
    .registers 2

    .line 100
    invoke-super {p0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

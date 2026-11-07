.class public Landroid/icu/impl/number/Properties;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x38d634ca98a9d27bL


# instance fields
.field private transient blacklist instance:Landroid/icu/impl/number/DecimalFormatProperties;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_b

    .line 29
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 31
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->readObjectImpl(Ljava/io/ObjectInputStream;)V

    .line 32
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 38
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->writeObjectImpl(Ljava/io/ObjectOutputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getInstance()Landroid/icu/impl/number/DecimalFormatProperties;
    .registers 2

    .line 24
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    return-object v0
.end method

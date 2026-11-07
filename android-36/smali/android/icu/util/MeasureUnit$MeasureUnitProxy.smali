.class final Landroid/icu/util/MeasureUnit$MeasureUnitProxy;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MeasureUnitProxy"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x364588070e86861eL


# instance fields
.field private greylist-max-o subType:Ljava/lang/String;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    .line 1888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    iput-object p1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    .line 1890
    iput-object p2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    .line 1891
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1919
    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1907
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 1908
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    .line 1909
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    .line 1911
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    .line 1912
    .local v0, "extra":I
    if-lez v0, :cond_1b

    .line 1913
    new-array v1, v0, [B

    .line 1914
    .local v1, "extraBytes":[B
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Ljava/io/ObjectInput;->read([BII)I

    .line 1916
    .end local v1    # "extraBytes":[B
    :cond_1b
    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1899
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1900
    iget-object v1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1901
    iget-object v1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1902
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 1903
    return-void
.end method

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
.field private static final serialVersionUID:J = -0x364588070e86861eL


# instance fields
.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1154
    iput-object p1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    #@5
    .line 1155
    iput-object p2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    #@7
    .line 1153
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1170
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    #@4
    .line 1171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    iput-object v2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    #@a
    .line 1172
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    #@10
    .line 1174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    #@13
    move-result v0

    #@14
    .line 1175
    .local v0, "extra":I
    if-lez v0, :cond_0

    #@16
    .line 1176
    new-array v1, v0, [B

    #@18
    .line 1177
    .local v1, "extraBytes":[B
    invoke-interface {p1, v1, v3, v0}, Ljava/io/ObjectInput;->read([BII)I

    #@1b
    .line 1169
    .end local v1    # "extraBytes":[B
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1163
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    #@4
    .line 1164
    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    #@6
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@9
    .line 1165
    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    #@b
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@e
    .line 1166
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    #@11
    .line 1162
    return-void
.end method

.class Landroid/icu/text/MeasureFormat$MeasureProxy;
.super Ljava/lang/Object;
.source "MeasureFormat.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53ba9df5cf4d9362L


# instance fields
.field private formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Landroid/icu/util/ULocale;

.field private numberFormat:Landroid/icu/text/NumberFormat;

.field private subClass:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "subClass"    # I

    #@0
    .prologue
    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1190
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    #@5
    .line 1191
    iput-object p2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@7
    .line 1192
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    #@9
    .line 1193
    iput p4, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    #@b
    .line 1194
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    #@12
    .line 1189
    return-void
.end method

.method private createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    .prologue
    .line 1231
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 1232
    const/4 v1, 0x0

    #@7
    .line 1238
    .local v1, "style":I
    :goto_0
    new-instance v0, Landroid/icu/text/TimeUnitFormat;

    #@9
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    #@b
    invoke-direct {v0, v2, v1}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    #@e
    .line 1239
    .local v0, "result":Landroid/icu/text/TimeUnitFormat;
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    #@10
    invoke-virtual {v0, v2}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    #@13
    .line 1240
    return-object v0

    #@14
    .line 1233
    .end local v0    # "result":Landroid/icu/text/TimeUnitFormat;
    .end local v1    # "style":I
    :cond_0
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 1234
    const/4 v1, 0x1

    #@1b
    .restart local v1    # "style":I
    goto :goto_0

    #@1c
    .line 1236
    .end local v1    # "style":I
    :cond_1
    new-instance v2, Ljava/io/InvalidObjectException;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "Bad width: "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    iget-object v4, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@37
    throw v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1252
    new-instance v0, Ljava/io/InvalidObjectException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Unknown subclass: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1246
    :pswitch_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    #@23
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@25
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    #@27
    invoke-static {v0, v1, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 1248
    :pswitch_1
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat$MeasureProxy;->createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 1250
    :pswitch_2
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    #@33
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    #@35
    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@38
    return-object v0

    #@39
    .line 1244
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1212
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    #@3
    .line 1213
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    #@d
    .line 1214
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    #@10
    move-result v0

    #@11
    and-int/lit16 v0, v0, 0xff

    #@13
    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->-wrap0(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@19
    .line 1215
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/icu/text/NumberFormat;

    #@1f
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    #@21
    .line 1216
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    #@23
    if-nez v0, :cond_0

    #@25
    .line 1217
    new-instance v0, Ljava/io/InvalidObjectException;

    #@27
    const-string/jumbo v1, "Missing number format."

    #@2a
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 1219
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    #@31
    move-result v0

    #@32
    and-int/lit16 v0, v0, 0xff

    #@34
    iput v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    #@36
    .line 1223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/util/HashMap;

    #@3c
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    #@3e
    .line 1224
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    #@40
    if-nez v0, :cond_1

    #@42
    .line 1225
    new-instance v0, Ljava/io/InvalidObjectException;

    #@44
    const-string/jumbo v1, "Missing optional values map."

    #@47
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 1211
    :cond_1
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1202
    const/4 v0, 0x0

    #@1
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    #@4
    .line 1203
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    #@6
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@d
    .line 1204
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@f
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    #@12
    move-result v0

    #@13
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    #@16
    .line 1205
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    #@18
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@1b
    .line 1206
    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    #@1d
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    #@20
    .line 1207
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    #@22
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    #@25
    .line 1201
    return-void
.end method

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
.field private static final whitelist serialVersionUID:J = -0x53ba9df5cf4d9362L


# instance fields
.field private greylist-max-o formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private greylist-max-o keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o locale:Landroid/icu/util/ULocale;

.field private greylist-max-o numberFormat:Landroid/icu/text/NumberFormat;

.field private greylist-max-o subClass:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "subClass"    # I

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    .line 939
    iput-object p2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 940
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 941
    iput p4, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    .line 942
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    .line 943
    return-void
.end method

.method private greylist-max-o createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 981
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_8

    .line 982
    const/4 v0, 0x0

    .local v0, "style":I
    goto :goto_f

    .line 983
    .end local v0    # "style":I
    :cond_8
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_1c

    .line 984
    const/4 v0, 0x1

    .line 988
    .restart local v0    # "style":I
    :goto_f
    new-instance v1, Landroid/icu/text/TimeUnitFormat;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v1, v2, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 989
    .local v1, "result":Landroid/icu/text/TimeUnitFormat;
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, v2}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    .line 990
    return-object v1

    .line 986
    .end local v0    # "style":I
    .end local v1    # "result":Landroid/icu/text/TimeUnitFormat;
    :cond_1c
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 994
    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    packed-switch v0, :pswitch_data_38

    .line 1002
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :pswitch_20
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0

    .line 998
    :pswitch_27
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat$MeasureProxy;->createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;

    move-result-object v0

    return-object v0

    .line 996
    :pswitch_2c
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v0, v1, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 962
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 963
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    .line 964
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->-$$Nest$smfromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 965
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 966
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v0, :cond_42

    .line 969
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    .line 973
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    .line 974
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    if-eqz v0, :cond_3a

    .line 977
    return-void

    .line 975
    :cond_3a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Missing optional values map."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_42
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Missing number format."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 952
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 954
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 955
    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 956
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 957
    return-void
.end method

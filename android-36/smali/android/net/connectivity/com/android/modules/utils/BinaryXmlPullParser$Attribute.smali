.class Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;
.super Ljava/lang/Object;
.source "BinaryXmlPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist valueBytes:[B

.field public blacklist valueDouble:D

.field public blacklist valueFloat:F

.field public blacklist valueInt:I

.field public blacklist valueLong:J

.field public blacklist valueString:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getValueBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 885
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_62

    .line 901
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :sswitch_22
    return v1

    .line 887
    :sswitch_23
    return v2

    .line 892
    :sswitch_24
    const-string v0, "true"

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 893
    return v2

    .line 894
    :cond_2f
    const-string v0, "false"

    iget-object v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 895
    return v1

    .line 897
    :cond_3a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_62
    .sparse-switch
        0x20 -> :sswitch_24
        0x30 -> :sswitch_24
        0xc0 -> :sswitch_23
        0xd0 -> :sswitch_22
    .end sparse-switch
.end method

.method public blacklist getValueBytesBase64()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 766
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_54

    .line 780
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :sswitch_20
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    return-object v0

    .line 775
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b

    return-object v0

    .line 776
    :catch_2b
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_51
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_54
    .sparse-switch
        0x10 -> :sswitch_51
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0x40 -> :sswitch_20
        0x50 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueBytesHex()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 747
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_52

    .line 761
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :sswitch_20
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    return-object v0

    .line 756
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    return-object v0

    .line 757
    :catch_2a
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_50
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_52
    .sparse-switch
        0x10 -> :sswitch_50
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0x40 -> :sswitch_20
        0x50 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueDouble()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 869
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_50

    .line 880
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :sswitch_20
    iget-wide v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueDouble:D

    return-wide v0

    .line 875
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    return-wide v0

    .line 876
    :catch_2a
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_50
    .sparse-switch
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0xb0 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueFloat()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 853
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_50

    .line 864
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :sswitch_20
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueFloat:F

    return v0

    .line 859
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    return v0

    .line 860
    :catch_2a
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_50
    .sparse-switch
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0xa0 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 785
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_50

    .line 797
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :sswitch_20
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    return v0

    .line 792
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    return v0

    .line 793
    :catch_2a
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_50
    .sparse-switch
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0x60 -> :sswitch_20
        0x70 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueIntHex()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 802
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_52

    .line 814
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :sswitch_20
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    return v0

    .line 809
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    return v0

    .line 810
    :catch_2c
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_52
    .sparse-switch
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0x60 -> :sswitch_20
        0x70 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 819
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_50

    .line 831
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :sswitch_20
    iget-wide v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    return-wide v0

    .line 826
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    return-wide v0

    .line 827
    :catch_2a
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_50
    .sparse-switch
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0x80 -> :sswitch_20
        0x90 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueLongHex()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 836
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v0, :sswitch_data_52

    .line 848
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conversion from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :sswitch_20
    iget-wide v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    return-wide v0

    .line 843
    :sswitch_23
    :try_start_23
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    return-wide v0

    .line 844
    :catch_2c
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_52
    .sparse-switch
        0x20 -> :sswitch_23
        0x30 -> :sswitch_23
        0x80 -> :sswitch_20
        0x90 -> :sswitch_20
    .end sparse-switch
.end method

.method public blacklist getValueString()Ljava/lang/String;
    .registers 5

    .line 714
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->type:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_4c

    .line 742
    return-object v2

    .line 739
    :sswitch_9
    const-string v0, "false"

    return-object v0

    .line 737
    :sswitch_c
    const-string v0, "true"

    return-object v0

    .line 735
    :sswitch_f
    iget-wide v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueDouble:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 733
    :sswitch_16
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 731
    :sswitch_1d
    iget-wide v2, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 729
    :sswitch_24
    iget-wide v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 727
    :sswitch_2b
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :sswitch_32
    iget v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueInt:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 723
    :sswitch_39
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 721
    :sswitch_41
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    invoke-static {v0}, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :sswitch_48
    iget-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    return-object v0

    .line 716
    :sswitch_4b
    return-object v2

    :sswitch_data_4c
    .sparse-switch
        0x10 -> :sswitch_4b
        0x20 -> :sswitch_48
        0x30 -> :sswitch_48
        0x40 -> :sswitch_41
        0x50 -> :sswitch_39
        0x60 -> :sswitch_32
        0x70 -> :sswitch_2b
        0x80 -> :sswitch_24
        0x90 -> :sswitch_1d
        0xa0 -> :sswitch_16
        0xb0 -> :sswitch_f
        0xc0 -> :sswitch_c
        0xd0 -> :sswitch_9
    .end sparse-switch
.end method

.method public blacklist reset()V
    .registers 2

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    .line 710
    iput-object v0, p0, Landroid/net/connectivity/com/android/modules/utils/BinaryXmlPullParser$Attribute;->valueBytes:[B

    .line 711
    return-void
.end method

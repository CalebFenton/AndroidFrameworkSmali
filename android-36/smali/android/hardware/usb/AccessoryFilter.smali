.class public Landroid/hardware/usb/AccessoryFilter;
.super Ljava/lang/Object;
.source "AccessoryFilter.java"


# instance fields
.field public final greylist-max-o mManufacturer:Ljava/lang/String;

.field public final greylist-max-o mModel:Ljava/lang/String;

.field public final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/AccessoryFilter;)V
    .registers 3
    .param p1, "filter"    # Landroid/hardware/usb/AccessoryFilter;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static greylist-max-o read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "manufacturer":Ljava/lang/String;
    const/4 v1, 0x0

    .line 70
    .local v1, "model":Ljava/lang/String;
    const/4 v2, 0x0

    .line 72
    .local v2, "version":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 73
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v3, :cond_32

    .line 74
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "value":Ljava/lang/String;
    const-string v7, "manufacturer"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 78
    move-object v0, v6

    goto :goto_2f

    .line 79
    :cond_1c
    const-string v7, "model"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 80
    move-object v1, v6

    goto :goto_2f

    .line 81
    :cond_26
    const-string v7, "version"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 82
    move-object v2, v6

    .line 73
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2f
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 85
    .end local v4    # "i":I
    :cond_32
    new-instance v4, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v4, v0, v1, v2}, Landroid/hardware/usb/AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public greylist-max-o contains(Landroid/hardware/usb/AccessoryFilter;)Z
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/AccessoryFilter;

    .line 116
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 117
    return v1

    .line 119
    :cond_10
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 120
    :cond_1f
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 162
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const-string v5, "manufacturer"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 165
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    const-string v5, "model"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 166
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    const-string v5, "version"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 168
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 169
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v0, :cond_e

    goto :goto_68

    .line 129
    :cond_e
    instance-of v0, p1, Landroid/hardware/usb/AccessoryFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    .line 130
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/AccessoryFilter;

    .line 131
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v4, v0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    nop

    .line 131
    :goto_37
    return v1

    .line 135
    .end local v0    # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_38
    instance-of v0, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_67

    .line 136
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 137
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    move v1, v2

    goto :goto_66

    :cond_65
    nop

    .line 137
    :goto_66
    return v1

    .line 141
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_67
    return v1

    .line 127
    :cond_68
    :goto_68
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 146
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 147
    :goto_d
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_19

    :cond_13
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    xor-int/2addr v0, v2

    .line 148
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_1f

    goto :goto_25

    :cond_1f
    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_25
    xor-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public greylist-max-o matches(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .param p1, "acc"    # Landroid/hardware/usb/UsbAccessory;

    .line 103
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 104
    :cond_12
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 105
    :cond_23
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    const-string v1, "usb-accessory"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 91
    const-string v2, "manufacturer"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    :cond_11
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 94
    const-string v2, "model"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    :cond_1c
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 97
    const-string v2, "version"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    :cond_27
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    return-void
.end method

.class public Landroid/audio/policy/configuration/V7_0/Gains$Gain;
.super Ljava/lang/Object;
.source "Gains.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Gains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gain"
.end annotation


# instance fields
.field private blacklist channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

.field private blacklist defaultValueMB:Ljava/lang/Integer;

.field private blacklist maxRampMs:Ljava/lang/Integer;

.field private blacklist maxValueMB:Ljava/lang/Integer;

.field private blacklist minRampMs:Ljava/lang/Integer;

.field private blacklist minValueMB:Ljava/lang/Integer;

.field private blacklist mode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist name:Ljava/lang/String;

.field private blacklist stepValueMB:Ljava/lang/Integer;

.field private blacklist useForVolume:Ljava/lang/Boolean;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains$Gain;
    .registers 10
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;-><init>()V

    .line 192
    .local v0, "_instance":Landroid/audio/policy/configuration/V7_0/Gains$Gain;
    const/4 v1, 0x0

    .line 193
    .local v1, "_raw":Ljava/lang/String;
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_14

    .line 195
    move-object v2, v1

    .line 196
    .local v2, "_value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setName(Ljava/lang/String;)V

    .line 198
    .end local v2    # "_value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v2, "mode"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_3b

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, "_value":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioGainMode;>;"
    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v5, :cond_38

    aget-object v7, v4, v6

    .line 202
    .local v7, "_token":Ljava/lang/String;
    invoke-static {v7}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v7    # "_token":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 204
    :cond_38
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMode(Ljava/util/List;)V

    .line 206
    .end local v2    # "_value":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioGainMode;>;"
    :cond_3b
    const-string v2, "channel_mask"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_4a

    .line 208
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v2

    .line 209
    .local v2, "_value":Landroid/audio/policy/configuration/V7_0/AudioChannelMask;
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setChannel_mask(Landroid/audio/policy/configuration/V7_0/AudioChannelMask;)V

    .line 211
    .end local v2    # "_value":Landroid/audio/policy/configuration/V7_0/AudioChannelMask;
    :cond_4a
    const-string/jumbo v2, "minValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_5a

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "_value":I
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMinValueMB(I)V

    .line 216
    .end local v2    # "_value":I
    :cond_5a
    const-string/jumbo v2, "maxValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_6a

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 219
    .restart local v2    # "_value":I
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMaxValueMB(I)V

    .line 221
    .end local v2    # "_value":I
    :cond_6a
    const-string v2, "defaultValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_79

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 224
    .restart local v2    # "_value":I
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setDefaultValueMB(I)V

    .line 226
    .end local v2    # "_value":I
    :cond_79
    const-string/jumbo v2, "stepValueMB"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_89

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 229
    .restart local v2    # "_value":I
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setStepValueMB(I)V

    .line 231
    .end local v2    # "_value":I
    :cond_89
    const-string/jumbo v2, "minRampMs"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_99

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    .restart local v2    # "_value":I
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMinRampMs(I)V

    .line 236
    .end local v2    # "_value":I
    :cond_99
    const-string/jumbo v2, "maxRampMs"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_a9

    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 239
    .restart local v2    # "_value":I
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMaxRampMs(I)V

    .line 241
    .end local v2    # "_value":I
    :cond_a9
    const-string/jumbo v2, "useForVolume"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_b9

    .line 243
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 244
    .local v2, "_value":Z
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setUseForVolume(Z)V

    .line 246
    .end local v2    # "_value":Z
    :cond_b9
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 247
    return-object v0
.end method


# virtual methods
.method public blacklist getChannel_mask()Landroid/audio/policy/configuration/V7_0/AudioChannelMask;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    return-object v0
.end method

.method public blacklist getDefaultValueMB()I
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 102
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxRampMs()I
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxValueMB()I
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMinRampMs()I
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 138
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMinValueMB()I
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMode()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    .line 35
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStepValueMB()I
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 120
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getUseForVolume()Z
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 174
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasChannel_mask()Z
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    if-nez v0, :cond_6

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasDefaultValueMB()Z
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxRampMs()Z
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 163
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMaxValueMB()Z
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMinRampMs()Z
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMinValueMB()Z
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMode()Z
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    if-nez v0, :cond_6

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 21
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 22
    const/4 v0, 0x0

    return v0

    .line 24
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasStepValueMB()Z
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasUseForVolume()Z
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 181
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setChannel_mask(Landroid/audio/policy/configuration/V7_0/AudioChannelMask;)V
    .registers 2
    .param p1, "channel_mask"    # Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    .line 61
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    .line 62
    return-void
.end method

.method public blacklist setDefaultValueMB(I)V
    .registers 3
    .param p1, "defaultValueMB"    # I

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    .line 116
    return-void
.end method

.method public blacklist setMaxRampMs(I)V
    .registers 3
    .param p1, "maxRampMs"    # I

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    .line 170
    return-void
.end method

.method public blacklist setMaxValueMB(I)V
    .registers 3
    .param p1, "maxValueMB"    # I

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    .line 98
    return-void
.end method

.method public blacklist setMinRampMs(I)V
    .registers 3
    .param p1, "minRampMs"    # I

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    .line 152
    return-void
.end method

.method public blacklist setMinValueMB(I)V
    .registers 3
    .param p1, "minValueMB"    # I

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public blacklist setMode(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "mode":Ljava/util/List;, "Ljava/util/List<Landroid/audio/policy/configuration/V7_0/AudioGainMode;>;"
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    .line 47
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public blacklist setStepValueMB(I)V
    .registers 3
    .param p1, "stepValueMB"    # I

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public blacklist setUseForVolume(Z)V
    .registers 3
    .param p1, "useForVolume"    # Z

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    .line 188
    return-void
.end method

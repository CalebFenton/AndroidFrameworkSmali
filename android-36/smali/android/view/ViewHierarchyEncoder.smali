.class public Landroid/view/ViewHierarchyEncoder;
.super Ljava/lang/Object;
.source "ViewHierarchyEncoder.java"


# static fields
.field private static final greylist-max-o SIG_BOOLEAN:B = 0x5at

.field private static final greylist-max-o SIG_BYTE:B = 0x42t

.field private static final greylist-max-o SIG_DOUBLE:B = 0x44t

.field private static final greylist-max-o SIG_END_MAP:S = 0x0s

.field private static final greylist-max-o SIG_FLOAT:B = 0x46t

.field private static final greylist-max-o SIG_INT:B = 0x49t

.field private static final greylist-max-o SIG_LONG:B = 0x4at

.field private static final greylist-max-o SIG_MAP:B = 0x4dt

.field private static final greylist-max-o SIG_SHORT:B = 0x53t

.field private static final greylist-max-o SIG_STRING:B = 0x52t


# instance fields
.field private greylist-max-o mCharset:Ljava/nio/charset/Charset;

.field private greylist-max-o mPropertyId:S

.field private final greylist-max-o mPropertyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mStream:Ljava/io/DataOutputStream;

.field private blacklist mUserPropertiesEnabled:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    .line 66
    const/4 v0, 0x1

    iput-short v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    .line 67
    const-string/jumbo v1, "utf-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    .line 69
    iput-boolean v0, p0, Landroid/view/ViewHierarchyEncoder;->mUserPropertiesEnabled:Z

    .line 72
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    .line 73
    return-void
.end method

.method private greylist-max-o createPropertyIndex(Ljava/lang/String;)S
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 150
    .local v0, "index":Ljava/lang/Short;
    if-nez v0, :cond_1a

    .line 151
    iget-short v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 152
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method private greylist-max-o endPropertyMap()V
    .registers 2

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 168
    return-void
.end method

.method private greylist-max-o startPropertyMap()V
    .registers 3

    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 163
    goto :goto_9

    .line 161
    :catch_8
    move-exception v0

    .line 164
    :goto_9
    return-void
.end method

.method private greylist-max-o writeBoolean(Z)V
    .registers 4
    .param p1, "v"    # Z

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 173
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 176
    goto :goto_13

    .line 174
    :catch_12
    move-exception v0

    .line 177
    :goto_13
    return-void
.end method

.method private greylist-max-o writeFloat(F)V
    .registers 4
    .param p1, "v"    # F

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 200
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 203
    goto :goto_e

    .line 201
    :catch_d
    move-exception v0

    .line 204
    :goto_e
    return-void
.end method

.method private greylist-max-o writeInt(I)V
    .registers 4
    .param p1, "i"    # I

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 191
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 194
    goto :goto_e

    .line 192
    :catch_d
    move-exception v0

    .line 195
    :goto_e
    return-void
.end method

.method private greylist-max-o writeShort(S)V
    .registers 4
    .param p1, "s"    # S

    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 182
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 185
    goto :goto_e

    .line 183
    :catch_d
    move-exception v0

    .line 186
    :goto_e
    return-void
.end method

.method private greylist-max-o writeString(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .line 207
    if-nez p1, :cond_4

    .line 208
    const-string p1, ""

    .line 212
    :cond_4
    :try_start_4
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 213
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 215
    .local v0, "bytes":[B
    array-length v1, v0

    const/16 v2, 0x7fff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    .line 216
    .local v1, "len":S
    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 218
    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_25

    .line 221
    .end local v0    # "bytes":[B
    .end local v1    # "len":S
    goto :goto_26

    .line 219
    :catch_25
    move-exception v0

    .line 222
    :goto_26
    return-void
.end method


# virtual methods
.method public greylist addProperty(Ljava/lang/String;F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # F

    .line 119
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 120
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeFloat(F)V

    .line 121
    return-void
.end method

.method public greylist addProperty(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # I

    .line 113
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 114
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeInt(I)V

    .line 115
    return-void
.end method

.method public greylist addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 126
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public greylist-max-o addProperty(Ljava/lang/String;S)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # S

    .line 107
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 108
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 109
    return-void
.end method

.method public greylist addProperty(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .line 102
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 103
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeBoolean(Z)V

    .line 104
    return-void
.end method

.method public greylist-max-o addPropertyKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 146
    return-void
.end method

.method public blacklist addUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 135
    iget-boolean v0, p0, Landroid/view/ViewHierarchyEncoder;->mUserPropertiesEnabled:Z

    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_7
    return-void
.end method

.method public greylist-max-o beginObject(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta:__name__"

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "meta:__hash__"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public greylist-max-o endObject()V
    .registers 1

    .line 86
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    .line 87
    return-void
.end method

.method public greylist-max-o endStream()V
    .registers 4

    .line 91
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    .line 92
    const-string v0, "__name__"

    const-string v1, "propertyIndex"

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Short;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    .line 96
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Short;>;"
    goto :goto_14

    .line 97
    :cond_37
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    .line 98
    return-void
.end method

.method public blacklist setUserPropertiesEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 76
    iput-boolean p1, p0, Landroid/view/ViewHierarchyEncoder;->mUserPropertiesEnabled:Z

    .line 77
    return-void
.end method

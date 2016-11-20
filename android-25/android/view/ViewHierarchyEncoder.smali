.class public Landroid/view/ViewHierarchyEncoder;
.super Ljava/lang/Object;
.source "ViewHierarchyEncoder.java"


# static fields
.field private static final SIG_BOOLEAN:B = 0x5at

.field private static final SIG_BYTE:B = 0x42t

.field private static final SIG_DOUBLE:B = 0x44t

.field private static final SIG_END_MAP:S = 0x0s

.field private static final SIG_FLOAT:B = 0x46t

.field private static final SIG_INT:B = 0x49t

.field private static final SIG_LONG:B = 0x4at

.field private static final SIG_MAP:B = 0x4dt

.field private static final SIG_SHORT:B = 0x53t

.field private static final SIG_STRING:B = 0x52t


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mPropertyId:S

.field private final mPropertyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/util/HashMap;

    #@5
    const/16 v1, 0xc8

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    #@c
    .line 65
    const/4 v0, 0x1

    #@d
    iput-short v0, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    #@f
    .line 66
    const-string/jumbo v0, "utf-8"

    #@12
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    #@18
    .line 69
    new-instance v0, Ljava/io/DataOutputStream;

    #@1a
    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1d
    iput-object v0, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@1f
    .line 68
    return-void
.end method

.method private createPropertyIndex(Ljava/lang/String;)S
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Short;

    #@8
    .line 128
    .local v0, "index":Ljava/lang/Short;
    if-nez v0, :cond_0

    #@a
    .line 129
    iget-short v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    #@c
    add-int/lit8 v2, v1, 0x1

    #@e
    int-to-short v2, v2

    #@f
    iput-short v2, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyId:S

    #@11
    int-to-short v1, v1

    #@12
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@15
    move-result-object v0

    #@16
    .line 130
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    #@18
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    #@1e
    move-result v1

    #@1f
    return v1
.end method

.method private endPropertyMap()V
    .locals 1

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@4
    .line 144
    return-void
.end method

.method private startPropertyMap()V
    .locals 3

    #@0
    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@2
    const/16 v2, 0x4d

    #@4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 136
    :goto_0
    return-void

    #@8
    .line 139
    :catch_0
    move-exception v0

    #@9
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private writeBoolean(Z)V
    .locals 3
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@2
    const/16 v2, 0x5a

    #@4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    #@7
    .line 151
    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@9
    if-eqz p1, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 148
    :goto_1
    return-void

    #@10
    .line 151
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0

    #@12
    .line 152
    :catch_0
    move-exception v0

    #@13
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private writeFloat(F)V
    .locals 3
    .param p1, "v"    # F

    #@0
    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@2
    const/16 v2, 0x46

    #@4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    #@7
    .line 178
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@9
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 175
    :goto_0
    return-void

    #@d
    .line 179
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private writeInt(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@2
    const/16 v2, 0x49

    #@4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    #@7
    .line 169
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@9
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 166
    :goto_0
    return-void

    #@d
    .line 170
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private writeShort(S)V
    .locals 3
    .param p1, "s"    # S

    #@0
    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@2
    const/16 v2, 0x53

    #@4
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    #@7
    .line 160
    iget-object v1, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@9
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 157
    :goto_0
    return-void

    #@d
    .line 161
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    if-nez p1, :cond_0

    #@2
    .line 186
    const-string/jumbo p1, ""

    #@5
    .line 190
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@7
    const/16 v4, 0x52

    #@9
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write(I)V

    #@c
    .line 191
    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mCharset:Ljava/nio/charset/Charset;

    #@e
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@11
    move-result-object v0

    #@12
    .line 193
    .local v0, "bytes":[B
    array-length v3, v0

    #@13
    const/16 v4, 0x7fff

    #@15
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v3

    #@19
    int-to-short v2, v3

    #@1a
    .line 194
    .local v2, "len":S
    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@1c
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@1f
    .line 196
    iget-object v3, p0, Landroid/view/ViewHierarchyEncoder;->mStream:Ljava/io/DataOutputStream;

    #@21
    const/4 v4, 0x0

    #@22
    invoke-virtual {v3, v0, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 184
    .end local v0    # "bytes":[B
    .end local v2    # "len":S
    :goto_0
    return-void

    #@26
    .line 197
    :catch_0
    move-exception v1

    #@27
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # F

    #@0
    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@7
    .line 110
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeFloat(F)V

    #@a
    .line 108
    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # I

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@7
    .line 105
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeInt(I)V

    #@a
    .line 103
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@7
    .line 115
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    #@a
    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # S

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@7
    .line 100
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@a
    .line 98
    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Z

    #@0
    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@7
    .line 95
    invoke-direct {p0, p2}, Landroid/view/ViewHierarchyEncoder;->writeBoolean(Z)V

    #@a
    .line 93
    return-void
.end method

.method public addPropertyKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/view/ViewHierarchyEncoder;->createPropertyIndex(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@7
    .line 122
    return-void
.end method

.method public beginObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    #@3
    .line 74
    const-string/jumbo v0, "meta:__name__"

    #@6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 75
    const-string/jumbo v0, "meta:__hash__"

    #@14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@1b
    .line 72
    return-void
.end method

.method public endObject()V
    .locals 0

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    #@3
    .line 78
    return-void
.end method

.method public endStream()V
    .locals 4

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->startPropertyMap()V

    #@3
    .line 85
    const-string/jumbo v2, "__name__"

    #@6
    const-string/jumbo v3, "propertyIndex"

    #@9
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 86
    iget-object v2, p0, Landroid/view/ViewHierarchyEncoder;->mPropertyNames:Ljava/util/Map;

    #@e
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@11
    move-result-object v2

    #@12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 87
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Short;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/lang/Short;

    #@28
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    #@2b
    move-result v2

    #@2c
    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeShort(S)V

    #@2f
    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Ljava/lang/String;

    #@35
    invoke-direct {p0, v2}, Landroid/view/ViewHierarchyEncoder;->writeString(Ljava/lang/String;)V

    #@38
    goto :goto_0

    #@39
    .line 90
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Short;>;"
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewHierarchyEncoder;->endPropertyMap()V

    #@3c
    .line 82
    return-void
.end method

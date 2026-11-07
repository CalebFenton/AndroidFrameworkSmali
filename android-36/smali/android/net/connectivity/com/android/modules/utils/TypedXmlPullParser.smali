.class public interface abstract Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;
.super Ljava/lang/Object;
.source "TypedXmlPullParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# virtual methods
.method public abstract blacklist getAttributeBoolean(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 191
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 320
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    .line 323
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 324
    :catch_d
    move-exception v1

    .line 325
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public abstract blacklist getAttributeBytesBase64(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 128
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # [B

    .line 215
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p3

    .line 218
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 219
    :catch_d
    move-exception v1

    .line 220
    .local v1, "ignored":Ljava/lang/Exception;
    return-object p3
.end method

.method public abstract blacklist getAttributeBytesHex(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 119
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # [B

    .line 200
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p3

    .line 203
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 204
    :catch_d
    move-exception v1

    .line 205
    .local v1, "ignored":Ljava/lang/Exception;
    return-object p3
.end method

.method public abstract blacklist getAttributeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 182
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # D

    .line 305
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-wide p3

    .line 308
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    .line 309
    :catch_d
    move-exception v1

    .line 310
    .local v1, "ignored":Ljava/lang/Exception;
    return-wide p3
.end method

.method public abstract blacklist getAttributeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 173
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 290
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    .line 293
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 294
    :catch_d
    move-exception v1

    .line 295
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public blacklist getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 34
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 35
    .local v0, "namespaceNull":Z
    :goto_5
    invoke-interface {p0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v1

    .line 36
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_26

    .line 37
    if-nez v0, :cond_18

    invoke-interface {p0, v2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 38
    :cond_18
    invoke-interface {p0, v2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 39
    return v2

    .line 36
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 42
    .end local v2    # "i":I
    :cond_26
    const/4 v2, -0x1

    return v2
.end method

.method public blacklist getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 51
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 55
    return v0

    .line 53
    :cond_8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract blacklist getAttributeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 137
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 230
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    .line 233
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 234
    :catch_d
    move-exception v1

    .line 235
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public abstract blacklist getAttributeIntHex(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 146
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 245
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    .line 248
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 249
    :catch_d
    move-exception v1

    .line 250
    .local v1, "ignored":Ljava/lang/Exception;
    return p3
.end method

.method public abstract blacklist getAttributeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 155
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 260
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-wide p3

    .line 263
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    .line 264
    :catch_d
    move-exception v1

    .line 265
    .local v1, "ignored":Ljava/lang/Exception;
    return-wide p3
.end method

.method public abstract blacklist getAttributeLongHex(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public blacklist getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 164
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 275
    invoke-interface {p0, p1, p2}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-wide p3

    .line 278
    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    .line 279
    :catch_d
    move-exception v1

    .line 280
    .local v1, "ignored":Ljava/lang/Exception;
    return-wide p3
.end method

.class public final Landroid/os/PersistableBundle;
.super Landroid/os/BaseBundle;
.source "PersistableBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/util/XmlUtils$WriteMapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/os/PersistableBundle;

.field private static final blacklist TAG:Ljava/lang/String; = "PersistableBundle"

.field private static final greylist-max-o TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 64
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 251
    new-instance v0, Landroid/os/PersistableBundle$1;

    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 92
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 94
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;Z)V

    .line 126
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Bundle;Z)V
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "throwException"    # Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Bundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    .line 130
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    .line 170
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 171
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 106
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    .line 107
    iget v0, p1, Landroid/os/PersistableBundle;->mFlags:I

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 108
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PersistableBundle;Z)V
    .registers 3
    .param p1, "from"    # Landroid/os/PersistableBundle;
    .param p2, "deep"    # Z

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 183
    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/ArrayMap;Z)V
    .registers 9
    .param p2, "throwException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 139
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/util/ArrayMap;)V

    .line 146
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 147
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_7e

    .line 148
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/util/ArrayMap;

    if-eqz v3, :cond_2b

    .line 151
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    move-object v5, v2

    check-cast v5, Landroid/util/ArrayMap;

    invoke-direct {v4, v5, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 153
    :cond_2b
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_3d

    .line 154
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    new-instance v4, Landroid/os/PersistableBundle;

    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, v5, p2}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;Z)V

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 155
    :cond_3d
    invoke-static {v2}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad value in PersistableBundle key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "errorMsg":Ljava/lang/String;
    if-nez p2, :cond_75

    .line 161
    const-string v4, "PersistableBundle"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v4, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_7b

    .line 159
    :cond_75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 166
    .end local v1    # "i":I
    :cond_7e
    return-void
.end method

.method public static greylist-max-o forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 191
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    .line 192
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v0
.end method

.method public static greylist-max-o isValidType(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_31

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_31

    instance-of v0, p0, [I

    if-nez v0, :cond_31

    instance-of v0, p0, [J

    if-nez v0, :cond_31

    instance-of v0, p0, [D

    if-nez v0, :cond_31

    instance-of v0, p0, [Ljava/lang/String;

    if-nez v0, :cond_31

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_31

    if-eqz p0, :cond_31

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_31

    instance-of v0, p0, [Z

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    return v0
.end method

.method public static whitelist readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 475
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 476
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 477
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    .line 478
    .end local v0    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    :catch_15
    move-exception v0

    .line 479
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;
    .registers 8
    .param p0, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 379
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 380
    .local v0, "outerDepth":I
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "startTag":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 383
    .local v3, "tagName":[Ljava/lang/String;
    :cond_b
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "event":I
    if-eq v4, v2, :cond_2e

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1b

    .line 384
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v0, :cond_2e

    .line 385
    :cond_1b
    const/4 v4, 0x2

    if-ne v5, v4, :cond_b

    .line 388
    new-instance v2, Landroid/os/PersistableBundle;

    new-instance v4, Landroid/os/PersistableBundle$MyReadMapCallback;

    invoke-direct {v4}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    .line 389
    invoke-static {p0, v1, v3, v4}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;Z)V

    .line 388
    return-object v2

    .line 394
    :cond_2e
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    return-object v2
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .registers 2
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 373
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 202
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public whitelist deepCopy()Landroid/os/PersistableBundle;
    .registers 3

    .line 213
    new-instance v0, Landroid/os/PersistableBundle;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;Z)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 428
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 430
    .local v0, "token":J
    iget-object v2, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v2, :cond_22

    .line 431
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v2

    const-wide v3, 0x10500000001L

    if-eqz v2, :cond_18

    .line 432
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 434
    :cond_18
    iget-object v2, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_30

    .line 437
    :cond_22
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 440
    :goto_30
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 441
    return-void
.end method

.method public whitelist getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 239
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 241
    return-object v1

    .line 244
    :cond_d
    :try_start_d
    move-object v2, v0

    check-cast v2, Landroid/os/PersistableBundle;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_10} :catch_11

    return-object v2

    .line 245
    :catch_11
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 247
    return-object v1
.end method

.method public blacklist isBundleContentsWithinLengthLimit(I)Z
    .registers 9
    .param p1, "limit"    # I

    .line 308
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 309
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 310
    return v1

    .line 312
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_6b

    .line 313
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_2a

    .line 314
    return v3

    .line 316
    :cond_2a
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 317
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_3e

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, p1, :cond_3e

    .line 318
    return v3

    .line 319
    :cond_3e
    instance-of v4, v2, [Ljava/lang/String;

    if-eqz v4, :cond_5a

    .line 320
    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    .line 321
    .local v4, "stringArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_46
    array-length v6, v4

    if-ge v5, v6, :cond_59

    .line 322
    aget-object v6, v4, v5

    if-eqz v6, :cond_56

    aget-object v6, v4, v5

    .line 323
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, p1, :cond_56

    .line 324
    return v3

    .line 321
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 327
    .end local v4    # "stringArray":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_59
    goto :goto_68

    :cond_5a
    instance-of v4, v2, Landroid/os/PersistableBundle;

    if-eqz v4, :cond_68

    move-object v4, v2

    check-cast v4, Landroid/os/PersistableBundle;

    .line 328
    invoke-virtual {v4, p1}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result v4

    if-nez v4, :cond_68

    .line 329
    return v3

    .line 312
    .end local v2    # "value":Ljava/lang/Object;
    :cond_68
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 332
    .end local v0    # "i":I
    :cond_6b
    return v1
.end method

.method public whitelist putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/PersistableBundle;

    .line 224
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 225
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    .line 287
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_4b

    .line 288
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "value":Ljava/lang/Object;
    invoke-static {v1}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping bad data before persisting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    .line 291
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    const-string v3, "PersistableBundle"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 287
    .end local v1    # "value":Ljava/lang/Object;
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 295
    .end local v0    # "i":I
    :cond_4b
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 296
    return-void
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 280
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 281
    return-void
.end method

.method public declared-synchronized greylist-max-o toShortString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 416
    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_2b

    .line 417
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 418
    const-string v0, "EMPTY_PARCEL"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_33

    monitor-exit p0

    return-object v0

    .line 420
    .end local p0    # "this":Landroid/os/PersistableBundle;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_33

    monitor-exit p0

    return-object v0

    .line 423
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_33

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_30

    .line 404
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 405
    const-string v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_51

    monitor-exit p0

    return-object v0

    .line 407
    .end local p0    # "this":Landroid/os/PersistableBundle;
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_51

    .line 407
    monitor-exit p0

    return-object v0

    .line 411
    :cond_30
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistableBundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object v0

    .line 402
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v0

    .line 364
    .local v0, "oldAllowFds":Z
    :try_start_5
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_d
    move-exception v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 367
    throw v1
.end method

.method public whitelist writeToStream(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 452
    .local v0, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x0

    const-string v2, "bundle"

    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_1e

    .line 458
    nop

    .line 459
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 461
    return-void

    .line 456
    :catch_1e
    move-exception v1

    .line 457
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7
    .param p1, "v"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1b

    .line 269
    const/4 v0, 0x0

    const-string/jumbo v1, "pbundle_as_map"

    invoke-interface {p3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const-string/jumbo v2, "name"

    invoke-interface {p3, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    move-object v2, p1

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {v2, p3}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 272
    invoke-interface {p3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    return-void

    .line 274
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Object o="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

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
        Landroid/os/PersistableBundle$1;,
        Landroid/os/PersistableBundle$MyReadMapCallback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/PersistableBundle;

.field private static final TAG_PERSISTABLEMAP:Ljava/lang/String; = "pbundle_as_map"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/os/PersistableBundle;

    #@2
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    #@5
    sput-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    #@7
    .line 44
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    #@9
    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    #@b
    iput-object v1, v0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@d
    .line 191
    new-instance v0, Landroid/os/PersistableBundle$1;

    #@f
    invoke-direct {v0}, Landroid/os/PersistableBundle$1;-><init>()V

    #@12
    .line 190
    sput-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@14
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    #@3
    .line 62
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    #@6
    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    #@3
    .line 73
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    #@6
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/os/Bundle;->getMap()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    #@7
    .line 97
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    #@0
    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    #@3
    .line 132
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    #@6
    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    #@3
    .line 84
    iget v0, p1, Landroid/os/PersistableBundle;->mFlags:I

    #@5
    iput v0, p0, Landroid/os/PersistableBundle;->mFlags:I

    #@7
    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    #@3
    .line 109
    const/4 v3, 0x1

    #@4
    iput v3, p0, Landroid/os/PersistableBundle;->mFlags:I

    #@6
    .line 112
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->putAll(Landroid/util/ArrayMap;)V

    #@9
    .line 115
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v0

    #@f
    .line 116
    .local v0, "N":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@12
    .line 117
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@14
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    .line 118
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/util/ArrayMap;

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 120
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@1e
    new-instance v4, Landroid/os/PersistableBundle;

    #@20
    check-cast v2, Landroid/util/ArrayMap;

    #@22
    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {v4, v2}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    #@25
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 121
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Landroid/os/Bundle;

    #@2d
    if-eqz v3, :cond_2

    #@2f
    .line 122
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@31
    new-instance v4, Landroid/os/PersistableBundle;

    #@33
    check-cast v2, Landroid/os/Bundle;

    #@35
    .end local v2    # "value":Ljava/lang/Object;
    invoke-direct {v4, v2}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Bundle;)V

    #@38
    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    #@3b
    goto :goto_1

    #@3c
    .line 123
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v2}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_0

    #@42
    .line 124
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v5, "Bad value in PersistableBundle key="

    #@4c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 125
    iget-object v3, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@52
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    check-cast v3, Ljava/lang/String;

    #@58
    .line 124
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    .line 125
    const-string/jumbo v5, " value="

    #@5f
    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v4

    #@6f
    .line 107
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    new-instance v0, Landroid/os/PersistableBundle;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(I)V

    #@6
    .line 142
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 143
    return-object v0
.end method

.method public static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 49
    instance-of v0, p0, Ljava/lang/Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    instance-of v0, p0, Ljava/lang/Long;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 50
    instance-of v0, p0, Ljava/lang/Double;

    #@a
    .line 49
    if-nez v0, :cond_0

    #@c
    .line 50
    instance-of v0, p0, Ljava/lang/String;

    #@e
    .line 49
    if-nez v0, :cond_0

    #@10
    .line 51
    instance-of v0, p0, [I

    #@12
    .line 49
    if-nez v0, :cond_0

    #@14
    .line 51
    instance-of v0, p0, [J

    #@16
    .line 49
    if-nez v0, :cond_0

    #@18
    .line 52
    instance-of v0, p0, [D

    #@1a
    .line 49
    if-nez v0, :cond_0

    #@1c
    .line 52
    instance-of v0, p0, [Ljava/lang/String;

    #@1e
    .line 49
    if-nez v0, :cond_0

    #@20
    .line 53
    instance-of v0, p0, Landroid/os/PersistableBundle;

    #@22
    .line 49
    if-nez v0, :cond_0

    #@24
    .line 53
    if-nez p0, :cond_1

    #@26
    .line 49
    :cond_0
    const/4 v0, 0x1

    #@27
    :goto_0
    return v0

    #@28
    .line 54
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    #@2a
    .line 49
    if-nez v0, :cond_0

    #@2c
    .line 54
    instance-of v0, p0, [Z

    #@2e
    goto :goto_0
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .locals 6
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 261
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 262
    .local v1, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 263
    .local v2, "startTag":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    #@b
    .line 265
    .local v3, "tagName":[Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@e
    move-result v0

    #@f
    .local v0, "event":I
    if-eq v0, v5, :cond_2

    #@11
    .line 266
    const/4 v4, 0x3

    #@12
    if-ne v0, v4, :cond_1

    #@14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@17
    move-result v4

    #@18
    if-ge v4, v1, :cond_2

    #@1a
    .line 267
    :cond_1
    const/4 v4, 0x2

    #@1b
    if-ne v0, v4, :cond_0

    #@1d
    .line 268
    new-instance v4, Landroid/os/PersistableBundle;

    #@1f
    .line 270
    new-instance v5, Landroid/os/PersistableBundle$MyReadMapCallback;

    #@21
    invoke-direct {v5}, Landroid/os/PersistableBundle$MyReadMapCallback;-><init>()V

    #@24
    .line 269
    invoke-static {p0, v2, v3, v5}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    #@27
    move-result-object v5

    #@28
    .line 268
    invoke-direct {v4, v5}, Landroid/os/PersistableBundle;-><init>(Landroid/util/ArrayMap;)V

    #@2b
    return-object v4

    #@2c
    .line 273
    :cond_2
    sget-object v4, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    #@2e
    return-object v4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 152
    new-instance v0, Landroid/os/PersistableBundle;

    #@2
    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    #@5
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 240
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    #@4
    .line 178
    iget-object v2, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 179
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 180
    return-object v3

    #@d
    .line 183
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 184
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 185
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Bundle"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/PersistableBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 186
    return-object v3
.end method

.method public putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    #@3
    .line 164
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 162
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->unparcel()V

    #@3
    .line 220
    iget-object v0, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    #@8
    .line 218
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 279
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmptyParcel()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 280
    const-string/jumbo v0, "PersistableBundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .line 282
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "PersistableBundle[mParcelledData.dataSize="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 283
    iget-object v1, p0, Landroid/os/PersistableBundle;->mParcelledData:Landroid/os/Parcel;

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    #@21
    move-result v1

    #@22
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 283
    const-string/jumbo v1, "]"

    #@29
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v0

    #@31
    monitor-exit p0

    #@32
    return-object v0

    #@33
    .line 286
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v1, "PersistableBundle["

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@41
    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const-string/jumbo v1, "]"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    move-result-object v0

    #@54
    monitor-exit p0

    #@55
    return-object v0

    #@56
    :catchall_0
    move-exception v0

    #@57
    monitor-exit p0

    #@58
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 250
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    #@4
    move-result v0

    #@5
    .line 252
    .local v0, "oldAllowFds":Z
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    #@b
    .line 249
    return-void

    #@c
    .line 253
    :catchall_0
    move-exception v1

    #@d
    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    #@10
    .line 253
    throw v1
.end method

.method public writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 207
    instance-of v0, p1, Landroid/os/PersistableBundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 208
    const-string/jumbo v0, "pbundle_as_map"

    #@8
    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b
    .line 209
    const-string/jumbo v0, "name"

    #@e
    invoke-interface {p3, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@11
    .line 210
    check-cast p1, Landroid/os/PersistableBundle;

    #@13
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@16
    .line 211
    const-string/jumbo v0, "pbundle_as_map"

    #@19
    invoke-interface {p3, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1c
    .line 206
    return-void

    #@1d
    .line 213
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "Unknown Object o="

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0
.end method

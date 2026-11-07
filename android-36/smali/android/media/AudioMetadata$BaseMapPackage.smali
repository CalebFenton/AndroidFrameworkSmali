.class Landroid/media/AudioMetadata$BaseMapPackage;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$DataPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseMapPackage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "Landroid/media/AudioMetadata$BaseMap;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioMetadata-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioMetadata$BaseMapPackage;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Landroid/media/AudioMetadata$BaseMap;)Z
    .registers 12
    .param p1, "output"    # Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .param p2, "obj"    # Landroid/media/AudioMetadata$BaseMap;

    .line 819
    invoke-virtual {p2}, Landroid/media/AudioMetadata$BaseMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->putInt(I)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 820
    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetDATA_PACKAGES()Ljava/util/Map;

    move-result-object v0

    .line 821
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    .line 822
    .local v0, "strDataPackage":Landroid/media/AudioMetadata$DataPackage;, "Landroid/media/AudioMetadata$DataPackage<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "AudioMetadata"

    if-nez v0, :cond_21

    .line 823
    const-string v3, "Cannot find DataPackage for String"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return v1

    .line 826
    :cond_21
    invoke-virtual {p2}, Landroid/media/AudioMetadata$BaseMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioMetadata$Key;

    .line 827
    .local v4, "key":Landroid/media/AudioMetadata$Key;, "Landroid/media/AudioMetadata$Key<*>;"
    invoke-virtual {p2, v4}, Landroid/media/AudioMetadata$BaseMap;->get(Landroid/media/AudioMetadata$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 830
    .local v5, "value":Ljava/lang/Object;
    sget-object v6, Landroid/media/AudioMetadata$Format;->KEY_ATMOS_PRESENT:Landroid/media/AudioMetadata$Key;

    if-ne v4, v6, :cond_4a

    .line 831
    sget-object v4, Landroid/media/AudioMetadata$Format;->KEY_HAS_ATMOS:Landroid/media/AudioMetadata$Key;

    .line 832
    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 835
    :cond_4a
    invoke-interface {v4}, Landroid/media/AudioMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, p1, v6}, Landroid/media/AudioMetadata$DataPackage;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to pack key: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Landroid/media/AudioMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v1

    .line 839
    :cond_6f
    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetOBJECT_PACKAGE()Landroid/media/AudioMetadata$ObjectPackage;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-interface {v4}, Landroid/media/AudioMetadata$Key;->getValueClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, p1, v7}, Landroid/media/AudioMetadata$ObjectPackage;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Landroid/util/Pair;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to pack value: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v4}, Landroid/media/AudioMetadata$BaseMap;->get(Landroid/media/AudioMetadata$Key;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return v1

    .line 843
    .end local v4    # "key":Landroid/media/AudioMetadata$Key;, "Landroid/media/AudioMetadata$Key<*>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_9d
    goto :goto_29

    .line 844
    :cond_9e
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 780
    check-cast p2, Landroid/media/AudioMetadata$BaseMap;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioMetadata$BaseMapPackage;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Landroid/media/AudioMetadata$BaseMap;)Z

    move-result p1

    return p1
.end method

.method public blacklist unpack(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;
    .registers 13
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 784
    new-instance v0, Landroid/media/AudioMetadata$BaseMap;

    invoke-direct {v0}, Landroid/media/AudioMetadata$BaseMap;-><init>()V

    .line 785
    .local v0, "ret":Landroid/media/AudioMetadata$BaseMap;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 786
    .local v1, "mapSize":I
    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetDATA_PACKAGES()Ljava/util/Map;

    move-result-object v2

    .line 787
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioMetadata$DataPackage;

    .line 788
    .local v2, "strDataPackage":Landroid/media/AudioMetadata$DataPackage;, "Landroid/media/AudioMetadata$DataPackage<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const-string v4, "AudioMetadata"

    if-nez v2, :cond_23

    .line 789
    const-string v5, "Cannot find DataPackage for String"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-object v3

    .line 792
    :cond_23
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v1, :cond_89

    .line 793
    invoke-interface {v2, p1}, Landroid/media/AudioMetadata$DataPackage;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 794
    .local v6, "key":Ljava/lang/String;
    if-nez v6, :cond_34

    .line 795
    const-string v7, "Failed to unpack key for map"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-object v3

    .line 798
    :cond_34
    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetOBJECT_PACKAGE()Landroid/media/AudioMetadata$ObjectPackage;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/media/AudioMetadata$ObjectPackage;->unpack(Ljava/nio/ByteBuffer;)Landroid/util/Pair;

    move-result-object v7

    .line 799
    .local v7, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Class;Ljava/lang/Object;>;"
    if-nez v7, :cond_44

    .line 800
    const-string v8, "Failed to unpack value for map"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-object v3

    .line 805
    :cond_44
    sget-object v8, Landroid/media/AudioMetadata$Format;->KEY_HAS_ATMOS:Landroid/media/AudioMetadata$Key;

    invoke-interface {v8}, Landroid/media/AudioMetadata$Key;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v9, Landroid/media/AudioMetadata$Format;->KEY_HAS_ATMOS:Landroid/media/AudioMetadata$Key;

    .line 806
    invoke-interface {v9}, Landroid/media/AudioMetadata$Key;->getValueClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_71

    .line 807
    sget-object v8, Landroid/media/AudioMetadata$Format;->KEY_ATMOS_PRESENT:Landroid/media/AudioMetadata$Key;

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 808
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_68

    const/4 v9, 0x1

    goto :goto_69

    :cond_68
    const/4 v9, 0x0

    :goto_69
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 807
    invoke-virtual {v0, v8, v9}, Landroid/media/AudioMetadata$BaseMap;->set(Landroid/media/AudioMetadata$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    goto :goto_86

    .line 812
    :cond_71
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Class;

    invoke-static {v6, v8}, Landroid/media/AudioMetadata;->createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/AudioMetadata$Key;

    move-result-object v8

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Class;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/media/AudioMetadata$BaseMap;->set(Landroid/media/AudioMetadata$Key;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Class;Ljava/lang/Object;>;"
    :goto_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 814
    .end local v5    # "i":I
    :cond_89
    return-object v0
.end method

.method public bridge synthetic blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 780
    invoke-virtual {p0, p1}, Landroid/media/AudioMetadata$BaseMapPackage;->unpack(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;

    move-result-object p1

    return-object p1
.end method

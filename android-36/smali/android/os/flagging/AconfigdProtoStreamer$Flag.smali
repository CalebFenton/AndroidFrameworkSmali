.class Landroid/os/flagging/AconfigdProtoStreamer$Flag;
.super Ljava/lang/Object;
.source "AconfigdProtoStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/flagging/AconfigdProtoStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flag"
.end annotation


# instance fields
.field public final blacklist flagName:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flagName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Boolean;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->packageName:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->flagName:Ljava/lang/String;

    .line 250
    if-eqz p3, :cond_14

    .line 251
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->value:Ljava/lang/String;

    goto :goto_17

    .line 253
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->value:Ljava/lang/String;

    .line 255
    :goto_17
    return-void
.end method

.method public static blacklist buildFlags(Ljava/util/Map;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/os/flagging/AconfigdProtoStreamer$Flag;",
            ">;"
        }
    .end annotation

    .line 258
    .local p0, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v0, "flagSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/flagging/AconfigdProtoStreamer$Flag;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 260
    .local v2, "flagAndValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v3, ""

    .line 261
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 263
    .local v4, "flagName":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 264
    .local v6, "periodIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_3d

    .line 265
    const/4 v7, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_3d
    new-instance v5, Landroid/os/flagging/AconfigdProtoStreamer$Flag;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-direct {v5, v3, v4, v7}, Landroid/os/flagging/AconfigdProtoStreamer$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v2    # "flagAndValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "flagName":Ljava/lang/String;
    .end local v6    # "periodIndex":I
    goto :goto_d

    .line 271
    :cond_4c
    return-object v0
.end method

.method public static blacklist buildFlagsWithoutValues(Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/os/flagging/AconfigdProtoStreamer$Flag;",
            ">;"
        }
    .end annotation

    .line 275
    .local p0, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 276
    .local v0, "flagSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/os/flagging/AconfigdProtoStreamer$Flag;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    .local v2, "qualifiedFlagName":Ljava/lang/String;
    const-string v3, ""

    .line 278
    .local v3, "packageName":Ljava/lang/String;
    move-object v4, v2

    .line 279
    .local v4, "flagName":Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 280
    .local v6, "periodIndex":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_35

    .line 281
    nop

    .line 282
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    :cond_35
    new-instance v5, Landroid/os/flagging/AconfigdProtoStreamer$Flag;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v4, v7}, Landroid/os/flagging/AconfigdProtoStreamer$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "qualifiedFlagName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "flagName":Ljava/lang/String;
    .end local v6    # "periodIndex":I
    goto :goto_9

    .line 288
    :cond_3f
    return-object v0
.end method

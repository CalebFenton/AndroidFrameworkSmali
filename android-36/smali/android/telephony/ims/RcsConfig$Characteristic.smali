.class public Landroid/telephony/ims/RcsConfig$Characteristic;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristic"
.end annotation


# instance fields
.field private final blacklist mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

.field private final blacklist mParms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetParent(Landroid/telephony/ims/RcsConfig$Characteristic;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParent()Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParmValue(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetParms(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParms()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubByType(Landroid/telephony/ims/RcsConfig$Characteristic;Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSubs(Landroid/telephony/ims/RcsConfig$Characteristic;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    .line 73
    iput-object p1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;Landroid/telephony/ims/RcsConfig-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsConfig$Characteristic;-><init>(Ljava/lang/String;Landroid/telephony/ims/RcsConfig$Characteristic;)V

    return-void
.end method

.method private blacklist getParent()Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParent:Landroid/telephony/ims/RcsConfig$Characteristic;

    return-object v0
.end method

.method private blacklist getParmValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_24

    .line 114
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 115
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getParmValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_23

    .line 117
    goto :goto_24

    .line 119
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_23
    goto :goto_10

    .line 121
    :cond_24
    :goto_24
    return-object v0
.end method

.method private blacklist getParms()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    return-object p0

    .line 97
    :cond_9
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Landroid/telephony/ims/RcsConfig$Characteristic;
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 99
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-direct {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_23

    .line 101
    goto :goto_24

    .line 103
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_23
    goto :goto_10

    .line 104
    :cond_24
    :goto_24
    return-object v0
.end method

.method private blacklist getSubs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsConfig$Characteristic;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    return-object v0
.end method

.method private blacklist getType()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist hasSubByType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->getSubByType(Ljava/lang/String;)Landroid/telephony/ims/RcsConfig$Characteristic;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    instance-of v0, p1, Landroid/telephony/ims/RcsConfig$Characteristic;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 155
    return v1

    .line 158
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 160
    .local v0, "o":Landroid/telephony/ims/RcsConfig$Characteristic;
    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    iget-object v3, v0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    .line 161
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 160
    :goto_2a
    return v1
.end method

.method blacklist hasParm(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 126
    return v1

    .line 129
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 130
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    invoke-virtual {v2, p1}, Landroid/telephony/ims/RcsConfig$Characteristic;->hasParm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 131
    return v1

    .line 133
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    :cond_23
    goto :goto_10

    .line 135
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 166
    iget-object v0, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {}, Landroid/telephony/ims/RcsConfig;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 143
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mParms:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    :cond_2e
    iget-object v1, p0, Landroid/telephony/ims/RcsConfig$Characteristic;->mSubs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsConfig$Characteristic;

    .line 146
    .local v2, "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Landroid/telephony/ims/RcsConfig$Characteristic;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\t"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .end local v2    # "sub":Landroid/telephony/ims/RcsConfig$Characteristic;
    goto :goto_34

    .line 149
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

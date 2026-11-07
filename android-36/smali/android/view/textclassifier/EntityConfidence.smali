.class final Landroid/view/textclassifier/EntityConfidence;
.super Ljava/lang/Object;
.source "EntityConfidence.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/EntityConfidence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEntityConfidence:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSortedEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Xoxw_1JDekRjyM8-PS2WpuSfdao(Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->lambda$resetSortedEntitiesFromMap$0(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/view/textclassifier/EntityConfidence$1;

    invoke-direct {v0}, Landroid/view/textclassifier/EntityConfidence$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "numEntities":I
    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_31

    .line 131
    iget-object v2, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 133
    .end local v1    # "i":I
    :cond_31
    invoke-direct {p0}, Landroid/view/textclassifier/EntityConfidence;->resetSortedEntitiesFromMap()V

    .line 134
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/EntityConfidence-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/EntityConfidence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/textclassifier/EntityConfidence;)V
    .registers 4
    .param p1, "source"    # Landroid/view/textclassifier/EntityConfidence;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 46
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_41

    goto :goto_25

    .line 64
    :cond_41
    iget-object v2, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v1    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    goto :goto_25

    .line 66
    :cond_61
    invoke-direct {p0}, Landroid/view/textclassifier/EntityConfidence;->resetSortedEntitiesFromMap()V

    .line 67
    return-void
.end method

.method private synthetic blacklist lambda$resetSortedEntitiesFromMap$0(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "e1"    # Ljava/lang/String;
    .param p2, "e2"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 142
    .local v0, "score1":F
    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 143
    .local v1, "score2":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    return v2
.end method

.method private greylist-max-o resetSortedEntitiesFromMap()V
    .registers 3

    .line 137
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 139
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/textclassifier/EntityConfidence$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/textclassifier/EntityConfidence$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/EntityConfidence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getConfidenceScore(Ljava/lang/String;)F
    .registers 3
    .param p1, "entity"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 86
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 88
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getEntities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mSortedEntities:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 111
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    goto :goto_13

    .line 112
    :cond_36
    return-void
.end method

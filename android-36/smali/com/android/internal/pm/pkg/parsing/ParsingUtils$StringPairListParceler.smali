.class public Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;
.super Ljava/lang/Object;
.source "ParsingUtils.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/pkg/parsing/ParsingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringPairListParceler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 134
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist parcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 8
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 140
    .local p1, "item":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;>;"
    if-nez p1, :cond_7

    .line 141
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void

    .line 145
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 146
    .local v0, "size":I
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_f
    if-ge v1, v0, :cond_28

    .line 149
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 150
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p2, v3, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 153
    .end local v1    # "index":I
    :cond_28
    return-void
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 159
    const/4 v1, 0x0

    return-object v1

    .line 162
    :cond_9
    if-nez v0, :cond_12

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    .line 166
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v0, :cond_36

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 169
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 168
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 172
    .end local v2    # "i":I
    :cond_36
    return-object v1
.end method

.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$ViewBinder;,
        Landroid/widget/SimpleAdapter$SimpleFilter;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownResource:I

.field private mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method static synthetic -get0(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SimpleAdapter;)[I
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 87
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 89
    iput-object p2, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    #@5
    .line 90
    iput p3, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    #@7
    iput p3, p0, Landroid/widget/SimpleAdapter;->mResource:I

    #@9
    .line 91
    iput-object p4, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    #@b
    .line 92
    iput-object p5, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    #@d
    .line 93
    const-string/jumbo v0, "layout_inflater"

    #@10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/view/LayoutInflater;

    #@16
    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@18
    .line 88
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 183
    iget-object v10, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    #@2
    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Ljava/util/Map;

    #@8
    .line 184
    .local v4, "dataSet":Ljava/util/Map;
    if-nez v4, :cond_0

    #@a
    .line 185
    return-void

    #@b
    .line 188
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    #@d
    .line 189
    .local v0, "binder":Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v5, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    #@f
    .line 190
    .local v5, "from":[Ljava/lang/String;
    iget-object v8, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    #@11
    .line 191
    .local v8, "to":[I
    array-length v2, v8

    #@12
    .line 193
    .local v2, "count":I
    const/4 v6, 0x0

    #@13
    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_c

    #@15
    .line 194
    aget v10, v8, v6

    #@17
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@1a
    move-result-object v9

    #@1b
    .line 195
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_3

    #@1d
    .line 196
    aget-object v10, v5, v6

    #@1f
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    .line 197
    .local v3, "data":Ljava/lang/Object;
    if-nez v3, :cond_4

    #@25
    const-string/jumbo v7, ""

    #@28
    .line 198
    .local v7, "text":Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_1

    #@2a
    .line 199
    const-string/jumbo v7, ""

    #@2d
    .line 202
    :cond_1
    const/4 v1, 0x0

    #@2e
    .line 203
    .local v1, "bound":Z
    if-eqz v0, :cond_2

    #@30
    .line 204
    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    #@33
    move-result v1

    #@34
    .line 207
    .end local v1    # "bound":Z
    :cond_2
    if-nez v1, :cond_3

    #@36
    .line 208
    instance-of v10, v9, Landroid/widget/Checkable;

    #@38
    if-eqz v10, :cond_8

    #@3a
    .line 209
    instance-of v10, v3, Ljava/lang/Boolean;

    #@3c
    if-eqz v10, :cond_5

    #@3e
    .line 210
    check-cast v9, Landroid/widget/Checkable;

    #@40
    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Boolean;

    #@42
    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@45
    move-result v10

    #@46
    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    #@49
    .line 193
    .end local v7    # "text":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 197
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    .restart local v7    # "text":Ljava/lang/String;
    goto :goto_1

    #@51
    .line 211
    :cond_5
    instance-of v10, v9, Landroid/widget/TextView;

    #@53
    if-eqz v10, :cond_6

    #@55
    .line 214
    check-cast v9, Landroid/widget/TextView;

    #@57
    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@5a
    goto :goto_2

    #@5b
    .line 216
    .restart local v9    # "v":Landroid/view/View;
    :cond_6
    new-instance v11, Ljava/lang/IllegalStateException;

    #@5d
    new-instance v10, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v9}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@65
    move-result-object v12

    #@66
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@69
    move-result-object v12

    #@6a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v10

    #@6e
    .line 217
    const-string/jumbo v12, " should be bound to a Boolean, not a "

    #@71
    .line 216
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v12

    #@75
    .line 218
    if-nez v3, :cond_7

    #@77
    const-string/jumbo v10, "<unknown type>"

    #@7a
    .line 216
    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@85
    throw v11

    #@86
    .line 218
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@89
    move-result-object v10

    #@8a
    goto :goto_3

    #@8b
    .line 220
    :cond_8
    instance-of v10, v9, Landroid/widget/TextView;

    #@8d
    if-eqz v10, :cond_9

    #@8f
    .line 223
    check-cast v9, Landroid/widget/TextView;

    #@91
    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@94
    goto :goto_2

    #@95
    .line 224
    .restart local v9    # "v":Landroid/view/View;
    :cond_9
    instance-of v10, v9, Landroid/widget/ImageView;

    #@97
    if-eqz v10, :cond_b

    #@99
    .line 225
    instance-of v10, v3, Ljava/lang/Integer;

    #@9b
    if-eqz v10, :cond_a

    #@9d
    .line 226
    check-cast v9, Landroid/widget/ImageView;

    #@9f
    .end local v9    # "v":Landroid/view/View;
    check-cast v3, Ljava/lang/Integer;

    #@a1
    .end local v3    # "data":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@a4
    move-result v10

    #@a5
    invoke-virtual {p0, v9, v10}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    #@a8
    goto :goto_2

    #@a9
    .line 228
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v9    # "v":Landroid/view/View;
    :cond_a
    check-cast v9, Landroid/widget/ImageView;

    #@ab
    .end local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    #@ae
    goto :goto_2

    #@af
    .line 231
    .restart local v9    # "v":Landroid/view/View;
    :cond_b
    new-instance v10, Ljava/lang/IllegalStateException;

    #@b1
    new-instance v11, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    invoke-virtual {v9}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@b9
    move-result-object v12

    #@ba
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v11

    #@c2
    const-string/jumbo v12, " is not a "

    #@c5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v11

    #@c9
    .line 232
    const-string/jumbo v12, " view that can be bounds by this SimpleAdapter"

    #@cc
    .line 231
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v11

    #@d0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v11

    #@d4
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d7
    throw v10

    #@d8
    .line 182
    .end local v3    # "data":Ljava/lang/Object;
    .end local v7    # "text":Ljava/lang/String;
    .end local v9    # "v":Landroid/view/View;
    :cond_c
    return-void
.end method

.method private createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "resource"    # I

    #@0
    .prologue
    .line 127
    if-nez p3, :cond_0

    #@2
    .line 128
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, p5, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 133
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/widget/SimpleAdapter;->bindView(ILandroid/view/View;)V

    #@a
    .line 135
    return-object v0

    #@b
    .line 130
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p3

    #@c
    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@6
    .line 179
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget v5, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    #@8
    move-object v0, p0

    #@9
    move v2, p1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p3

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 178
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@13
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@8
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@f
    move-result-object v0

    #@10
    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 317
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 318
    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$SimpleFilter;)V

    #@a
    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    #@c
    .line 320
    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    #@e
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 114
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    iget v5, p0, Landroid/widget/SimpleAdapter;->mResource:I

    #@4
    move-object v0, p0

    #@5
    move v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    #@2
    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .param p1, "resource"    # I

    #@0
    .prologue
    .line 145
    iput p1, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    #@2
    .line 144
    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 161
    if-nez p1, :cond_0

    #@3
    .line 162
    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@5
    .line 160
    :goto_0
    return-void

    #@6
    .line 163
    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@8
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@f
    move-result-object v1

    #@10
    if-ne p1, v1, :cond_1

    #@12
    .line 164
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@14
    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@16
    goto :goto_0

    #@17
    .line 166
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@19
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@1b
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    #@22
    .line 167
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    #@28
    goto :goto_0
.end method

.method public setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Landroid/widget/SimpleAdapter$ViewBinder;

    #@0
    .prologue
    .line 259
    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    #@2
    .line 258
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    #@3
    .line 275
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 298
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 296
    :goto_0
    return-void

    #@8
    .line 299
    :catch_0
    move-exception v0

    #@9
    .line 300
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@10
    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 313
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3
    .line 312
    return-void
.end method

.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field greylist-max-o children:[Landroid/sax/Children$Child;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    return-void
.end method


# virtual methods
.method greylist-max-o get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    .local v0, "hash":I
    and-int/lit8 v1, v0, 0xf

    .line 69
    .local v1, "index":I
    iget-object v2, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v2, v2, v1

    .line 70
    .local v2, "current":Landroid/sax/Children$Child;
    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 71
    return-object v3

    .line 74
    :cond_15
    iget v4, v2, Landroid/sax/Children$Child;->hash:I

    if-ne v4, v0, :cond_2a

    iget-object v4, v2, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, v2, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    .line 76
    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2a

    .line 77
    return-object v2

    .line 79
    :cond_2a
    iget-object v2, v2, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 80
    if-nez v2, :cond_15

    .line 82
    return-object v3
.end method

.method greylist-max-o getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 12
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v7, v0, v1

    .line 32
    .local v7, "hash":I
    and-int/lit8 v0, v7, 0xf

    .line 34
    .local v0, "index":I
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v1, v1, v0

    .line 35
    .local v1, "current":Landroid/sax/Children$Child;
    if-nez v1, :cond_25

    .line 37
    new-instance v2, Landroid/sax/Children$Child;

    iget v3, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v3, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "parent":Landroid/sax/Element;
    .end local p2    # "uri":Ljava/lang/String;
    .end local p3    # "localName":Ljava/lang/String;
    .local v3, "parent":Landroid/sax/Element;
    .local v4, "uri":Ljava/lang/String;
    .local v5, "localName":Ljava/lang/String;
    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 38
    .end local v1    # "current":Landroid/sax/Children$Child;
    .local v2, "current":Landroid/sax/Children$Child;
    iget-object p1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v2, p1, v0

    .line 39
    return-object v2

    .line 35
    .end local v2    # "current":Landroid/sax/Children$Child;
    .end local v3    # "parent":Landroid/sax/Element;
    .end local v4    # "uri":Ljava/lang/String;
    .end local v5    # "localName":Ljava/lang/String;
    .restart local v1    # "current":Landroid/sax/Children$Child;
    .restart local p1    # "parent":Landroid/sax/Element;
    .restart local p2    # "uri":Ljava/lang/String;
    .restart local p3    # "localName":Ljava/lang/String;
    :cond_25
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 44
    .end local p1    # "parent":Landroid/sax/Element;
    .end local p2    # "uri":Ljava/lang/String;
    .end local p3    # "localName":Ljava/lang/String;
    .restart local v3    # "parent":Landroid/sax/Element;
    .restart local v4    # "uri":Ljava/lang/String;
    .restart local v5    # "localName":Ljava/lang/String;
    :cond_28
    iget p1, v1, Landroid/sax/Children$Child;->hash:I

    if-ne p1, v7, :cond_3d

    iget-object p1, v1, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    iget-object p1, v1, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3d

    .line 48
    return-object v1

    .line 51
    :cond_3d
    move-object p1, v1

    .line 52
    .local p1, "previous":Landroid/sax/Children$Child;
    iget-object v1, v1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 53
    if-nez v1, :cond_28

    .line 56
    new-instance v2, Landroid/sax/Children$Child;

    iget p2, v3, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, p2, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 57
    .end local v1    # "current":Landroid/sax/Children$Child;
    .restart local v2    # "current":Landroid/sax/Children$Child;
    iput-object v2, p1, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 58
    return-object v2
.end method

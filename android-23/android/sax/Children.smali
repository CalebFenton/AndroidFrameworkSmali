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
.field children:[Landroid/sax/Children$Child;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [Landroid/sax/Children$Child;

    #@7
    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    #@9
    .line 23
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@4
    move-result v3

    #@5
    mul-int/lit8 v3, v3, 0x1f

    #@7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v4

    #@b
    add-int v1, v3, v4

    #@d
    .line 67
    .local v1, "hash":I
    and-int/lit8 v2, v1, 0xf

    #@f
    .line 69
    .local v2, "index":I
    iget-object v3, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    #@11
    aget-object v0, v3, v2

    #@13
    .line 70
    .local v0, "current":Landroid/sax/Children$Child;
    if-nez v0, :cond_1

    #@15
    .line 71
    return-object v5

    #@16
    .line 79
    :cond_0
    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    #@18
    .line 80
    if-eqz v0, :cond_2

    #@1a
    .line 74
    :cond_1
    iget v3, v0, Landroid/sax/Children$Child;->hash:I

    #@1c
    if-ne v3, v1, :cond_0

    #@1e
    .line 75
    iget-object v3, v0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    #@20
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_0

    #@26
    .line 76
    iget-object v3, v0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    #@28
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@2b
    move-result v3

    #@2c
    if-nez v3, :cond_0

    #@2e
    .line 77
    return-object v0

    #@2f
    .line 82
    :cond_2
    return-object v5
.end method

.method getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 8
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@3
    move-result v1

    #@4
    mul-int/lit8 v1, v1, 0x1f

    #@6
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v2

    #@a
    add-int v5, v1, v2

    #@c
    .line 32
    .local v5, "hash":I
    and-int/lit8 v6, v5, 0xf

    #@e
    .line 34
    .local v6, "index":I
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    #@10
    aget-object v0, v1, v6

    #@12
    .line 35
    .local v0, "current":Landroid/sax/Children$Child;
    if-nez v0, :cond_1

    #@14
    .line 37
    new-instance v0, Landroid/sax/Children$Child;

    #@16
    .end local v0    # "current":Landroid/sax/Children$Child;
    iget v1, p1, Landroid/sax/Element;->depth:I

    #@18
    add-int/lit8 v4, v1, 0x1

    #@1a
    move-object v1, p1

    #@1b
    move-object v2, p2

    #@1c
    move-object v3, p3

    #@1d
    invoke-direct/range {v0 .. v5}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    #@20
    .line 38
    .restart local v0    # "current":Landroid/sax/Children$Child;
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    #@22
    aput-object v0, v1, v6

    #@24
    .line 39
    return-object v0

    #@25
    .line 51
    :cond_0
    move-object v7, v0

    #@26
    .line 52
    .local v7, "previous":Landroid/sax/Children$Child;
    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    #@28
    .line 53
    if-eqz v0, :cond_2

    #@2a
    .line 44
    .end local v7    # "previous":Landroid/sax/Children$Child;
    :cond_1
    iget v1, v0, Landroid/sax/Children$Child;->hash:I

    #@2c
    if-ne v1, v5, :cond_0

    #@2e
    .line 45
    iget-object v1, v0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    #@30
    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_0

    #@36
    .line 46
    iget-object v1, v0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    #@38
    invoke-virtual {v1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_0

    #@3e
    .line 48
    return-object v0

    #@3f
    .line 56
    .restart local v7    # "previous":Landroid/sax/Children$Child;
    :cond_2
    new-instance v0, Landroid/sax/Children$Child;

    #@41
    .end local v0    # "current":Landroid/sax/Children$Child;
    iget v1, p1, Landroid/sax/Element;->depth:I

    #@43
    add-int/lit8 v4, v1, 0x1

    #@45
    move-object v1, p1

    #@46
    move-object v2, p2

    #@47
    move-object v3, p3

    #@48
    invoke-direct/range {v0 .. v5}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    #@4b
    .line 57
    .restart local v0    # "current":Landroid/sax/Children$Child;
    iput-object v0, v7, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    #@4d
    .line 58
    return-object v0
.end method

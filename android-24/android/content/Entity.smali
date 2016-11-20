.class public final Landroid/content/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Entity$NamedContentValues;
    }
.end annotation


# instance fields
.field private final mSubValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroid/content/Entity;->mValues:Landroid/content/ContentValues;

    #@5
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/content/Entity;->mSubValues:Ljava/util/ArrayList;

    #@c
    .line 34
    return-void
.end method


# virtual methods
.method public addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/content/Entity;->mSubValues:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroid/content/Entity$NamedContentValues;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/content/Entity$NamedContentValues;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 47
    return-void
.end method

.method public getEntityValues()Landroid/content/ContentValues;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/content/Entity;->mValues:Landroid/content/ContentValues;

    #@2
    return-object v0
.end method

.method public getSubValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Landroid/content/Entity;->mSubValues:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 63
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Entity: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    .line 64
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    #@16
    move-result-object v3

    #@17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "namedValue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/Entity$NamedContentValues;

    #@27
    .line 65
    .local v0, "namedValue":Landroid/content/Entity$NamedContentValues;
    const-string/jumbo v3, "\n  "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    .line 66
    const-string/jumbo v3, "\n  -> "

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    goto :goto_0

    #@40
    .line 68
    .end local v0    # "namedValue":Landroid/content/Entity$NamedContentValues;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    return-object v3
.end method

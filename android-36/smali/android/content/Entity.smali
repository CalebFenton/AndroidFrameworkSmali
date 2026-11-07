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
.field private final greylist-max-p mSubValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-p mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor whitelist <init>(Landroid/content/ContentValues;)V
    .registers 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/content/Entity;->mValues:Landroid/content/ContentValues;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/Entity;->mSubValues:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 52
    iget-object v0, p0, Landroid/content/Entity;->mSubValues:Ljava/util/ArrayList;

    new-instance v1, Landroid/content/Entity$NamedContentValues;

    invoke-direct {v1, p1, p2}, Landroid/content/Entity$NamedContentValues;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public whitelist getEntityValues()Landroid/content/ContentValues;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/content/Entity;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public whitelist getSubValues()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/content/Entity;->mSubValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Entity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 69
    .local v2, "namedValue":Landroid/content/Entity$NamedContentValues;
    const-string v3, "\n  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, "\n  -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .end local v2    # "namedValue":Landroid/content/Entity$NamedContentValues;
    goto :goto_1a

    .line 72
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

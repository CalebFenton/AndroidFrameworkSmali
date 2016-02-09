.class public final Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContactId:J

.field private mLimit:I

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1828
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    #@a
    .line 1826
    return-void
.end method


# virtual methods
.method public addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1850
    iget-object v0, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1851
    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 6

    #@0
    .prologue
    .line 1870
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #@2
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@5
    move-result-object v0

    #@6
    .line 1871
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-wide v4, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mContactId:J

    #@8
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@f
    .line 1872
    const-string/jumbo v3, "suggestions"

    #@12
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@15
    .line 1873
    iget v3, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 1874
    const-string/jumbo v3, "limit"

    #@1c
    iget v4, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    #@1e
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@25
    .line 1877
    :cond_0
    iget-object v3, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v1

    #@2b
    .line 1878
    .local v1, "count":I
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@2e
    .line 1879
    const-string/jumbo v4, "query"

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "name:"

    #@39
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1880
    iget-object v3, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Ljava/lang/String;

    #@45
    .line 1879
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@50
    .line 1878
    add-int/lit8 v2, v2, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1883
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@56
    move-result-object v3

    #@57
    return-object v3
.end method

.method public setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 1
    .param p1, "contactId"    # J

    #@0
    .prologue
    .line 1839
    iput-wide p1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mContactId:J

    #@2
    .line 1840
    return-object p0
.end method

.method public setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .locals 0
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 1861
    iput p1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    #@2
    .line 1862
    return-object p0
.end method

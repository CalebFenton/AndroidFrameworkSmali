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
.field private greylist-max-o mContactId:J

.field private greylist-max-o mLimit:I

.field private final greylist-max-o mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2039
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public whitelist addNameParameter(Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2061
    iget-object v0, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    return-object p0
.end method

.method public whitelist build()Landroid/net/Uri;
    .registers 6

    .line 2081
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2082
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-wide v1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mContactId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2083
    const-string/jumbo v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2084
    iget v1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    if-eqz v1, :cond_25

    .line 2085
    iget v1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "limit"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2088
    :cond_25
    iget-object v1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2089
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_53

    .line 2090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    .line 2091
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2090
    const-string/jumbo v4, "query"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2089
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 2094
    .end local v2    # "i":I
    :cond_53
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public whitelist setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .registers 3
    .param p1, "contactId"    # J

    .line 2050
    iput-wide p1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mContactId:J

    .line 2051
    return-object p0
.end method

.method public whitelist setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .registers 2
    .param p1, "limit"    # I

    .line 2072
    iput p1, p0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->mLimit:I

    .line 2073
    return-object p0
.end method

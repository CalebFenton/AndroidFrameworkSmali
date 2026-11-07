.class Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity$ActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/LauncherActivity$ActivityAdapter;


# direct methods
.method private constructor blacklist <init>(Landroid/app/LauncherActivity$ActivityAdapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;)V

    return-void
.end method


# virtual methods
.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 14
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 191
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 193
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v1}, Landroid/app/LauncherActivity$ActivityAdapter;->-$$Nest$fgetmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_27

    .line 194
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v1}, Landroid/app/LauncherActivity$ActivityAdapter;->-$$Nest$fgetlock(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_14
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v4, v4, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/app/LauncherActivity$ActivityAdapter;->-$$Nest$fputmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)V

    .line 196
    monitor-exit v1

    goto :goto_27

    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    throw v2

    .line 199
    :cond_27
    :goto_27
    if-eqz p1, :cond_7f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_30

    goto :goto_7f

    .line 206
    :cond_30
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "prefixString":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v2}, Landroid/app/LauncherActivity$ActivityAdapter;->-$$Nest$fgetmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 209
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 211
    .local v3, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v4, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_48
    if-ge v5, v3, :cond_76

    .line 214
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/LauncherActivity$ListItem;

    .line 216
    .local v6, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v7, v6, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "words":[Ljava/lang/String;
    array-length v8, v7

    .line 219
    .local v8, "wordCount":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_62
    if-ge v9, v8, :cond_73

    .line 220
    aget-object v10, v7, v9

    .line 222
    .local v10, "word":Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 223
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    goto :goto_73

    .line 219
    .end local v10    # "word":Ljava/lang/String;
    :cond_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_62

    .line 213
    .end local v6    # "item":Landroid/app/LauncherActivity$ListItem;
    .end local v7    # "words":[Ljava/lang/String;
    .end local v8    # "wordCount":I
    .end local v9    # "k":I
    :cond_73
    :goto_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 229
    .end local v5    # "i":I
    :cond_76
    iput-object v4, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 230
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_9a

    .line 200
    .end local v1    # "prefixString":Ljava/lang/String;
    .end local v2    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    .end local v3    # "count":I
    .end local v4    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    :cond_7f
    :goto_7f
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v1}, Landroid/app/LauncherActivity$ActivityAdapter;->-$$Nest$fgetlock(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 201
    :try_start_86
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-static {v3}, Landroid/app/LauncherActivity$ActivityAdapter;->-$$Nest$fgetmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 203
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 204
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    monitor-exit v1

    .line 233
    :goto_9a
    return-object v0

    .line 204
    :catchall_9b
    move-exception v2

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_9b

    throw v2
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 239
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 240
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_12

    .line 241
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetChanged()V

    goto :goto_17

    .line 243
    :cond_12
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;->this$1:Landroid/app/LauncherActivity$ActivityAdapter;

    invoke-virtual {v0}, Landroid/app/LauncherActivity$ActivityAdapter;->notifyDataSetInvalidated()V

    .line 245
    :goto_17
    return-void
.end method

.class public Landroid/widget/ArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ArrayAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/ThemedSpinnerAdapter;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mDropDownResource:I

.field private greylist-max-o mFieldId:I

.field private greylist-max-o mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private final greylist mLock:Ljava/lang/Object;

.field private greylist-max-o mNotifyOnChange:Z

.field private greylist mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mObjectsFromResources:Z

.field private greylist mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObjects(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalValues(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObjects(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalValues(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .line 139
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 140
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .line 152
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 153
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;IILjava/util/List;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "resource":I
    .end local p3    # "textViewResourceId":I
    .end local p4    # "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v1, "context":Landroid/content/Context;
    .local v2, "resource":I
    .local v3, "textViewResourceId":I
    .local v4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    .line 208
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;IILjava/util/List;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p5, "objsFromResources"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 211
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 212
    iput-object p1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 214
    iput p2, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    iput p2, p0, Landroid/widget/ArrayAdapter;->mResource:I

    .line 215
    iput-object p4, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    .line 216
    iput-boolean p5, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 217
    iput p3, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    .line 218
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 181
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 194
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p3, "objects":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 166
    return-void
.end method

.method public static whitelist createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textArrayResId"    # I
    .param p2, "textViewResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 518
    .local v0, "strings":[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p2

    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "textViewResId":I
    .local v2, "context":Landroid/content/Context;
    .local v3, "textViewResId":I
    invoke-direct/range {v1 .. v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    return-object v1
.end method

.method private greylist-max-o createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "resource"    # I

    .line 424
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    if-nez p3, :cond_8

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p1, p5, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_9

    .line 427
    .end local v0    # "view":Landroid/view/View;
    :cond_8
    move-object v0, p3

    .line 431
    .restart local v0    # "view":Landroid/view/View;
    :goto_9
    :try_start_9
    iget v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    if-nez v1, :cond_11

    .line 433
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .local v1, "text":Landroid/widget/TextView;
    goto :goto_1b

    .line 436
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_11
    iget v1, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_19} :catch_5e

    .line 438
    .restart local v1    # "text":Landroid/widget/TextView;
    if-eqz v1, :cond_33

    .line 448
    :goto_1b
    nop

    .line 450
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 451
    .local v2, "item":Ljava/lang/Object;, "TT;"
    instance-of v3, v2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2b

    .line 452
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32

    .line 454
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_32
    return-object v0

    .line 439
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_33
    :try_start_33
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find view with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    .line 440
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/widget/ArrayAdapter;->mFieldId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in item layout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "view":Landroid/view/View;
    .end local p0    # "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .end local p1    # "inflater":Landroid/view/LayoutInflater;
    .end local p2    # "position":I
    .end local p3    # "convertView":Landroid/view/View;
    .end local p4    # "parent":Landroid/view/ViewGroup;
    .end local p5    # "resource":I
    throw v2
    :try_end_5e
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_5e} :catch_5e

    .line 444
    .end local v1    # "text":Landroid/widget/TextView;
    .restart local v0    # "view":Landroid/view/View;
    .restart local p0    # "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .restart local p1    # "inflater":Landroid/view/LayoutInflater;
    .restart local p2    # "position":I
    .restart local p3    # "convertView":Landroid/view/View;
    .restart local p4    # "parent":Landroid/view/ViewGroup;
    .restart local p5    # "resource":I
    :catch_5e
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "ArrayAdapter"

    const-string v3, "You must supply a resource ID for a TextView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public whitelist add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 229
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 231
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 234
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 235
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 236
    :cond_1d
    return-void

    .line 234
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist addAll(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 255
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 257
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 260
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 261
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 262
    :cond_1d
    return-void

    .line 260
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public varargs whitelist addAll([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 273
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_12

    .line 275
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 277
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 278
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 279
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 280
    :cond_1d
    return-void

    .line 278
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist clear()V
    .registers 3

    .line 325
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 327
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_12

    .line 329
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 331
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 332
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 333
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 334
    :cond_1d
    return-void

    .line 332
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .registers 5

    .line 539
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 540
    .local v0, "explicitOptions":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_7

    .line 541
    return-object v0

    .line 545
    :cond_7
    iget-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_26

    .line 548
    :cond_18
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 549
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 550
    .local v2, "options":[Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 551
    return-object v2

    .line 546
    .end local v1    # "size":I
    .end local v2    # "options":[Ljava/lang/CharSequence;
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 384
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 389
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 501
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_9
    move-object v2, v0

    .line 502
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v6, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "position":I
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .local v3, "position":I
    .local v4, "convertView":Landroid/view/View;
    .local v5, "parent":Landroid/view/ViewGroup;
    invoke-direct/range {v1 .. v6}, Landroid/widget/ArrayAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 495
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_10

    :cond_6
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 3

    .line 523
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    if-nez v0, :cond_c

    .line 524
    new-instance v0, Landroid/widget/ArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter-IA;)V

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    .line 526
    :cond_c
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mFilter:Landroid/widget/ArrayAdapter$ArrayFilter;

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 394
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 410
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getPosition(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 405
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 416
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/widget/ArrayAdapter;->mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "position":I
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .local v2, "position":I
    .local v3, "convertView":Landroid/view/View;
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-direct/range {v0 .. v5}, Landroid/widget/ArrayAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(Ljava/lang/Object;I)V
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 290
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 292
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_12

    .line 294
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 297
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 298
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 299
    :cond_1d
    return-void

    .line 297
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist notifyDataSetChanged()V
    .registers 2

    .line 355
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 357
    return-void
.end method

.method public whitelist remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 308
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 310
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 312
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ArrayAdapter;->mObjectsFromResources:Z

    .line 315
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1e

    .line 316
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 317
    :cond_1d
    return-void

    .line 315
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist setDropDownViewResource(I)V
    .registers 2
    .param p1, "resource"    # I

    .line 467
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iput p1, p0, Landroid/widget/ArrayAdapter;->mDropDownResource:I

    .line 468
    return-void
.end method

.method public whitelist setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 483
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    if-nez p1, :cond_6

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_24

    .line 485
    :cond_6
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 486
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_24

    .line 488
    :cond_17
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 489
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ArrayAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 491
    .end local v0    # "context":Landroid/content/Context;
    :goto_24
    return-void
.end method

.method public whitelist setNotifyOnChange(Z)V
    .registers 2
    .param p1, "notifyOnChange"    # Z

    .line 374
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    iput-boolean p1, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    .line 375
    return-void
.end method

.method public whitelist sort(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 343
    .local p0, "this":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v0, p0, Landroid/widget/ArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 345
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_12

    .line 347
    :cond_d
    iget-object v1, p0, Landroid/widget/ArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1b

    .line 350
    iget-boolean v0, p0, Landroid/widget/ArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 351
    :cond_1a
    return-void

    .line 349
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

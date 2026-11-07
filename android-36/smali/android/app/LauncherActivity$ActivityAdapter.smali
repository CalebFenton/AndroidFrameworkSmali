.class Landroid/app/LauncherActivity$ActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;
    }
.end annotation


# instance fields
.field private final greylist-max-o lock:Ljava/lang/Object;

.field protected greylist-max-o mActivitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFilter:Landroid/widget/Filter;

.field protected final greylist-max-o mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field protected final greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mShowIcons:Z

.field final synthetic blacklist this$0:Landroid/app/LauncherActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlock(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalValues(Landroid/app/LauncherActivity$ActivityAdapter;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V
    .registers 4
    .param p2, "resizer"    # Landroid/app/LauncherActivity$IconResizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->lock:Ljava/lang/Object;

    .line 113
    iput-object p2, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    .line 114
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->onEvaluateShowIcons()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mShowIcons:Z

    .line 117
    invoke-virtual {p1}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    .line 118
    return-void
.end method

.method private greylist-max-o bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Landroid/app/LauncherActivity$ListItem;

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-boolean v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mShowIcons:Z

    if-eqz v1, :cond_2a

    .line 170
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_24

    .line 171
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    iget-object v2, p2, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    invoke-virtual {v3}, Landroid/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/LauncherActivity$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_24
    iget-object v1, p2, Landroid/app/LauncherActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_2a
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 3

    .line 178
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_c

    .line 179
    new-instance v0, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/LauncherActivity$ActivityAdapter$ArrayFilter;-><init>(Landroid/app/LauncherActivity$ActivityAdapter;Landroid/app/LauncherActivity-IA;)V

    iput-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    .line 181
    :cond_c
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 156
    if-nez p2, :cond_d

    .line 157
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_e

    .line 160
    .end local v0    # "view":Landroid/view/View;
    :cond_d
    move-object v0, p2

    .line 162
    .restart local v0    # "view":Landroid/view/View;
    :goto_e
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    invoke-direct {p0, v0, v1}, Landroid/app/LauncherActivity$ActivityAdapter;->bindView(Landroid/view/View;Landroid/app/LauncherActivity$ListItem;)V

    .line 163
    return-object v0
.end method

.method public greylist-max-o intentForPosition(I)Landroid/content/Intent;
    .registers 6
    .param p1, "position"    # I

    .line 121
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->this$0:Landroid/app/LauncherActivity;

    iget-object v1, v1, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LauncherActivity$ListItem;

    .line 127
    .local v1, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_27

    .line 129
    iget-object v2, v1, Landroid/app/LauncherActivity$ListItem;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    :cond_27
    return-object v0
.end method

.method public greylist-max-o itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .registers 3
    .param p1, "position"    # I

    .line 135
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_6
    iget-object v0, p0, Landroid/app/LauncherActivity$ActivityAdapter;->mActivitiesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LauncherActivity$ListItem;

    return-object v0
.end method
